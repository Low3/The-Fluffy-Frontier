/datum/species/vulpkanin
	name = SPECIES_VULP
	name_plural = SPECIES_VULP
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'icons/mob/human_races/species/vulpkanin/body.dmi'
	deform = 'icons/mob/human_races/species/vulpkanin/deformed_body.dmi'
	husk_icon = 'icons/mob/human_races/species/vulpkanin/husk.dmi'
	preview_icon = 'icons/mob/human_races/species/vulpkanin/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "vulptail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE
	default_ears = /datum/sprite_accessory/ears/vulp

	modular_tail = 'icons/mob/human_races/species/vulpkanin/tail.dmi'
	tail_animation = 'icons/mob/human_races/species/vulpkanin/tail.dmi'// С этой строчкой и хвостом дичь какая-то. До конца не понял зачем каждая функция существует.

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Monkey"
	darksight_range = 4 //Дальность зрения во тьме. Типерь псины видят во тьме, не то, что жалкие людишки!
	darksight_tint = DARKTINT_GOOD //Параметр, отвечающий за тонировку теней.
	gluttonous = GLUT_TINY

	sexybits_location = BP_GROIN //Орган, удар по которому причиняет БОЛЬ и СТРАДАНИЯ. Стреляйте - не уберу!

	//Лов, Баланс я хз какой ставить :) Оставил от Сергалов им статы.
	breath_pressure = 18
	slowdown = -0.15
	brute_mod = 1.10
	burn_mod = 1.10
	blood_volume = 560

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5

	min_age = 18
	max_age = 100

	description = "The Vulpkanin (vulp-ka-nin) are a species of humanoid canine-like beings. The Vulpkanin hail from the Vazzend binary system, and originally from its second planet, Altam."

	cold_level_1 = 260 //Default 260 - Lower is better
	cold_level_2 = 200 //Default 200
	cold_level_3 = 120 //Default 120

	heat_level_1 = 360 //Default 360 - Higher is better
	heat_level_2 = 400 //Default 400
	heat_level_3 = 1000 //Default 1000

// Таяры поломанные, так что мне неоткуда статы стырить, а выставлять вручную мне стремно по причине: "Волки-имба, мне гроин вырвали одним ударом, а я им очередь всадил".

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_VULP
	base_color = "#066000"
	blood_color = "#660000"

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel warm.",
		"You feel the heat sink into your bones.",
		"You feel your skin prickle in the heat."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel cold and sluggish.",
		"Your fur bristles against the cold."
		)
	breathing_sound = 'sound/voice/monkey.ogg'

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)
//Выставил им все культуры, фракции, религии и домашние системы. Если натупил - дайте по шапке. Честно говоря, не знаю как им Все фракции выставить без такого срача в коде.
//Да и, вообще, я хз как их сюда вписать, так что вписал им все хумановские фичи :). Теперь вы можете быть Вульпом даже с Луны, даже с Марса, даже с ГЕЛИОСА (Я не знаю где это).

	available_cultural_info = list(
		TAG_CULTURE = list(
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_INDIE_CONFED,
			FACTION_CORPORATE,
			FACTION_NANOTRASEN,
			FACTION_FREETRADE,
			FACTION_XYNERGY,
			FACTION_HEPHAESTUS,
			FACTION_DAIS,
			FACTION_EXPEDITIONARY,
			FACTION_FLEET,
			FACTION_PCRC,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_OTHER,
			RELIGION_JUDAISM,
			RELIGION_HINDUISM,
			RELIGION_BUDDHISM,
			RELIGION_SIKHISM,
			RELIGION_JAINISM,
			RELIGION_ISLAM,
			RELIGION_CHRISTIANITY,
			RELIGION_BAHAI_FAITH,
			RELIGION_AGNOSTICISM,
			RELIGION_DEISM,
			RELIGION_ATHEISM,
			RELIGION_THELEMA,
			RELIGION_SPIRITUALISM,
			RELIGION_SHINTO,
			RELIGION_TAOISM
		)
	)

	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze, /decl/emote/audible/howl) = 75,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 25,
		)

/datum/species/vulpkanin/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/vulpkanin/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_VULP



/*
// Модуль
/datum/species/vulpkanin
	name = SPECIES_VULP
	name_plural = SPECIES_VULP
	icobase = 'modular_mithra/icons/mob/human_races/species/vulpkanin/body.dmi'
	//deform = 'modular_mithra/icons/mob/human_races/species/vulpkanin/deformed_body.dmi' They don't have deformed icons. Hopefully this doesn't cause problems
	husk_icon = 'modular_mithra/icons/mob/human_races/species/vulpkanin/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/vulpkanin/preview.dmi'
	modular_tail = 'modular_mithra/icons/mob/human_races/species/vulpkanin/tail.dmi'
	tail = "vulptail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	default_ears = /datum/sprite_accessory/ears/vulp
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Fox-wolf-dog-things! This is just a placeholder description!"

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Vulpkanin do
		TAG_CULTURE = list(
			CULTURE_HUMAN,
			CULTURE_HUMAN_VATGROWN,
			CULTURE_HUMAN_MARTIAN,
			CULTURE_HUMAN_MARSTUN,
			CULTURE_HUMAN_LUNAPOOR,
			CULTURE_HUMAN_LUNARICH,
			CULTURE_HUMAN_VENUSIAN,
			CULTURE_HUMAN_VENUSLOW,
			CULTURE_HUMAN_BELTER,
			CULTURE_HUMAN_PLUTO,
			CULTURE_HUMAN_EARTH,
			CULTURE_HUMAN_CETI,
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_CONFED,
			CULTURE_HUMAN_OTHER,
		)
	)
*/