/datum/job/admiral
	title = JOB_CENTCOM_ADMIRAL
	description = "The strongest one out there. You are almost unkillable. Have fun."
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
		/obj/item/clothing/head/hats/centcom_cap = 15,
		/obj/item/clothing/head/beret/centcom_formal = 10,
		/obj/item/clothing/suit/armor/centcom_formal = 10,
		/obj/item/mod/control/pre_equipped/admiral = 1,
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS
	rpg_title = "Naval Captain"

	voice_of_god_power = 2.4 //Command staff has authority

/datum/outfit/job/admiral
 	name = "CentCom Admiral"

 	id = /obj/item/card/id/advanced/black/admiral
 	id_trim = /datum/id_trim/centcom/admiral
 	uniform = /obj/item/clothing/under/rank/centcom/commander
 	suit = /obj/item/clothing/suit/space/officer
 	suit_store = /obj/item/gun/energy/pulse/pistol/m1911
 	back = /obj/item/storage/backpack/holding/satchel
 	backpack_contents = list(
		/obj/item/storage/wallet/luxury = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/language_manual/norse_manual = 1,
		/obj/item/mod/control/pre_equipped/admiral = 1,
		/obj/item/storage/box/abductortools = 1,
		/obj/item/storage/box/debugtools = 1,
		/obj/item/book/granter/martial/cqc = 1,
		/obj/item/clothing/mask/centcom = 1,
		/obj/item/melee/baton/telescopic/centcom = 1,
)
 	belt = /obj/item/modular_computer/pda/heads/captain/centcom
 	ears = /obj/item/radio/headset/headset_cent/alt/commander
 	glasses = /obj/item/clothing/glasses/centcom
 	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
 	head = /obj/item/clothing/head/hats/centcom_cap
 	shoes = /obj/item/clothing/shoes/combat/swat
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
