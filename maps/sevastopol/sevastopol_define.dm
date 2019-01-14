/datum/map/sevastopol
	name = "Sevastopol"
	full_name = "UNN Sevastopol"
	path = "sevastopol"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	admin_levels = list(11,12)
	empty_levels = list(13)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"7"=1,"8"=1,"9"=1,"10"=1)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("sevastopol.unn")

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "UNN Sevastopol"
	station_short = "Sevastopol"
	dock_name     = "TBD"
	boss_name     = "United Nations Navy Jupiter Fleet Command"
	boss_short    = "Jupiter Fleet Command"
	company_name  = "United Nations Navy"
	company_short = "UNN"

	map_admin_faxes = list("Jupiter Fleet Operations Office")

	shuttle_docked_message = "Attention all hands: High G maneuver preparations complete. Please head to a Crash Couch. Time left: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: High G maneuver in progress. Time left: approximately  %ETA%."
	shuttle_called_message = "Attention all hands: High G maneuver preparations starting. Transit procedures are now in effect. Time left: approximately %ETA%."
	shuttle_recall_message = "Attention all hands: High G maneuver aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/expanse

	use_overmap = 1
	num_exoplanets = 1
	planet_size = list(129,129)

	away_site_budget = 3
	id_hud_icons = 'maps/sevastopol/icons/assignment_hud.dmi'

/datum/map/sevastopol/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/sevastopol/map_info(victim)
	to_chat(victim, "<h2>Current map information</h2>")
	to_chat(victim, "You're aboard the <b>[station_name]</b>, a [company_name] vessel. The <b>[station_name]</b> is an obsolescent <i>Coral Sea</i> class frigate converted into a research vessel by the [company_short].")
	to_chat(victim, "The vessel is staffed by a mix of [company_short] and UNMC personnel.")
	to_chat(victim, "This area of space is lightly patrolled, and far from the inner planets. Major MCR/Belt trade routes run through the area, and aside from the various resource companies operating here, the [company_short], MCRN, and various pirate bands maintain presences here.")

/datum/map/sevastopol/send_welcome()
	var/welcome_text = "<center><img src = sollogo.png /><br /><font size = 3><b>[station_name]</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Current system:<br /><b>[system_name()]</b><br /><br>"
	welcome_text += "Next system targeted for jump:<br /><b>[generate_system_name()]</b><br /><br>"
	welcome_text += "Travel time to Sol:<br /><b>[rand(15,45)] days</b><br /><br>"
	welcome_text += "Time since last port visit:<br /><b>[rand(60,180)] days</b><br /><hr>"
	welcome_text += "Scan results show the following points of interest:<br />"
	var/list/space_things = list()
	var/obj/effect/overmap/sevastopol = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/O = map_sectors[zlevel]
		if(O.name == sevastopol.name)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/O in space_things)
		var/location_desc = " at present co-ordinates."
		if(O.loc != sevastopol.loc)
			var/bearing = round(90 - Atan2(O.x - sevastopol.x, O.y - sevastopol.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", bearing [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>No distress calls logged.<br />"
	welcome_text += "<hr>"

	post_comm_message("[station_name] Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")

/turf/simulated/wall //landlubbers go home
	name = "bulkhead"

/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"