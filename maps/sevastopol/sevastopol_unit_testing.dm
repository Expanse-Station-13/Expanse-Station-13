/datum/map/sevastopol
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/engineering/locker = NO_SCRUBBER|NO_VENT,
		/area/maintenance = NO_SCRUBBER|NO_VENT,
		/area/maintenance/disposal = 0,
		/area/maintenance/eighth = 0,
		/area/maintenance/exterior = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/maintenance/fourth = 0,
		/area/mine/explored = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/mine/unexplored = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ninja_dojo = NO_SCRUBBER |NO_VENT | NO_APC,
		/area/outpost/abandoned = NO_SCRUBBER,
		/area/rescue_base = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/shuttle = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/shuttle/merchant = NO_SCRUBBER|NO_APC,
		/area/skipjack_station = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/storage = NO_SCRUBBER|NO_VENT,
		/area/storage/tech = 0,
		/area/supply = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/syndicate_station = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turbolift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet          = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/desert   = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/grass    = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/snow     = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/garbage  = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/expedition = NO_SCRUBBER,
		/area/smugglers/base = NO_SCRUBBER,
		/area/smugglers/dorms = NO_SCRUBBER|NO_VENT,
		/area/smugglers/office = NO_SCRUBBER|NO_VENT,
		/area/bluespaceriver/underground = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/bluespaceriver/ground = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/casino/casino_cutter = NO_SCRUBBER|NO_VENT,
		/area/mobius_rift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/icarus/vessel = NO_APC,
		/area/icarus/open = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/map_template/hydrobase = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/map_template/hydrobase/station = NO_SCRUBBER,
		/area/map_template/marooned = NO_SCRUBBER|NO_VENT|NO_APC
	)

	area_coherency_test_exempt_areas = list(
		/area/space,
		/area/mine/explored,
		/area/mine/unexplored,
		/area/centcom/control,
		/area/maintenance/exterior,
		/area/exoplanet,
		/area/exoplanet/desert,
		/area/exoplanet/grass,
		/area/exoplanet/snow,
		/area/exoplanet/garbage,
		/area/icarus/vessel,
		/area/icarus/open,
	)

	area_coherency_test_subarea_count = list()

	area_usage_test_exempted_areas = list(
		/area/AIsattele,
		/area/djstation,
		/area/outpost,
		/area/outpost/abandoned,
		/area/overmap,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape,
		/area/security/prison,
		/area/shuttle/syndicate_elite/station,
		/area/shuttle/escape/centcom,
		/area/turbolift,
		/area/template_noop,
		/area/chapel,
		/area/medical/virology,
		/area/medical/virologyaccess,
		/area/rnd,
		/area/rnd/xenobiology,
		/area/rnd/xenobiology/xenoflora,
		/area/rnd/xenobiology/xenoflora_storage
	)

	// not an away site? you probably want to be using area_usage_test_exempted_areas
	area_usage_test_exempted_root_areas = list(
		/area/casino,
		/area/constructionsite,
		/area/derelict,
		/area/lost_supply_base,
		/area/magshield,
		/area/mine,
		/area/ship,
		/area/smugglers,
		/area/slavers_base,
		/area/yacht,
		/area/bluespaceriver,
		/area/mobius_rift,
		/area/icarus,
		/area/errant_pisces,
		/area/lar_maria,
		/area/map_template,
		/area/unishi,
		/area/exoplanet
	)

datum/unit_test/zas_area_test/supply_centcomm
	name = "ZAS: Supply Shuttle (CentComm)"
	area_path = /area/supply/dock

datum/unit_test/zas_supply_shuttle_moved/check_result()
	skip("Disabled for this map.")
	return 1