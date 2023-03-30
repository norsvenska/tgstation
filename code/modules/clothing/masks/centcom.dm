/obj/item/clothing/mask/centcom
	name = "\improper CentCom rebreather"
	desc = "A dark rebreather, from CentCom. Allows the user to survive in... well... space. Or anywhere there isn't air, I guess."
	icon_state = "rebreather_centcom"
	inhand_icon_state = "sechailer" //placeholder unless it looks good
	body_parts_covered = NONE
	w_class = WEIGHT_CLASS_SMALL
	clothing_traits = list(TRAIT_NOBREATH)
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 75, FIRE = 0, ACID = 0)
	flags_cover = MASKCOVERSMOUTH
	resistance_flags = NONE

/obj/item/clothing/mask/nobreath/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_MASK)
		user.failed_last_breath = FALSE
		user.clear_alert(ALERT_NOT_ENOUGH_OXYGEN)
		user.apply_status_effect(/datum/status_effect/rebreathing)

/obj/item/clothing/mask/nobreath/dropped(mob/living/carbon/human/user)
	..()
	user.remove_status_effect(/datum/status_effect/rebreathing)
