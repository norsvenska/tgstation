//Contains: Engineering department jumpsuits

/obj/item/clothing/under/rank/engineering
	icon = 'icons/obj/clothing/under/engineering.dmi'
	worn_icon = 'icons/mob/clothing/under/engineering.dmi'
	armor_type = /datum/armor/clothing_under/rank_engineering
	resistance_flags = NONE

/datum/armor/clothing_under/rank_engineering
	fire = 60
	acid = 20

/obj/item/clothing/under/rank/engineering/chief_engineer
	desc = "It's a high visibility jumpsuit given to those engineers insane enough to achieve the rank of \"Chief Engineer\". Made from fire resistant materials."
	name = "chief engineer's jumpsuit"
	icon_state = "chiefengineer"
	inhand_icon_state = "gy_suit"
	armor_type = /datum/armor/clothing_under/engineering_chief_engineer

/datum/armor/clothing_under/engineering_chief_engineer
	fire = 80
	acid = 40

/obj/item/clothing/under/rank/engineering/chief_engineer/skirt
	name = "chief engineer's jumpskirt"
	desc = "It's a high visibility jumpskirt given to those engineers insane enough to achieve the rank of \"Chief Engineer\". Made from fire resistant materials."
	icon_state = "chief_skirt"
	inhand_icon_state = "gy_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/engineering/chief_engineer/turtleneck
	name = "chief engineer's turtleneck"
	desc = "A yellow turtleneck and white khakis, for a chief engineer with a superior sense of style."
	icon_state = "ce_turtleneck"
	inhand_icon_state = "y_suit"
	can_adjust = TRUE
	alt_covers_chest = TRUE
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	greyscale_config = /datum/greyscale_config/ce_turtleneck
	greyscale_config_worn = /datum/greyscale_config/ce_turtleneck/worn
	greyscale_colors = "#ffd800#ffffff#4d4d4d#e6e9f2#2e992e"

/obj/item/clothing/under/rank/engineering/chief_engineer/turtleneck/skirt
	name = "chief engineer's turtleneck skirt"
	desc = "A yellow turtleneck and white khaki skirt, for a chief engineer with a superior sense of style."
	icon_state = "ce_turtleneck_skirt"
	inhand_icon_state = "y_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	greyscale_config = /datum/greyscale_config/ce_turtleneck_skirt
	greyscale_config_worn = /datum/greyscale_config/ce_turtleneck_skirt/worn
	greyscale_colors = "#ffd800#ffffff#4d4d4d#e6e9f2#2e992e"

/obj/item/clothing/under/rank/engineering/atmospheric_technician
	desc = "It's a jumpsuit worn by atmospheric technicians. Made from fire resistant materials."
	name = "atmospheric technician's jumpsuit"
	icon_state = "atmos"
	inhand_icon_state = "atmos_suit"

/obj/item/clothing/under/rank/engineering/atmospheric_technician/skirt
	name = "atmospheric technician's jumpskirt"
	desc = "It's a jumpskirt worn by atmospheric technicians. Made from fire resistant materials."
	icon_state = "atmos_skirt"
	inhand_icon_state = "atmos_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/engineering/engineer
	desc = "It's an orange high visibility jumpsuit worn by engineers. Made from fire resistant materials."
	name = "engineer's jumpsuit"
	icon_state = "engine"
	inhand_icon_state = "engi_suit"

/obj/item/clothing/under/rank/engineering/engineer/hazard
	name = "engineer's hazard jumpsuit"
	desc = "A high visibility jumpsuit. Made from fire resistant materials."
	icon_state = "hazard"
	inhand_icon_state = "syndicate-orange"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/engineering/engineer/skirt
	name = "engineer's jumpskirt"
	desc = "It's an orange high visibility jumpskirt worn by engineers. Made from fire resistant materials."
	icon_state = "engine_skirt"
	inhand_icon_state = "engi_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
