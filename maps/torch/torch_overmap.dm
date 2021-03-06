/obj/effect/overmap/visitable/ship/torch
	name = "NTEV Blue Jay"
	desc = "A bluespace-capable corvette bearing markings of the NanoTrasen Surveyor Corps."
	fore_dir = WEST
	vessel_mass = 100000
	burn_delay = 2 SECONDS
	base = TRUE

	initial_restricted_waypoints = list(
		"NTEV Falcon" = list("nav_hangar_calypso"), 	//can't have random shuttles popping inside the ship
		"NTRP Kestrel" = list("nav_hangar_guppy"),
		"NTSC Eagle" = list("nav_hangar_aquila")
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_calypso",
		"nav_bridge_guppy",
		"nav_bridge_aquila",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",
		"nav_skipjack_deck1",
		"nav_ert_deck4",
		"nav_deck4_calypso",
		"nav_deck4_guppy",
		"nav_deck4_aquila",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",
		"nav_skipjack_deck2",
		"nav_ert_deck3",
		"nav_deck3_calypso",
		"nav_deck3_guppy",
		"nav_deck3_aquila",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",
		"nav_skipjack_deck3",
		"nav_ert_deck2",
		"nav_deck2_calypso",
		"nav_deck2_guppy",
		"nav_deck2_aquila",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",
		"nav_skipjack_deck4",
		"nav_ert_deck1",
		"nav_deck1_calypso",
		"nav_deck1_guppy",
		"nav_deck1_aquila",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skipjack_hanger",
		"nav_ert_hanger",

		"nav_skrellscoutsh_altdock",
		"nav_ert_dock"
	)

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name = "NTEV Falcon"
	desc = "A medium-sized long-range shuttle. It bears markings of the NanoTrasen Surveyor Corps."
	shuttle = "NTEV Falcon"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/aquila
	name = "NTSC Eagle"
	desc = "A vessel escort gunship. It bears markings of the NanoTrasen Surveyor Corps."
	shuttle = "NTSC Eagle"
	vessel_mass = 20000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS //spammable, but expensive
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/guppy
	name = "NTRP Kestrel"
	desc = "A small recovery pod. It's capable of limited independant space travel. It's marked as 'NTRP Kestrel'."
	shuttle = "NTRP Kestrel"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/aquila
	name = "Eagle control console"
	shuttle_tag = "NTSC Eagle"
	req_access = list(access_aquila_helm)

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "NTEV Falcon"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "Kestrel control console"
	shuttle_tag = "NTRP Kestrel"
	req_access = list(access_guppy_helm)