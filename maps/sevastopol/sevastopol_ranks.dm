/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ

/datum/map/sevastopol
	branch_types = list(
		/datum/mil_branch/navy,
		/datum/mil_branch/marine
	)

	spawn_branch_types = list(
		/datum/mil_branch/navy,
		/datum/mil_branch/marine
	)


/*
 *  Branches
 *  ========
 */

/datum/mil_branch/navy
	name = "United Nations Navy"
	name_short = "Navy"
	email_domain = "sevastopol.navy"

	rank_types = list(
		/datum/mil_rank/navy/e4,
		/datum/mil_rank/navy/e5,
		/datum/mil_rank/navy/e6,
		/datum/mil_rank/navy/e7,
		/datum/mil_rank/navy/e8,
		/datum/mil_rank/navy/e9,
		/datum/mil_rank/navy/o1,
		/datum/mil_rank/navy/o2,
		/datum/mil_rank/navy/o3,
		/datum/mil_rank/navy/o5
	)

	spawn_rank_types = list(
		/datum/mil_rank/navy/e4,
		/datum/mil_rank/navy/e5,
		/datum/mil_rank/navy/e6,
		/datum/mil_rank/navy/e7,
		/datum/mil_rank/navy/e8,
		/datum/mil_rank/navy/e9,
		/datum/mil_rank/navy/o1,
		/datum/mil_rank/navy/o2,
		/datum/mil_rank/navy/o3,
		/datum/mil_rank/navy/o5
	)

	//assistant_job = "Crewman"

/datum/mil_branch/marine
	name = "United Nations Marine Corps"
	name_short = "Marines"
	email_domain = "sevastopol.mar"

	rank_types = list(
		/datum/mil_rank/marine/e2,
		/datum/mil_rank/marine/e3,
		/datum/mil_rank/marine/e4,
		/datum/mil_rank/marine/e5,
		/datum/mil_rank/marine/e6,
		/datum/mil_rank/marine/e7,
		/datum/mil_rank/marine/e8,
		/datum/mil_rank/marine/e9,
		/datum/mil_rank/marine/o4,
	)

	spawn_rank_types = list(
		/datum/mil_rank/marine/e2,
		/datum/mil_rank/marine/e3,
		/datum/mil_rank/marine/e4,
		/datum/mil_rank/marine/e5,
		/datum/mil_rank/marine/e6,
		/datum/mil_rank/marine/e7,
		/datum/mil_rank/marine/e8,
		/datum/mil_rank/marine/e9,
		/datum/mil_rank/marine/o4,
	)

	assistant_job = "Marine"

/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "civ"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/civ/civ
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ
	)

	//assistant_job = "Passenger"

/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

/*
 *  Navy
 *  ====
 */

/datum/mil_rank/navy/e4
	name = "Petty Officer Third Class"
	name_short = "PO3"
	sort_order = 4

/datum/mil_rank/navy/e5
	name = "Petty Officer Second Class"
	name_short = "PO2"
	sort_order = 5

/datum/mil_rank/navy/e6
	name = "Petty Officer First Class"
	name_short = "PO1"
	sort_order = 6

/datum/mil_rank/navy/e7
	name = "Chief Petty Officer"
	name_short = "CPO"
	sort_order = 7

/datum/mil_rank/navy/e8
	name = "Senior Chief Petty Officer"
	name_short = "SCPO"
	sort_order = 8

/datum/mil_rank/navy/e9
	name = "Master Chief Petty Officer"
	name_short = "MCPO"
	sort_order = 9

/datum/mil_rank/navy/o1
	name = "Ensign"
	name_short = "ENS"
	sort_order = 11

/datum/mil_rank/navy/o2
	name = "Lieutenant Junior Grade"
	name_short = "LTJ"
	sort_order = 12

/datum/mil_rank/navy/o3
	name = "Lieutenant"
	name_short = "LT"
	sort_order = 13

/datum/mil_rank/navy/o5
	name = "Commander"
	name_short = "CDR"
	sort_order = 15

/*
 *  Marines
 *  =======
 */

/datum/mil_rank/marine/e2
	name = "Private First Class"
	name_short = "PFC"
	sort_order = 2

/datum/mil_rank/marine/e3
	name = "Lance Corporal"
	name_short = "LCPL"
	sort_order = 3

/datum/mil_rank/marine/e4
	name = "Corporal"
	name_short = "CPL"
	sort_order = 4

/datum/mil_rank/marine/e5
	name = "Sergeant"
	name_short = "SGT"
	sort_order = 5

/datum/mil_rank/marine/e6
	name = "Staff Sergeant"
	name_short = "SSG"
	sort_order = 6

/datum/mil_rank/marine/e7
	name = "Gunnery Sergeant"
	name_short = "GSG"
	sort_order = 7

/datum/mil_rank/marine/e8
	name = "Master Sergeant"
	name_short = "MSG"
	sort_order = 8

/datum/mil_rank/marine/e9
	name = "Sergeant Major"
	name_short = "SGM"
	sort_order = 9

/datum/mil_rank/marine/o4
	name = "Major"
	name_short = "MAJ"
	sort_order = 14

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"
	name_short = null