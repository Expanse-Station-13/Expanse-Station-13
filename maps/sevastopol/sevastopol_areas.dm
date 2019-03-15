/datum/map/sevastopol

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod1/centcom,
		/area/shuttle/escape_pod2/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod5/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

/area/hallway/primary/second
	name = "\improper Ninth Deck Hallway"
	icon_state = "hallC1"

/area/hallway/primary/third
	name = "\improper Eighth Deck Hallway"
	icon_state = "hallC1"

/area/hallway/primary/fourth
	name = "\improper Seventh Deck Hallway"
	icon_state = "hallC1"

/area/maintenance/fourth
	name = "\improper Seventh Deck Maintenance"
	icon_state = "maintcentral"

/area/maintenance/fifth
	name = "\improper Sixth Deck Maintenance"
	icon_state = "maintcentral"

/area/hallway/primary/sixth
	name = "\improper Fifth Deck Hallway"
	icon_state = "hallC1"

/area/hallway/primary/seventh
	name = "\improper Fourth Deck Hallway"
	icon_state = "hallC1"

/area/maintenance/seventh
	name = "\improper Fourth Deck Maintenance"
	icon_state = "maintcentral"

/area/hallway/primary/eighth
	name = "\improper Third Deck Hallway"
	icon_state = "hallC1"

/area/maintenance/eighth
	name = "\improper Third Deck Maintenance"
	icon_state = "maintcentral"

/area/hallway/primary/ninth
	name = "\improper Second Deck Hallway"
	icon_state = "hallC1"

/area/hallway/primary/stairs
	name = "\improper Stairs"
	icon_state = "hangar"


/area/bridge
	name = "\improper Bridge"
	icon_state = "bridge"

/area/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/maintenance/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space

/area/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"

/area/eva/standard
	name = "\improper Standard EVA Storage"
	icon_state = "mining"

/area/eva/command
	name = "\improper Command EVA Storage"
	icon_state = "eva"

// Engineering
/area/engineering/fuelbay
	name = "\improper Fuel Bay"
	icon_state = "engineering"

/area/engineering/engine_room
	name = "\improper Reactor"
	icon_state = "engine"

/area/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/engineering/locker
	name = "\improper Engineering Locker Room"
	icon_state = "maintcentral"

/area/engineering/hardstorage
	name = "\improper Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/office
	name = "\improper Engineering Office"
	icon_state = "engineering_foyer"

/area/storage/tech
	name = "Technical Storage"
	icon_state = "storage"

// Tcomm
/area/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')

/area/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

//Crew

/area/crew_quarters/sleep/cryo
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/crew_quarters/shower
	name = "\improper Shower"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/gym
	name = "\improper Gym"
	icon_state = "fitness"

//Mess

/area/crew_quarters/galley
	name = "\improper Galley"
	icon_state = "kitchen"

/area/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/crew_quarters/mess
	name = "\improper Mess Hall"
	icon_state = "cafeteria"

/area/crew_quarters/officersmess
	name = "\improper Officer's Mess Hall"
	icon_state = "bar"

// Cargo
/area/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "\improper Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

//Expedition

/area/expedition
	name = "\improper Pods"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/expedition/one
	name = "\improper Pod 1"
	icon_state = "shuttlered"

/area/expedition/two
	name = "\improper Pod 2"
	icon_state = "shuttlered"



// Medical
/area/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"

/area/medical/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/medical/research
	name = "\improper Research"
	icon_state = "research"


// Security
/area/security/equipment
	name = "\improper Security Equipment"
	icon_state = "security"

/area/security/processing
	name = "\improper Security Processing"
	icon_state = "security"

/area/security/armory
	name = "\improper Security Armory"
	icon_state = "Warden"

/area/security/office
	name = "\improper Security Office"
	icon_state = "checkpoint"

/area/security/brig //Already defined in Space Station 13 areas.dm, but we override the name for consistency
	name = "\improper Security Brig"


//Le pods
/area/shuttle/escape_pod
	name = "Escape Pod NONE"

	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod/one
	name = "Escape Pod One"

/area/shuttle/escape_pod/two
	name = "Escape Pod Two"

/area/shuttle/escape_pod/three
	name = "Escape Pod Three"

// CentCom

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"

/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

// Ninja areas
/area/ninja_dojo
	name = "\improper Ninja Base"
	icon_state = "green"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/ninja_dojo/dojo
	name = "\improper Clan Dojo"
	dynamic_lighting = 0

/area/ninja_dojo/start
	name = "\improper Clan Dojo"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating

//Merchant

/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"

//Merc

/area/syndicate_mothership
	name = "\improper Mercenary Base"
	icon_state = "syndie-ship"
	requires_power = 0
	dynamic_lighting = 0

/area/syndicate_station/start
	name = "\improper Mercenary Forward Operating Base"
	icon_state = "yellow"
	requires_power = 0
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

//Skipjack

/area/skipjack_station
	name = "Raider Outpost"
	icon_state = "yellow"
	requires_power = 0

//NT rescue shuttle

/area/rescue_base
	name = "\improper Response Team Base"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/rescue_base/base
	name = "\improper Barracks"
	icon_state = "yellow"
	dynamic_lighting = 0

/area/rescue_base/start
	name = "\improper Response Team Base"
	icon_state = "shuttlered"
	base_turf = /turf/unsimulated/floor/rescue_base

// Merchant

/area/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"

// Syndicate

/area/syndicate_mothership/raider_base
	name = "\improper Raider Base"

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

/area/alien
	name = "\improper Alien base"
	icon_state = "yellow"
	requires_power = 0

/area/shuttle/alien/base
	icon_state = "shuttle"
	name = "\improper Alien Shuttle Base"
	requires_power = 1

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0