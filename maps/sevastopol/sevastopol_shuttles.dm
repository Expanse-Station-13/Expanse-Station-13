//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/sevastopod
	category = /datum/shuttle/autodock/ferry/escape_pod/sevastopod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	var/number

/datum/shuttle/autodock/ferry/escape_pod/sevastopod/New()
	name = "Escape Pod [number]"
	dock_target = "escape_pod_[number]"
	arming_controller = "escape_pod_[number]_berth"
	waypoint_station = "escape_pod_[number]_start"
	landmark_transition = "escape_pod_[number]_internim"
	waypoint_offsite = "escape_pod_[number]_out"
	..()

/obj/effect/shuttle_landmark/escape_pod/
	var/number

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"

/obj/effect/shuttle_landmark/escape_pod/start/New()
	landmark_tag = "escape_pod_[number]_start"
	docking_controller = "escape_pod_[number]_berth"
	..()

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/transit/New()
	landmark_tag = "escape_pod_[number]_internim"
	..()

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

/obj/effect/shuttle_landmark/escape_pod/out/New()
	landmark_tag = "escape_pod_[number]_out"
	..()

//Pods

/datum/shuttle/autodock/ferry/escape_pod/sevastopod/escape_pod1
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod/one
	number = 1
/obj/effect/shuttle_landmark/escape_pod/start/pod1
	number = 1
/obj/effect/shuttle_landmark/escape_pod/out/pod1
	number = 1
/obj/effect/shuttle_landmark/escape_pod/transit/pod1
	number = 1

/datum/shuttle/autodock/ferry/escape_pod/sevastopod/escape_pod2
	shuttle_area = /area/shuttle/escape_pod/two
	number = 2
/obj/effect/shuttle_landmark/escape_pod/start/pod2
	number = 2
/obj/effect/shuttle_landmark/escape_pod/out/pod2
	number = 2
/obj/effect/shuttle_landmark/escape_pod/transit/pod2
	number = 2

/datum/shuttle/autodock/ferry/escape_pod/sevastopod/escape_pod3
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod/three
	number = 3
/obj/effect/shuttle_landmark/escape_pod/start/pod3
	number = 3
/obj/effect/shuttle_landmark/escape_pod/out/pod3
	number = 3
/obj/effect/shuttle_landmark/escape_pod/transit/pod3
	number = 3

//POD ONE
/datum/shuttle/autodock/overmap/one
	name = "Pod 1"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/expedition/one
	dock_target = "pod1s"
	current_location = "nav_hangar_one"
	landmark_transition = "nav_transit_one"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_one"
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/sevastopol/hangar/one
	name = "Pod 1 Dock"
	landmark_tag = "nav_hangar_one"
	docking_controller = "pod1_airlock"

/obj/effect/shuttle_landmark/transit/sevastopol/one
	name = "In transit"
	landmark_tag = "nav_transit_one"

//POD TWO
/datum/shuttle/autodock/overmap/two
	name = "Pod 2"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/expedition/two
	dock_target = "pod2s"
	current_location = "nav_hangar_two"
	landmark_transition = "nav_transit_two"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_two"
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/sevastopol/hangar/two
	name = "Pod 2 Dock"
	landmark_tag = "nav_hangar_two"
	docking_controller = "pod2_airlock"

/obj/effect/shuttle_landmark/sevastopol/deck1
	name = "Space fore of Deck 10"
	landmark_tag = "nav_deck1"

/obj/effect/shuttle_landmark/sevastopol/deck2
	name = "Space aft of Deck 9"
	landmark_tag = "nav_deck2"

/obj/effect/shuttle_landmark/sevastopol/deck3
	name = "Space port of Deck 8"
	landmark_tag = "nav_deck3"

/obj/effect/shuttle_landmark/sevastopol/deck4
	name = "Space fore of Deck 7"
	landmark_tag = "nav_deck4"

/obj/effect/shuttle_landmark/sevastopol/deck5
	name = "Space starboard of Deck 6"
	landmark_tag = "nav_deck5"

/obj/effect/shuttle_landmark/sevastopol/deck6
	name = "Space starboard of Deck 5"
	landmark_tag = "nav_deck6"

/obj/effect/shuttle_landmark/sevastopol/deck7
	name = "Space port of Deck 4"
	landmark_tag = "nav_deck7"

/obj/effect/shuttle_landmark/sevastopol/deck8
	name = "Space starboard of Deck 3"
	landmark_tag = "nav_deck8"

/obj/effect/shuttle_landmark/sevastopol/deck9
	name = "Space aft of Deck 2"
	landmark_tag = "nav_deck9"

/obj/effect/shuttle_landmark/sevastopol/deck10
	name = "Space starboard of Deck 1"
	landmark_tag = "nav_deck10"

