/obj/item/clothing/mask/centcom
	name = "\improper CentCom rebreather"
	desc = "A dark rebreather, from CentCom. Allows the user to survive in... well... space. Or anywhere there isn't air, I guess."
	icon_state = "centmask"
	inhand_icon_state = "sechailer"
	body_parts_covered = NONE
	w_class = WEIGHT_CLASS_SMALL
	clothing_traits = list(TRAIT_NOBREATH)
	actions_types = list(/datum/action/item_action/adjust)
	flags_inv = null
	visor_flags_inv = null
	flags_cover = MASKCOVERSMOUTH
	visor_flags_cover = MASKCOVERSMOUTH
	resistance_flags = NONE
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
	adjust_visor(user)

/obj/item/clothing/mask/centcom/click_alt(mob/user)
	adjust_visor(user)
	return CLICK_ACTION_SUCCESS

/obj/item/clothing/mask/centcom/examine(mob/user)
	. = ..()
	. += span_notice("Alt-click [src] to adjust it.")
