/obj/structure/bed/sofa
	name = "leather sofa"
	desc = "A wide and comfy sofa - no one assistant was ate by it due production! It's made of steel and covered with synthetic leather."
	icon = 'frontier/warfoxy/sofa.dmi'
	icon_state = "sofa_right"
	buckle_dir = 0
	buckle_lying = 0

/obj/structure/bed/sofa/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/stack) || iswirecutter(W))
		return
	if(isScrewdriver(W))
		playsound(src.loc, 'sound/items/Screwdriver.ogg', 100, 1)
		if(anchored)
			user.visible_message("[user] unscrewed \the [src] from the floor.", "You start unscrewed \the [src] from the floor.")
		else
			user.visible_message("[user] secured \the [src] to the floor.", "You secured \the [src] to the floor.")

		anchored = !anchored
		return
	..()

/obj/structure/bed/sofa/verb/rotate_clockwise()
	set name = "Rotate Sofa Clockwise"
	set category = "Object"
	set src in oview(1)

	if(!usr || !isturf(usr.loc))
		return
	if(usr.stat || usr.restrained())
		return
	if(ismouse(usr) || (isobserver(usr) && !config.ghost_interaction))
		return
	if(src.anchored)
		usr << "<span class='notice'>It anchored and won't rotate.</span>"
		return

	src.set_dir(turn(src.dir, 270))

/obj/structure/bed/sofa/left
	icon_state = "sofa_left"

/obj/structure/bed/sofa/New(var/newloc)
	base_icon = icon_state
	..(newloc,MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/sofa/post_buckle_mob()
	update_icon()
	return ..()

/obj/structure/bed/sofa/on_update_icon()
	overlays.Cut()
	var/image/I = image(src, "[base_icon]_over")
	I.layer = ABOVE_HUMAN_LAYER
	overlays |= I
	if(buckled_mob)
		var/image/D = image(src, "[base_icon]_armrest")
		D.layer = ABOVE_HUMAN_LAYER
		overlays |= D

/obj/structure/bed/sofa/black
	icon_state = "couchblack_middle"

/obj/structure/bed/sofa/black/left
	icon_state = "couchblack_left"

/obj/structure/bed/sofa/black/right
	icon_state = "couchblack_right"

/obj/structure/bed/sofa/black/corner
	icon_state = "couchblack_corner"

/obj/structure/bed/sofa/beige
	icon_state = "couchbeige_middle"

/obj/structure/bed/sofa/beige/left
	icon_state = "couchbeige_left"

/obj/structure/bed/sofa/beige/right
	icon_state = "couchbeige_right"

/obj/structure/bed/sofa/beige/corner
	icon_state = "couchbeige_corner"

/obj/structure/bed/sofa/brown
	icon_state = "couchbrown_middle"

/obj/structure/bed/sofa/brown/left
	icon_state = "couchbrown_left"

/obj/structure/bed/sofa/brown/right
	icon_state = "couchbrown_right"

/obj/structure/bed/sofa/brown/corner
	icon_state = "couchbrown_corner"

/obj/structure/bed/sofa/teal
	icon_state = "couchteal_middle"

/obj/structure/bed/sofa/teal/left
	icon_state = "couchteal_left"

/obj/structure/bed/sofa/teal/right
	icon_state = "couchteal_right"

/obj/structure/bed/sofa/teal/corner
	icon_state = "couchteal_corner"

/material/leather/generate_recipes(var/reinforce_material)
	. = ..()
	if(reinforce_material)	//recipies below don't support composite materials
		return
	. += new/datum/stack_recipe_list("sofas",list(
		new/datum/stack_recipe/structure/bed/sofa/beige/left(src),
		new/datum/stack_recipe/structure/bed/sofa/beige(src),
		new/datum/stack_recipe/structure/bed/sofa/beige/right(src),
		new/datum/stack_recipe/structure/bed/sofa/beige/corner(src),
		new/datum/stack_recipe/structure/bed/sofa/black/left(src),
		new/datum/stack_recipe/structure/bed/sofa/black(src),
		new/datum/stack_recipe/structure/bed/sofa/black/right(src),
		new/datum/stack_recipe/structure/bed/sofa/black/corner(src),
		new/datum/stack_recipe/structure/bed/sofa/brown/left(src),
		new/datum/stack_recipe/structure/bed/sofa/brown(src),
		new/datum/stack_recipe/structure/bed/sofa/brown/right(src),
		new/datum/stack_recipe/structure/bed/sofa/brown/corner(src),
		new/datum/stack_recipe/structure/bed/sofa/teal/left(src),
		new/datum/stack_recipe/structure/bed/sofa/teal(src),
		new/datum/stack_recipe/structure/bed/sofa/teal/right(src),
		new/datum/stack_recipe/structure/bed/sofa/teal/corner(src)
		))

/datum/stack_recipe/structure/bed/sofa
	req_amount = 2
	difficulty = 2

/datum/stack_recipe/structure/bed/sofa/beige/left
	result_type = /obj/structure/bed/sofa/beige/left
	title = "beige sofa left"

/datum/stack_recipe/structure/bed/sofa/beige
	result_type = /obj/structure/bed/sofa/beige
	title = "beige sofa"

/datum/stack_recipe/structure/bed/sofa/beige/right
	result_type = /obj/structure/bed/sofa/beige/right
	title = "beige sofa right"

/datum/stack_recipe/structure/bed/sofa/beige/corner
	result_type = /obj/structure/bed/sofa/beige/corner
	title = "beige sofa corner"

/datum/stack_recipe/structure/bed/sofa/black/left
	result_type = /obj/structure/bed/sofa/black/left
	title = "black sofa left"

/datum/stack_recipe/structure/bed/sofa/black
	result_type = /obj/structure/bed/sofa/black
	title = "black sofa"

/datum/stack_recipe/structure/bed/sofa/black/right
	result_type = /obj/structure/bed/sofa/black/right
	title = "black sofa right"

/datum/stack_recipe/structure/bed/sofa/black/corner
	result_type = /obj/structure/bed/sofa/black/corner
	title = "black sofa corner"

/datum/stack_recipe/structure/bed/sofa/brown/left
	result_type = /obj/structure/bed/sofa/brown/left
	title = "brown sofa left"

/datum/stack_recipe/structure/bed/sofa/brown
	result_type = /obj/structure/bed/sofa/brown
	title = "brown sofa"

/datum/stack_recipe/structure/bed/sofa/brown/right
	result_type = /obj/structure/bed/sofa/brown/right
	title = "brown sofa right"

/datum/stack_recipe/structure/bed/sofa/brown/corner
	result_type = /obj/structure/bed/sofa/brown/corner
	title = "brown sofa corner"

/datum/stack_recipe/structure/bed/sofa/teal/left
	result_type = /obj/structure/bed/sofa/teal/left
	title = "teal sofa left"

/datum/stack_recipe/structure/bed/sofa/teal
	result_type = /obj/structure/bed/sofa/teal
	title = "teal sofa"

/datum/stack_recipe/structure/bed/sofa/teal/right
	result_type = /obj/structure/bed/sofa/teal/right
	title = "teal sofa right"

/datum/stack_recipe/structure/bed/sofa/teal/corner
	result_type = /obj/structure/bed/sofa/teal/corner
	title = "teal sofa corner"