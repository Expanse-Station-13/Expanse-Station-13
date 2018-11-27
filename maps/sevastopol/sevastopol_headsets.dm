/obj/item/device/radio/headset/heads/captain
	name = "commanding officer's headset"
	desc = "The skipper's headset."
	icon_state = "com_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/heads/captain

/obj/item/device/encryptionkey/heads/captain
	name = "commanding officer's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Medical" = 1, "Supply" = 1)