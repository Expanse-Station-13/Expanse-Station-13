#if !defined(using_map_DATUM)
	#include "sevastopol_areas.dm"
	#include "sevastopol_shuttles.dm"
	#include "sevastopol_unit_testing.dm"

	#include "sevastopol-1.dmm"
	#include "sevastopol-2.dmm"
	#include "sevastopol-3.dmm"
	#include "sevastopol-4.dmm"

	#define using_map_DATUM /datum/map/sevastopol

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring UNN Sevastopol

#endif
