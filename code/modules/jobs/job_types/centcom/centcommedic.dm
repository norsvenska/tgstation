/datum/job/centcom_medic
	title = "CentCom Medical Officer"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = null
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "CentCom Commanders"
	selection_color = "#b7f8c5"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_COMMAND

	outfit = /datum/outfit/centcom/medical
	plasmaman_outfit = /datum/outfit/plasmaman/centcom_commander //placeholder

	paycheck = PAYCHECK_CENTCOM
	paycheck_department = ACCOUNT_COM

	display_order = JOB_DISPLAY_ORDER_CENTMED
	departments_list = list(
		/datum/job_department/command,
		)

	liver_traits = list(TRAIT_MEDICAL_METABOLISM, TRAIT_ROYAL_METABOLISM)

	family_heirlooms = list(/obj/item/reagent_containers/hypospray/cmo)

	mail_goodies = list(
		/obj/item/clothing/suit/toggle/labcoat/cmo = 15,
	)

	job_flags = JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS

	voice_of_god_power = 1.8 //Command staff has authority
