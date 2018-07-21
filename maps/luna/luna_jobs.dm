	allowed_jobs = list(/datum/job/officer,
						/datum/job/doctor,
						/datum/job/psychiatrist,
						/datum/job/bartender,
						/datum/job/guard,
						/datum/job/stowaway)


/datum/job/guard
	title = "Security Guard"
	department = "Security"
	department_flag = SCI

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Research Director and NanoTrasen Personnel"
	selection_color = "#633d63"
	economic_modifier = 6
	minimal_player_age = 3
	ideal_character_age = 25
	min_skill = list(	SKILL_COMBAT  = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC)


/datum/job/doctor
	title = "Corpsman"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer"
	economic_modifier = 7
	ideal_character_age = 40

	min_skill = list(	SKILL_EVA     = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_BASIC,
						SKILL_ANATOMY = SKILL_BASIC)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 26

/datum/job/psychiatrist
	title = "Psychiatrist"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"

	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_MEDICAL     = SKILL_BASIC)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/bartender
	department = "Service"
	department_flag = SRV
	supervisors = "the Executive Officer"
	ideal_character_age = 30
	selection_color = "#515151"
	min_skill = list(	SKILL_COOKING   = SKILL_BASIC,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)

/datum/job/stowaway
	title = "Stowaway"
	department = "Civilian"
	department_flag = CIV

	total_positions = 1
	spawn_positions = 1
	availablity_chance = 20
	supervisors = "yourself"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 7
	create_record = 0
	account_allowed = 0
	latejoin_at_spawnpoints = 1
	announced = FALSE
