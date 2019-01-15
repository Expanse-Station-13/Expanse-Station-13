/datum/universal_state/high_g
	name = "High G maneuver"
	var/list/people = list()
	var/list/affected_levels
	var/list/old_accessible_z_levels

/datum/universal_state/high_g/New(var/list/zlevels)
	affected_levels = zlevels

/datum/universal_state/high_g/OnEnter()
	var/space_zlevel = GLOB.using_map.get_empty_zlevel() //get a place for stragglers
	for(var/mob/living/M in SSmobs.mob_list)
		if(M.z in affected_levels)
			var/area/A = get_area(M)
			if(istype(A,/area/space)) //straggler
				var/turf/T = locate(M.x, M.y, space_zlevel)
				if(T)
					M.forceMove(T)
			else
				enter_g(M)
	old_accessible_z_levels = GLOB.using_map.accessible_z_levels.Copy()
	for(var/z in affected_levels)
		GLOB.using_map.accessible_z_levels -= "[z]"

	START_PROCESSING(SSprocessing, src)

/datum/universal_state/high_g/OnExit()
	for(var/M in people)
		leave_g(M)

	people.Cut()
	GLOB.using_map.accessible_z_levels = old_accessible_z_levels
	old_accessible_z_levels = null

	STOP_PROCESSING(SSprocessing, src)

/datum/universal_state/high_g/OnPlayerLatejoin(var/mob/living/M)
	if(M.z in affected_levels)
		enter_g(M)

/datum/universal_state/high_g/proc/enter_g(var/mob/living/M)
	people += M
	if(M.client)
		to_chat(M,"<span class='alert'><b>You feel a weight grow on your shoulders.</b></span>")

/datum/universal_state/high_g/proc/leave_g(var/mob/living/M)
	people -= M
	if(M.client)
		to_chat(M,"<span class='notice'>You feel weightless again.</span>")

/datum/universal_state/high_g/Process()
	for(var/mob/living/current in people)
		if(!istype(current) || istype(current.buckled, /obj/structure/bed/chair/crash))
			continue
		if(prob(30))
			current.apply_damage(rand(1,10), used_weapon = "pressure")


/obj/structure/bed/chair/crash
	name = "crash couch"
	icon_state = "crashcouch_preview"
	base_icon = "crashcouch"
	desc = "Used by smart people to survive High G maneuvers. Less smart become puddles somewhere else."