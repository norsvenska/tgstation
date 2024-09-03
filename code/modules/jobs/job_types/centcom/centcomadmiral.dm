/datum/job/admiral
	title = JOB_CENTCOM_ADMIRAL
	description = "Keep the Captain under scrutiny, shoot those who attack you, \
		and take control when shit hits the fan."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = null
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the CentCom Grand Admiral"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_COMMAND
	config_tag = "ADMIRAL"

	outfit = /datum/outfit/job/admiral
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_commander //placeholder

	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_COM

	bounty_types = CIV_JOB_RANDOM
	display_order = JOB_DISPLAY_ORDER_ADMIRAL
	department_for_prefs = /datum/job_department/centcom
	departments_list = list(
		/datum/job_department/centcom,
		)

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	family_heirlooms = list(/obj/item/clothing/accessory/medal/gold/captain)

	mail_goodies = list(
		/obj/item/clothing/head/hats/centcom_cap = 3,
		/obj/item/clothing/head/beret/centcom_formal = 2,
		/obj/item/clothing/suit/armor/centcom_formal = 2,
		/obj/item/mod/control/pre_equipped/admiral = 1,
	)

	job_flags = STATION_JOB_FLAGS | HEAD_OF_STAFF_JOB_FLAGS
	rpg_title = "Naval Captain"

	voice_of_god_power = 2.4 //Command staff has authority

/datum/outfit/job/admiral
 	name = "CentCom Admiral"

 	id = /obj/item/card/id/advanced/black/admiral
 	id_trim = /datum/id_trim/centcom/admiral
 	uniform = /obj/item/clothing/under/rank/centcom/commander
 	suit = /obj/item/clothing/suit/space/officer
 	suit_store = /obj/item/gun/energy/pulse/pistol/m1911
 	back = /obj/item/storage/backpack/satchel/leather/bluespace
 	backpack_contents = list(
		/obj/item/mod/control/pre_equipped/admiral = 1,
		/obj/item/storage/box/abductortools = 1,
		/obj/item/storage/box/debugtools = 1,
		/obj/item/storage/box/autosurgeon = 1,
		/obj/item/clothing/mask/centcom = 1,
)
 	belt = /obj/item/modular_computer/pda/heads/captain/centcom
 	ears = /obj/item/radio/headset/headset_cent/alt/commander
 	glasses = /obj/item/clothing/glasses/centcom
 	gloves = /obj/item/clothing/gloves/tackler/combat/insulated/advanced
 	head = /obj/item/clothing/head/helmet/space/beret
 	shoes = /obj/item/clothing/shoes/combat/swat/alt
 	r_pocket = /obj/item/knife/combat/centcom
 	accessory = /obj/item/clothing/accessory/medal/gold/swedish
 	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/admiral/mod
	name = "CentCom Admiral (MODsuit)"
	uniform = /obj/item/clothing/under/misc/adminsuit
	head = null
	suit = null
	suit_store = null
	back = /obj/item/mod/control/pre_equipped/admiral
	backpack_contents = list(
		/obj/item/book/granter/martial/cqc = 1,
		/obj/item/gun/energy/pulse/pistol/m1911 = 1,
		/obj/item/construction/rcd/combat/admin = 1,
		/obj/item/construction/rtd/admin = 1
)
	mask = /obj/item/clothing/mask/centcom
