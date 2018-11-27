/obj/machinery/telecomms/hub/sevastopol
	id = "Hub"
	network = "sevastopol"
	autolinkers = list("hub", "marlab", "supply", "common", "command", "engineering", "security", "receiver", "broadcaster")

/obj/machinery/telecomms/receiver/sevastopol
	id = "Receiver"
	network = "sevastopol"
	autolinkers = list("receiver")
	freq_listening = list(PUB_FREQ, MED_FREQ, SUP_FREQ, SRV_FREQ, COMM_FREQ, ENG_FREQ, SEC_FREQ)

/obj/machinery/telecomms/bus/sevastopol
	id = "Bus"
	network = "sevastopol"
	freq_listening = list(PUB_FREQ, MED_FREQ, SUP_FREQ, SRV_FREQ, COMM_FREQ, ENG_FREQ, SEC_FREQ)
	autolinkers = list("processor", "marlab", "supply", "common", "command", "engineering", "security")

/obj/machinery/telecomms/processor/sevastopol
	id = "Processor"
	network = "sevastopol"
	autolinkers = list("processor")

/obj/machinery/telecomms/server/sevastopol
	network = "sevastopol"

/obj/machinery/telecomms/server/sevastopol/medical
	id = "Marlab Server"
	freq_listening = list(MED_FREQ)
	channel_tags = list(list(MED_FREQ, "Marlab", COMMS_COLOR_MEDICAL))
	autolinkers = list("marlab")

/obj/machinery/telecomms/server/sevastopol/supply
	id = "Supply Server"
	freq_listening = list(SUP_FREQ)
	channel_tags = list(list(SUP_FREQ, "Supply", COMMS_COLOR_SUPPLY))
	autolinkers = list("supply")

/obj/machinery/telecomms/server/sevastopol/common
	id = "Common Server"
	freq_listening = list(PUB_FREQ)
	channel_tags = list(list(PUB_FREQ, "Common", COMMS_COLOR_COMMON))
	autolinkers = list("common")

/obj/machinery/telecomms/server/sevastopol/command
	id = "Command Server"
	freq_listening = list(COMM_FREQ)
	channel_tags = list(list(COMM_FREQ, "Command", COMMS_COLOR_COMMAND))
	autolinkers = list("command")

/obj/machinery/telecomms/server/sevastopol/engineering
	id = "Engineering Server"
	freq_listening = list(ENG_FREQ)
	channel_tags = list(list(ENG_FREQ, "Engineering", COMMS_COLOR_ENGINEER))
	autolinkers = list("engineering")

/obj/machinery/telecomms/server/sevastopol/security
	id = "Security Server"
	freq_listening = list(SEC_FREQ)
	channel_tags = list(list(SEC_FREQ, "Security", COMMS_COLOR_SECURITY))
	autolinkers = list("security")

/obj/machinery/telecomms/broadcaster/sevastopol
	id = "Broadcaster"
	network = "sevastopol"
	autolinkers = list("broadcaster")
