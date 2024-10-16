/datum/job/centcom_commander
	title = JOB_CENTCOM_COMMANDER
	description = "Go in and bully everyone. After all, \
		if you die, you will be avenged."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = null
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "CentCom Admirals"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_COMMAND
	config_tag = "CENTCOM_COMMANDER"

	outfit = /datum/outfit/centcom/commander/formal
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_commander

	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_COM

	display_order = JOB_DISPLAY_ORDER_COMMANDER
	department_for_prefs = /datum/job_department/centcom
	departments_list = list(
		/datum/job_department/centcom,
		)

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	family_heirlooms = list(/obj/item/clothing/accessory/medal/gold/captain)

	mail_goodies = list(
		/obj/item/clothing/head/hats/centcom_cap = 15,
		/obj/item/clothing/head/beret/centcom_formal = 10,
		/obj/item/ammo_box/a357 = 20,
		/obj/item/clothing/suit/armor/centcom_formal = 10
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS
	rpg_title = "Mercenary Officer"

	voice_of_god_power = 2.0 //Command staff has authority