/*/obj/effect/shuttle_landmark/sevastopol/deck1/two
	name = "Space near Deck 10"
	landmark_tag = "nav_deck1_two"

/obj/effect/shuttle_landmark/sevastopol/deck2/two
	name = "Space near Deck 9"
	landmark_tag = "nav_deck2_two"

/obj/effect/shuttle_landmark/sevastopol/deck3/two
	name = "Space near Deck 8"
	landmark_tag = "nav_deck3_two"

/obj/effect/shuttle_landmark/sevastopol/deck4/two
	name = "Space near Deck 7"
	landmark_tag = "nav_deck4_two"

/obj/effect/shuttle_landmark/sevastopol/deck5/two
	name = "Space near Deck 6"
	landmark_tag = "nav_deck5_two"

/obj/effect/shuttle_landmark/sevastopol/deck6/two
	name = "Space near Deck 5"
	landmark_tag = "nav_deck6_two"

/obj/effect/shuttle_landmark/sevastopol/deck7/two
	name = "Space near Deck 4"
	landmark_tag = "nav_deck7_two"

/obj/effect/shuttle_landmark/sevastopol/deck8/two
	name = "Space near Deck 3"
	landmark_tag = "nav_deck8_two"

/obj/effect/shuttle_landmark/sevastopol/deck9/two
	name = "Space near Deck 2"
	landmark_tag = "nav_deck9_two"

/obj/effect/shuttle_landmark/sevastopol/deck10/two
	name = "Space near Deck 1"
	landmark_tag = "nav_deck10_two"*/

/obj/effect/shuttle_landmark/transit/sevastopol/two
	name = "In transit"
	landmark_tag = "nav_transit_two"

/obj/machinery/computer/shuttle_control/explore/one
	name = "pod one control console"
	shuttle_tag = "Pod 1"

/obj/machinery/computer/shuttle_control/explore/two
	name = "pod two control console"
	shuttle_tag = "Pod 2"

