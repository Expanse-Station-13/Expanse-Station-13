#if !defined(using_map_DATUM)
	#include "luna_areas.dm"
	#include "luna_shuttles.dm"
	#include "luna_unit_testing.dm"

	#include "luna-1.dmm"
	#include "luna-2.dmm"
	#include "luna-3.dmm"

	#define using_map_DATUM /datum/map/luna

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Example

#endif
