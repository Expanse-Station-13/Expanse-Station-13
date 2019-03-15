/decl/hierarchy/outfit/job/unn
	name = OUTFIT_JOB_NAME("UNN Outfit")
	uniform = /obj/item/clothing/under/unn/marine
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/marine
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/unn/officer
	name = OUTFIT_JOB_NAME("UNN Officer's Outfit")
	head = /obj/item/clothing/head/unn

/decl/hierarchy/outfit/job/unn/officer/co
	name = OUTFIT_JOB_NAME("Commanding Officer")
	/obj/item/clothing/under/unn/fatigues
	glasses = /obj/item/clothing/glasses/sunglasses
	l_ear = /obj/item/device/radio/headset/heads/captain
	id_type = /obj/item/weapon/card/id/navy/co
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/unn/officer/co/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/unn/officer/xo
	name = OUTFIT_JOB_NAME("Executive Officer")
	uniform = /obj/item/clothing/under/unn/marine
	l_ear = /obj/item/device/radio/headset/heads/hop
	head = /obj/item/clothing/head/unmc
	id_type = /obj/item/weapon/card/id/marine/xo
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/unn/sea
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor")
	head = /obj/item/clothing/head/unmc
	uniform = /obj/item/clothing/under/unn/marine
	l_ear = /obj/item/device/radio/headset/heads/hop
	id_type = /obj/item/weapon/card/id/marine/sea
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/unn/security
	name = OUTFIT_JOB_NAME("Military Police Officer")
	uniform = /obj/item/clothing/under/unn/marine
	l_ear = /obj/item/device/radio/headset/headset_sec/alt
	id_type = /obj/item/weapon/card/id/marine/mpo
	pda_type = /obj/item/modular_computer/pda/security
	backpack_contents = list(/obj/item/clothing/accessory/armband = 1)

/decl/hierarchy/outfit/job/unn/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/unn/security/trainee
	name = OUTFIT_JOB_NAME("Military Police Officer Trainee")
	uniform = /obj/item/clothing/under/unn/marine
	l_ear = /obj/item/device/radio/headset/headset_sec
	id_type = /obj/item/weapon/card/id/marine/mpot

/decl/hierarchy/outfit/job/unn/officer/medical
	name = OUTFIT_JOB_NAME("Ship Doctor")
	uniform = /obj/item/clothing/under/unn/scrubs
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_ear = /obj/item/device/radio/headset/headset_med
	id_type = /obj/item/weapon/card/id/navy/medical/doctor
	pda_type = /obj/item/modular_computer/pda/medical
	backpack_contents = list(/obj/item/clothing/accessory/armband/medblue = 1)

/decl/hierarchy/outfit/job/unn/officer/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/unn/officer/medical/senior
	name = OUTFIT_JOB_NAME("Senior Medical Officer")
	l_ear = /obj/item/device/radio/headset/headset_med/alt
	id_type = /obj/item/weapon/card/id/navy/medical/doctor/senior

/decl/hierarchy/outfit/job/unn/officer/medical/scientist
	name = OUTFIT_JOB_NAME("Naval Researcher")
	id_type = /obj/item/weapon/card/id/navy/science

/decl/hierarchy/outfit/job/unn/medical
	name = OUTFIT_JOB_NAME("Corpsman")
	uniform = /obj/item/clothing/under/unn/scrubs
	l_ear = /obj/item/device/radio/headset/headset_med
	id_type = /obj/item/weapon/card/id/navy/medical
	pda_type = /obj/item/modular_computer/pda/medical
	backpack_contents = list(/obj/item/clothing/accessory/armband/medblue = 1)

/decl/hierarchy/outfit/job/unn/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/unn/engineer
	name = OUTFIT_JOB_NAME("Engineering Officer")
	uniform = /obj/item/clothing/under/unn/utility
	l_ear = /obj/item/device/radio/headset/headset_eng
	id_type = /obj/item/weapon/card/id/navy/engineer
	pda_type = /obj/item/modular_computer/pda/engineering
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	backpack_contents = list(/obj/item/clothing/accessory/armband/engine = 1)

/decl/hierarchy/outfit/job/unn/engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/unn/engineer/senior_engineer
	name = OUTFIT_JOB_NAME("Senior Engineering Officer")
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/navy/engineer/senior
	pda_type = /obj/item/modular_computer/pda/heads/ce

