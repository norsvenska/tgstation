///Regular backpack
/datum/storage/backpack
	max_total_storage = 21
	max_slots = 21

/datum/storage/backpack/New(
	atom/parent,
	max_slots,
	max_specific_storage,
	max_total_storage,
)
	. = ..()
	set_holdable(exception_hold_list = /obj/item/fish_tank)

///Saddle backpack
/datum/storage/backpack/saddle
	max_total_storage = 26

///Satchel flat
/datum/storage/backpack/satchel_flat
	max_total_storage = 15

/datum/storage/backpack/satchel_flat/New(atom/parent, max_slots, max_specific_storage, max_total_storage)
	. = ..()
	set_holdable(cant_hold_list = /obj/item/storage/backpack/satchel/flat) //muh recursive backpacks

///Santa bag
/datum/storage/backpack/santabag
	max_total_storage = 60

///Bluespace satchel
/datum/storage/backpack/bluespace
	max_specific_storage = WEIGHT_CLASS_GIGANTIC
	max_total_storage = 35
	max_slots = 30
	allow_big_nesting = TRUE
