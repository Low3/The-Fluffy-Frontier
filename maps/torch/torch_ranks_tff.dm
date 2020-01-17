/datum/map/torch
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/army,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(
			/datum/mil_branch/expeditionary_corps,
			/datum/mil_branch/civilian,
			/datum/mil_branch/solgov,
			/datum/mil_branch/skrell_fleet
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/nabber     = list(/datum/mil_branch/civilian),
		/datum/species/skrell     = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi     = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/adherent   = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/sergal     = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/sergal/northern      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/sergal/eastern      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/akula     = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/custom      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/humanathi      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/tajaran      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/vasilissan      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/vulpkanin      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/customhuman      = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		//datum/species/tesh/  list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/vox        = list(/datum/mil_branch/alien),
		/datum/species/vox/armalis        = list(/datum/mil_branch/alien)
	)
