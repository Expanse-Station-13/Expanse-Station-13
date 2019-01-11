/obj/item/device/radio/headset/heads/captain
	name = "commanding officer's headset"
	desc = "The fanciest headset there is."
	icon_state = "com_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/heads/captain

/obj/item/device/encryptionkey/heads/captain
	name = "commanding officer's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Medical" = 1,)

/obj/item/device/radio/headset/heads/hop
	name = "executive officer's headset"
	desc = "The headset of the second in command."
	icon_state = "com_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/heads/hop

/obj/item/device/encryptionkey/heads/hop
	name = "executive officer's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1)