//Ninja Shuttle.
/datum/shuttle/autodock/multi/antag/ninja
	name = "Ninja"
	warmup_time = 0
	destination_tags = list(
		"nav_ninja_deck1",
		"nav_ninja_deck2",
		"nav_ninja_deck3",
		"nav_ninja_deck4",
		"nav_ninja_deck5",
		"nav_away_6",
		"nav_derelict_5",
		"nav_cluster_6",
		"nav_ninja_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)
	shuttle_area = /area/ninja_dojo/start
	current_location = "nav_ninja_start"
	landmark_transition = "nav_ninja_transition"
	announcer = "Sevastopol Sensor Array"
	arrival_message = "Attention, anomalous sensor reading detected entering vessel proximity."
	departure_message = "Attention, anomalous sensor reading detected leaving vessel proximity."


/obj/effect/shuttle_landmark/ninja/start
	name = "Clan Dojo"
	landmark_tag = "nav_ninja_start"

/obj/effect/shuttle_landmark/ninja/internim
	name = "In transit"
	landmark_tag = "nav_ninja_transition"

/obj/effect/shuttle_landmark/ninja/deck1
	name = "South of First Deck"
	landmark_tag = "nav_ninja_deck1"

/obj/effect/shuttle_landmark/ninja/deck2
	name = "Northeast of Second Deck"
	landmark_tag = "nav_ninja_deck2"

/obj/effect/shuttle_landmark/ninja/deck3
	name = "East of Third Deck"
	landmark_tag = "nav_ninja_deck3"

/obj/effect/shuttle_landmark/ninja/deck4
	name = "West of Fourth Deck"
	landmark_tag = "nav_ninja_deck4"

/obj/effect/shuttle_landmark/ninja/deck5
	name = "Southeast of Bridge"
	landmark_tag = "nav_ninja_deck5"

//Merchant

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock_airlock"

//Transport

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/transport1/centcom
	dock_target = "centcom_shuttle"
	waypoint_offsite = "nav_ferry_start"
	waypoint_station = "nav_ferry_out"

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/ferry/out
	name = "Docking Bay"
	landmark_tag = "nav_ferry_out"
	docking_controller = "centcom_shuttle_dock_airlock"

//Merc

/datum/shuttle/autodock/multi/antag/mercenary
	name = "Mercenary"
	warmup_time = 0
	destination_tags = list(
		"nav_deck1",
		"nav_deck2",
		"nav_deck3",
		"nav_deck4",
		"nav_deck5",
		"nav_deck6",
		"nav_deck7",
		"nav_deck8",
		"nav_deck9",
		"nav_deck10",
		"nav_away_5",
		"nav_derelict_6",
		"nav_cluster_5",
		"nav_merc_dock",
		"nav_merc_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)
	shuttle_area = /area/syndicate_station/start
	dock_target = "merc_shuttle"
	current_location = "nav_merc_start"
	landmark_transition = "nav_merc_transition"
	announcer = "Sevastopol Sensor Array"
	home_waypoint = "nav_merc_start"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/merc/start
	name = "Mercenary Base"
	landmark_tag = "nav_merc_start"
	docking_controller = "merc_base"

/obj/effect/shuttle_landmark/merc/internim
	name = "In transit"
	landmark_tag = "nav_merc_transition"

/obj/effect/shuttle_landmark/merc/dock
	name = "Docking Port"
	landmark_tag = "nav_merc_dock"
	docking_controller = "nuke_shuttle_dock_airlock"

/*/obj/effect/shuttle_landmark/merc/deck1
	name = "Northeast of First Deck"
	landmark_tag = "nav_merc_deck1"

/obj/effect/shuttle_landmark/merc/deck2
	name = "Southeast of the Second deck"
	landmark_tag = "nav_merc_deck2"

/obj/effect/shuttle_landmark/merc/deck3
	name = "South of Third deck"
	landmark_tag = "nav_merc_deck3"

/obj/effect/shuttle_landmark/merc/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_merc_deck4"

/obj/effect/shuttle_landmark/merc/deck5
	name = "East of Bridge"
	landmark_tag = "nav_merc_deck5"*/

//Skipjack

/datum/shuttle/autodock/multi/antag/skipjack
	name = "Skipjack"
	warmup_time = 0
	destination_tags = list(
		"nav_deck1",
		"nav_deck2",
		"nav_deck3",
		"nav_deck4",
		"nav_deck5",
		"nav_deck6",
		"nav_deck7",
		"nav_deck8",
		"nav_deck9",
		"nav_deck10",
		"nav_away_7",
		"nav_derelict_7",
		"nav_cluster_7",
		"nav_skipjack_dock",
		"nav_skipjack_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)
	shuttle_area =  /area/skipjack_station/start
	dock_target = "skipjack_shuttle"
	current_location = "nav_skipjack_start"
	landmark_transition = "nav_skipjack_transition"
	announcer = "Sevastopol Sensor Array"
	home_waypoint = "nav_skipjack_start"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/skipjack/start
	name = "Raider Outpost"
	landmark_tag = "nav_skipjack_start"
	docking_controller = "skipjack_base"

/obj/effect/shuttle_landmark/skipjack/internim
	name = "In transit"
	landmark_tag = "nav_skipjack_transition"

/obj/effect/shuttle_landmark/skipjack/dock
	name = "Docking Port"
	landmark_tag = "nav_skipjack_dock"
	docking_controller = "skipjack_shuttle_dock_airlock"

/*/obj/effect/shuttle_landmark/skipjack/deck1
	name = "Northwest of First Deck"
	landmark_tag = "nav_skipjack_deck1"

/obj/effect/shuttle_landmark/skipjack/deck2
	name = "Southwest of the Second deck"
	landmark_tag = "nav_skipjack_deck2"

/obj/effect/shuttle_landmark/skipjack/deck3
	name = "Southeast of Third deck"
	landmark_tag = "nav_skipjack_deck3"

/obj/effect/shuttle_landmark/skipjack/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_skipjack_deck4"

/obj/effect/shuttle_landmark/skipjack/deck5
	name = "South of Bridge"
	landmark_tag = "nav_skipjack_deck5"*/

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	name = "Rescue"
	warmup_time = 0
	destination_tags = list(
		"nav_deck1",
		"nav_deck2",
		"nav_deck3",
		"nav_deck4",
		"nav_deck5",
		"nav_deck6",
		"nav_deck7",
		"nav_deck8",
		"nav_deck9",
		"nav_deck10",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)
	shuttle_area = /area/rescue_base/start
	dock_target = "rescue_shuttle"
	current_location = "nav_ert_start"
	landmark_transition = "nav_ert_transition"
	home_waypoint = "nav_ert_start"
	announcer = "Sevastopol Sensor Array"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/ert/start
	name = "Response Team Base"
	landmark_tag = "nav_ert_start"
	docking_controller = "rescue_base"

/obj/effect/shuttle_landmark/ert/internim
	name = "In transit"
	landmark_tag = "nav_ert_transition"

/obj/effect/shuttle_landmark/ert/dock
	name = "Docking Port"
	landmark_tag = "nav_ert_dock"
	docking_controller = "rescue_shuttle_dock_airlock"

/*/obj/effect/shuttle_landmark/ert/deck1
	name =  "Southwest of Fourth deck"
	landmark_tag = "nav_ert_deck1"

/obj/effect/shuttle_landmark/ert/deck2
	name = "Northwest of Third deck"
	landmark_tag = "nav_ert_deck2"

/obj/effect/shuttle_landmark/ert/deck3
	name = "Northwest of Second deck"
	landmark_tag = "nav_ert_deck3"

/obj/effect/shuttle_landmark/ert/deck4
	name = "Southwest of First Deck"
	landmark_tag = "nav_ert_deck4"

/obj/effect/shuttle_landmark/ert/deck5
	name = "West of Bridge"
	landmark_tag = "nav_ert_deck5"*/

//SCGMC Assault Pod

/datum/shuttle/autodock/ferry/specops/ert
	name = "Special Operations"
	warmup_time = 10
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_start"
	waypoint_offsite = "nav_specops_out"

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "specops_dock_airlock"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"