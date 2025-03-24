// This file contains all boxes used by the Engineering department and its purpose on the station. Also contains stuff we use when we wanna fix up stuff as well or helping us live when shit goes southwardly.

/obj/item/storage/box/metalfoam
	name = "box of metal foam grenades"
	desc = "To be used to rapidly seal hull breaches."
	illustration = "grenade"

/obj/item/storage/box/metalfoam/PopulateContents()
	. = list()
	for(var/_ in 1 to 7)
		. += /obj/item/grenade/chem_grenade/metalfoam

/obj/item/storage/box/smart_metal_foam
	name = "box of smart metal foam grenades"
	desc = "Used to rapidly seal hull breaches. This variety conforms to the walls of its area."
	illustration = "grenade"

/obj/item/storage/box/smart_metal_foam/PopulateContents()
	. = list()
	for(var/_ in 1 to 7)
		. += /obj/item/grenade/chem_grenade/smart_metal_foam

/obj/item/storage/box/debugtools
	name = "box of debug tools"
	icon_state = "syndiebox"
	storage_type = /datum/storage/box/debug_tools

/obj/item/storage/box/debugtools/PopulateContents(datum/storage_config/config)
	config.compute_max_values()

	return list(
		/obj/item/card/emag,
		/obj/item/construction/rcd/combat/admin,
		/obj/item/disk/tech_disk/debug,
		/obj/item/flashlight/emp/debug,
		/obj/item/geiger_counter,
		/obj/item/healthanalyzer/advanced,
		/obj/item/modular_computer/pda/heads/captain,
		/obj/item/pipe_dispenser,
		/obj/item/storage/box/beakers/bluespace,
		/obj/item/storage/box/beakers/variety,
		/obj/item/storage/bag/sheetsnatcher/debug,
		/obj/item/uplink/debug,
		/obj/item/uplink/nuclear/debug,
		/obj/item/clothing/ears/earmuffs/debug,
		new /obj/item/stack/spacecash/c1000(null, 50),
	)

/obj/item/storage/box/abductortools
	name = "box of abductor tools"
	icon_state = "syndiebox" //placeholder
	storage_type = /datum/storage/box/debug_tools

/obj/item/storage/box/abductortools/PopulateContents(datum/storage_config/config)
	config.compute_max_values()

	return list(
		/obj/item/screwdriver/abductor,
		/obj/item/wrench/abductor,
		/obj/item/weldingtool/abductor,
		/obj/item/crowbar/abductor,
		/obj/item/wirecutters/abductor,
		/obj/item/multitool/abductor,
	)

/obj/item/storage/box/autosurgeon
	name = "box of improved organs"
	icon_state = "syndiebox"
	storage_type = /datum/storage/box/debug_tools

/obj/item/storage/box/autosurgeon/PopulateContents(datum/storage_config/config)
	config.compute_max_values()

	return list(
		/obj/item/autosurgeon,
		/obj/item/organ/cyberimp/chest/nutriment/plus,
		/obj/item/organ/cyberimp/brain/anti_stun,
		/obj/item/organ/ears/cybernetic/upgraded,
		/obj/item/organ/heart/cybernetic/anomalock/prebuilt,
		/obj/item/organ/liver/cybernetic/tier3,
		/obj/item/organ/lungs/cybernetic/tier3,
		/obj/item/organ/stomach/cybernetic/tier3,
		/obj/item/organ/eyes/robotic/shield,
	)

/obj/item/storage/box/plastic
	name = "plastic box"
	desc = "It's a solid, plastic shell box."
	icon_state = "plasticbox"
	foldable_result = null
	illustration = "writing"
	custom_materials = list(/datum/material/plastic = HALF_SHEET_MATERIAL_AMOUNT) //You lose most if recycled.

/obj/item/storage/box/emergencytank
	name = "emergency oxygen tank box"
	desc = "A box of emergency oxygen tanks."
	illustration = "emergencytank"

/obj/item/storage/box/emergencytank/PopulateContents()
	. = list()
	for(var/_ in 1 to 7)
		. += /obj/item/tank/internals/emergency_oxygen

/obj/item/storage/box/engitank
	name = "extended-capacity emergency oxygen tank box"
	desc = "A box of extended-capacity emergency oxygen tanks."
	illustration = "extendedtank"

/obj/item/storage/box/engitank/PopulateContents()
	. = list()
	for(var/_ in 1 to 7)
		. += /obj/item/tank/internals/emergency_oxygen/engi

/obj/item/storage/box/stickers/chief_engineer
	name = "CE approved sticker pack"
	desc = "With one of these stickers, inform the crew that the contraption in the corridor is COMPLETELY SAFE!"
	illustration = "label_ce"

/obj/item/storage/box/stickers/chief_engineer/PopulateContents()
	return list(
		/obj/item/sticker/chief_engineer,
		/obj/item/sticker/chief_engineer,
		/obj/item/sticker/chief_engineer,
	)
