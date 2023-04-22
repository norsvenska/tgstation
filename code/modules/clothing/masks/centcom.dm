/obj/item/clothing/mask/centcom
	name = "\improper CentCom rebreather"
	desc = "A dark rebreather, from CentCom. Allows the user to survive in... well... space. Or anywhere there isn't air, I guess."
	icon_state = "centmask"
	inhand_icon_state = "sechailer" //placeholder unless it looks good
	body_parts_covered = NONE
	w_class = WEIGHT_CLASS_SMALL
	clothing_traits = list(TRAIT_NOBREATH)
//	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 75, FIRE = 0, ACID = 0)
	actions_types = list(/datum/action/item_action/adjust)
	flags_inv = null
	visor_flags_inv = null
//	flags_inv = HIDEEARS
//	visor_flags_inv = HIDEEARS
//	clothing_flags = list(INEDIBLE_CLOTHING, VOICEBOX_DISABLED)
//	visor_flags = list(INEDIBLE_CLOTHING, VOICEBOX_DISABLED)
	flags_cover = MASKCOVERSMOUTH
	visor_flags_cover = MASKCOVERSMOUTH
	resistance_flags = NONE
	mask_adjusted = FALSE
	armor_type = /datum/armor/rebreather_centcom

/datum/armor/rebreather_centcom
	bio = 75
	acid = 25

/obj/item/clothing/mask/centcom/suicide_act(mob/living/carbon/user)
	user.visible_message(span_suicide("[user] places \the [src] on [user.p_their()] face and shuts off the air filtration system! It looks like [user.p_theyre()] trying to commit suicide!"))
	return OXYLOSS

/obj/item/clothing/mask/centcom/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_MASK)
		user.failed_last_breath = FALSE
		user.clear_alert(ALERT_NOT_ENOUGH_OXYGEN)
		user.apply_status_effect(/datum/status_effect/rebreathing)

/obj/item/clothing/mask/centcom/dropped(mob/living/carbon/human/user)
	..()
	user.remove_status_effect(/datum/status_effect/rebreathing)

/obj/item/clothing/mask/centcom/attack_self(mob/user)
	adjustmask(user)

/obj/item/clothing/mask/centcom/AltClick(mob/user)
	..()
	if(user.can_perform_action(src, NEED_DEXTERITY))
		adjustmask(user)

/obj/item/clothing/mask/centcom/examine(mob/user)
	. = ..()
	. += span_notice("Alt-click [src] to adjust it.")

// /obj/item/clothing/mask/centcom/proc/togglecloak(mob/living/carbon/user)
// 	if(user?.incapacitated())
// 		return
// 	cloakingon = !cloakingon
// 	if(!cloakingon) //off
// 		worn_icon_state = "centmask"
// 		to_chat(user, span_notice("You disable the rebreather's cloaking mode."))
// //		clothing_flags |= visor_flags
// 		flags_cover |= visor_flags_cover
// 		flags_inv |= visor_flags_inv
// //		slot_flags = initial(slot_flags)
// 	else //on
// 		worn_icon_state = "centmask_up"
// 		to_chat(user, span_notice("You turn on the rebreather's cloaking mode."))
// //		clothing_flags &= ~visor_flags
// 		flags_cover &= ~visor_flags_cover
// 		flags_inv &= ~visor_flags_inv
// //		if(adjusted_flags)
// //			slot_flags = adjusted_flags
// 	if(!istype(user))
// 		return
// 	if(user.wear_mask == src)
// 		user.wear_mask_update(src, toggle_off = cloakingon)
