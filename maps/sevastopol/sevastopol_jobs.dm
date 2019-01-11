#define MIRROR_ACCESS(accesses) access = accesses; minimal_access = accesses

/datum/map/sevastopol
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/sea,
		/datum/job/officer,
		/datum/job/officer/trainee,
		/datum/job/senior_doctor,
		/datum/job/doctor,
		/datum/job/scientist,
		/datum/job/hospital_corpsman,
		/datum/job/senior_engineer,
		/datum/job/engineer,
		/datum/job/assistant
	)

/datum/job/captain
	title = "Commanding Officer"
	supervisors = "the United Nations Navy Jupiter Fleet Command"
	minimal_player_age = 7
	economic_power = 15
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/unn/officer/co
	allowed_branches = list(
		/datum/mil_branch/navy
	)
	allowed_ranks = list(
		/datum/mil_rank/navy/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "You are an experienced professional officer in control of an entire ship, and are fully responsible for it. The buck stops with you. Your job is to make sure [GLOB.using_map.full_name] executes its research and expeditionary functions. Delegate to your Executive Officer, your department heads, and your Senior Enlisted Adviser to effectively manage the ship, and listen to and trust their expertise."


/datum/job/hop
	title = "Executive Officer"
	supervisors = "the Commanding Officer and the United Nations Marine Corps"
	department = "Command"
	department_flag = COM
	minimal_player_age = 7
	economic_power = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/unn/officer/xo
	allowed_branches = list(
		/datum/mil_branch/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/marine/o4
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	MIRROR_ACCESS(list(access_security, access_brig, access_armory, access_medical, access_engine, access_engine_equip,
		access_maint_tunnels, access_external_airlocks, access_change_ids, access_eva, access_bridge, access_tech_storage,
		access_cargo, access_surgery, access_research, access_keycard_auth, access_tcomsat))

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hop/get_description_blurb()
	return "Through the Marine detail aboard the ship, you support the [GLOB.using_map.full_name]'s research mission."


/datum/job/sea
	title = "Senior Enlisted Adviser"
	department = "Support"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 7
	economic_power = 8
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/unn/sea
	allowed_branches = list(
		/datum/mil_branch/marine
	)
	allowed_ranks = list(
		/datum/mil_rank/marine/e7,
		/datum/mil_rank/marine/e8,
		/datum/mil_rank/marine/e9
	)
	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)
	skill_points = 24


	MIRROR_ACCESS(list(access_security, access_brig, access_armory, access_maint_tunnels, access_external_airlocks, access_eva,
		access_bridge, access_cargo, access_keycard_auth))

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "You are the Senior Enlisted Adviser, the top enlisted Marine Corps figure aboard ship. Keep your Marines from drawing too many dicks in the head."


/datum/job/officer
	title = "Military Police Officer"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer and the Senior Enlisted Adviser"
	economic_power = 4
	minimal_player_age = 7
	ideal_character_age = 25
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/unn/security
	allowed_branches = list(
		/datum/mil_branch/marine,
	)
	allowed_ranks = list(
		/datum/mil_rank/marine/e4,
		/datum/mil_rank/marine/e5,
		/datum/mil_rank/marine/e6,
		/datum/mil_rank/marine/e7
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	MIRROR_ACCESS(list(access_security, access_brig, access_armory, access_maint_tunnels, access_external_airlocks, access_eva,
		access_bridge))

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/officer/get_description_blurb()
	return "Your job is to ensure security and good order aboard ship, and to be detailed to away missions or EVA at the discretion of your supervisors."

/datum/job/officer/trainee
	title = "Military Police Officer Trainee"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Senior Enlisted Adviser and Military Police Officers"
	economic_power = 3
	minimal_player_age = 2
	ideal_character_age = 25
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/unn/security/trainee
	allowed_branches = list(
		/datum/mil_branch/marine,
	)
	allowed_ranks = list(
		/datum/mil_rank/marine/e2,
		/datum/mil_rank/marine/e3
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	MIRROR_ACCESS(list(access_security, access_brig, access_maint_tunnels))

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/officer_t/get_description_blurb()
	return "Your job is to learn how to be a Military Police Officer, under the mentorship of your supervisors."


/datum/job/senior_doctor
	title = "Senior Medical Officer"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 2
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	supervisors = "Sevastopol Command and the United Nations Health Corps"
	selection_color = "#013d3b"
	economic_power = 8
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/unn/officer/medical/senior
	allowed_branches = list(
		/datum/mil_branch/navy
	)
	allowed_ranks = list(
		/datum/mil_rank/navy/o3
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_ADEPT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_VIROLOGY    = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)
	skill_points = 32

	MIRROR_ACCESS(list(access_medical, access_maint_tunnels, access_external_airlocks, access_eva, access_bridge, access_surgery, access_research))

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/senior_doctor/get_description_blurb()
	return "By maintaining medical readiness aboard the ship, you support the [GLOB.using_map.full_name]'s research mission."

/datum/job/doctor
	title = "Ship Doctor"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Senior Medical Officer and the United Nations Health Corps"
	economic_power = 7
	ideal_character_age = 40
	minimal_player_age = 0
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/unn/officer/medical
	allowed_branches = list(
		/datum/mil_branch/navy
	)
	allowed_ranks = list(
		/datum/mil_rank/navy/o2
	)
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)

	MIRROR_ACCESS(list(access_medical, access_maint_tunnels, access_external_airlocks, access_eva, access_bridge, access_surgery))

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 26

/datum/job/doctor/get_description_blurb()
	return "You ensure the wellbeing of the marines aboard the [GLOB.using_map.full_name] in order to support the research mission."


/datum/job/scientist
	title = "Naval Researcher"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Senior Medical Officer and the United Nations Health Corps"
	economic_power = 7
	ideal_character_age = 45
	minimal_player_age = 0
	alt_titles = list(
		"Pharmacy Technician"
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/unn/officer/medical/scientist
	allowed_branches = list(
		/datum/mil_branch/navy
	)

	allowed_ranks = list(
		/datum/mil_rank/navy/o1
	)

	MIRROR_ACCESS(list(access_medical, access_maint_tunnels, access_external_airlocks, access_eva, access_bridge, access_surgery, access_research))

	skill_points = 20


/datum/job/hospital_corpsman
	title = "Hospital Corpsman"
	department = "Medical"
	department_flag = MED
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Senior Medical Officer, all Medical Officers, and the United Nations Health Corps"
	selection_color = "#013d3b"
	economic_power = 3
	ideal_character_age = 30
	alt_titles = list(
		"Assistant Physician"
	)
	outfit_type = /decl/hierarchy/outfit/job/unn/medical
	allowed_branches = list(
		/datum/mil_branch/navy
	)

	allowed_ranks = list(
		/datum/mil_rank/navy/e4,
		/datum/mil_rank/navy/e5,
		/datum/mil_rank/navy/e6,
		/datum/mil_rank/navy/e7
	)
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX,
	                    SKILL_VIROLOGY    = SKILL_MAX)
	skill_points = 32

	MIRROR_ACCESS(list(access_medical, access_maint_tunnels, access_external_airlocks, access_eva, access_bridge, access_surgery))

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)


/datum/job/senior_engineer
	title = "Senior Engineering Officer"
	department = "Engineering"
	department_flag = ENG
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	selection_color = "#5b4d20"
	economic_power = 6
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/unn/engineer/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/navy
	)
	allowed_ranks = list(
		/datum/mil_rank/navy/e8,
		/datum/mil_rank/navy/e7,
		/datum/mil_rank/navy/e6
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 24

	MIRROR_ACCESS(list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_eva,
		access_bridge, access_tech_storage, access_cargo, access_tcomsat))

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)


/datum/job/engineer
	title = "Engineering Officer"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Senior Engineering Officer and the Commanding Officer"
	economic_power = 5
	minimal_player_age = 0
	ideal_character_age = 30
	alt_titles = list(
		"Junior Engineer"
		)
	outfit_type = /decl/hierarchy/outfit/job/unn/engineer
	allowed_branches = list(
		/datum/mil_branch/navy
	)
	allowed_ranks = list(
		/datum/mil_rank/navy/e4,
		/datum/mil_rank/navy/e5,
		/datum/mil_rank/navy/e6
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20

	MIRROR_ACCESS(list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_eva,
		access_tech_storage, access_cargo, access_tcomsat))

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/assistant
	title = "Marine"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	selection_color = "#515151"
	economic_power = 6
	outfit_type = /decl/hierarchy/outfit/job/unn
	allowed_branches = list(
		/datum/mil_branch/marine
	)

	allowed_ranks = list(
		/datum/mil_rank/marine/e3,
		/datum/mil_rank/marine/e4
	)

#undef MIRROR_ACCESS