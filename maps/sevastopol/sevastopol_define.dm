/datum/map/sevastopol
	name = "Sevastopol"
	full_name = "UNN Sevastopol"
	path = "sevastopol"

	lobby_icon = 'maps/sevastopol/sevastopol_lobby.dmi'
	lobby_tracks = list(/music_track/absconditus)

	station_levels = list(1, 2, 3, 4)
	contact_levels = list(1, 2, 3, 4)
	player_levels = list(1, 2, 3, 4)

	allowed_spawns = list("Arrivals Shuttle")

	citizenship_choices = list(
		"UN",
		"MCR",
		"Ceres",
		"Eros",
		"Tycho"
	)

	home_system_choices = list(
		"Sol"
	)

	faction_choices = list(
		"UN",
		"MCR",
		"OPA",
		"Voltaire Collective"
		)

	religion_choices = list(
		"Jew",
		"Hindu",
		"Buddhist",
		"Muslim",
		"Christian",
		"Agnostic",
		"Deist",
		"Athiest",
		"Thelema",
		"Spiritualist"
		)

	shuttle_docked_message = "The shuttle has docked."
	shuttle_leaving_dock = "The shuttle has departed from home dock."
	shuttle_called_message = "A scheduled transfer shuttle has been sent."
	shuttle_recall_message = "The shuttle has been recalled"
	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"
