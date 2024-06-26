/datum/sprite_accessory/tail/cow
	name = "cow tail, colorable"
	id = "tail_cow"
	icon_state = "cow"
	do_colouration = 1
	legacy_use_additive_color_matrix = FALSE

/datum/sprite_accessory/tail/satyr
	name = "goat legs, colorable"
	id = "tail_satyr_legs"
	icon_state = "satyr"
	legacy_use_additive_color_matrix = FALSE
	do_colouration = 1
	hide_body_parts = list(BP_L_LEG, BP_L_FOOT, BP_R_LEG, BP_R_FOOT) //Exclude pelvis just in case.
	clip_mask_icon = 'icons/mob/sprite_accessories/taurs.dmi'
	clip_mask_state = "taur_clip_mask_def" //Used to clip off the lower part of suits & uniforms.

/datum/sprite_accessory/tail/satyr_horse
	name = "horse legs, colorable"
	id = "tail_satyr_horse_legs"
	icon_state = "satyr_horse"
	legacy_use_additive_color_matrix = FALSE
	do_colouration = 1
	hide_body_parts = list(BP_L_LEG, BP_L_FOOT, BP_R_LEG, BP_R_FOOT) //Exclude pelvis just in case.
	clip_mask_icon = 'icons/mob/sprite_accessories/taurs.dmi'
	clip_mask_state = "taur_clip_mask_def" //Used to clip off the lower part of suits & uniforms.
