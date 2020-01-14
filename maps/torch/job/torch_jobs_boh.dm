// Consist of modular changes, for now.

// Command
/// Captain is basically a modular fix.
/datum/job/captain
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
		//datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/CO/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o6
		//datum/mil_rank/fleet/o6
	)

/datum/job/hop
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o5
	)

/datum/job/cmo
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3
	)

/datum/job/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3
	)

/datum/job/hos
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3
	)

/datum/job/bridgeofficer
	alt_titles = list(
		"Helmsman",
		"Tactical Officer",
		"Sensor Operator"
	)
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)
/***/

// Engineering
/datum/job/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7
	)

/datum/job/engineer
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/***/

// Medical
/datum/job/senior_doctor
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/datum/job/doctor
	allowed_branches = list(
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/datum/job/psychiatrist
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/***/

// Security
/datum/job/warden
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7
	)

/datum/job/detective
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3
	)

/datum/job/officer
	title = "Security Officer"
	alt_titles = list(
		"Master at Arms"
	)
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3
	)
/***/

// Service
/datum/job/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/datum/job/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/datum/job/chef
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor
	)

/datum/job/crew
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3
	)
/***/

// Supply
/*
/datum/job/qm
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7
	)

/datum/job/cargo_tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/civ/contractor

	)
	*/
/***/