#if !defined(using_map_DATUM)

	#include "sevastopol_announcements.dm"
	#include "sevastopol_areas.dm"
	#include "sevastopol_jobs.dm"
	#include "sevastopol_lobby.dm"
	#include "sevastopol_outfits.dm"
	#include "sevastopol_overmap.dm"
	#include "sevastopol_presets.dm"
	#include "sevastopol_ranks.dm"
	#include "sevastopol_security_state.dm"
	#include "sevastopol_shuttles.dm"
	#include "sevastopol_telecomms.dm"
	#include "sevastopol_unit_testing.dm"

	#include "items/cards_ids.dm"
	#include "items/headsets.dm"
	#include "items/mcrn-under.dm"
	#include "items/unn-head.dm"
	#include "items/unn-under.dm"

	#include "structures/locker.dm"

	#include "sevastopol-01-engine.dmm"
	#include "sevastopol-02-reactor.dmm"
	#include "sevastopol-03-engineering.dmm"
	#include "sevastopol-04-berthings.dmm"
	#include "sevastopol-05-mess.dmm"
	#include "sevastopol-06-cargo.dmm"
	#include "sevastopol-07-eva.dmm"
	#include "sevastopol-08-marlab.dmm"
	#include "sevastopol-09-brig.dmm"
	#include "sevastopol-10-bridge.dmm"
	#include "sevastopol-11-cc.dmm"
	#include "sevastopol-12-transit.dmm"
	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"

	#include "../../code/datums/music_tracks/chasing_time.dm"

	#define using_map_DATUM /datum/map/sevastopol

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Sevastopol.

#endif

