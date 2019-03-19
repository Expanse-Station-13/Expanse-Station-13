/datum/species/human/gravworlder
	name = SPECIES_GRAVWORLDER
	name_plural = "Grav-Adapted Humans"
	description = "Heavier and stronger than a baseline human, gravity-adapted people have \
	thick radiation-resistant skin with a high lead content, denser bones, and recessed \
	eyes beneath a prominent brow in order to shield them from the glare of a dangerously \
	bright, alien sun. This comes at the cost of mobility, flexibility, and increased \
	oxygen requirements to support their robust metabolism."
	icobase =     'icons/mob/human_races/species/human/subspecies/gravworlder_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/gravworlder_preview.dmi'
	health_hud_intensity = 3

	flash_mod =     0.9
	oxy_mod =       1.1
	radiation_mod = 0.5
	brute_mod =     0.85
	slowdown =      1

	descriptors = list(
		/datum/mob_descriptor/height = -1,
		/datum/mob_descriptor/build = 1
		)

	spawn_flags = SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_GRAV | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/datum/species/human/spacer
	name = SPECIES_SPACER
	name_plural = "Space-Adapted Humans"
	description = "Lithe and frail, these sickly folk were engineered for work in environments that \
	lack both light and atmosphere. As such, they're quite resistant to asphyxiation as well as \
	toxins, but they suffer from weakened bone structure and a marked vulnerability to bright lights."
	icobase =     'icons/mob/human_races/species/human/subspecies/spacer_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/spacer_preview.dmi'

	oxy_mod =   0.8
	toxins_mod =   0.9
	flash_mod = 1.2
	brute_mod = 1.1
	burn_mod =  1.1
	darksight_range = 6
	darksight_tint = DARKTINT_MODERATE

	descriptors = list(
		/datum/mob_descriptor/height,
		/datum/mob_descriptor/build = -1
		)

	spawn_flags = SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_SPCR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/datum/species/human/vatgrown
	name = SPECIES_VATGROWN
	name_plural = "Vat-Grown Humans"
	description = "With cloning on the forefront of human scientific advancement, cheap mass production \
	of bodies is a very real and rather ethically grey industry. Vat-grown humans tend to be paler than \
	baseline, with no appendix and fewer inherited genetic disabilities, but a weakened metabolism."
	icobase =     'icons/mob/human_races/species/human/subspecies/vatgrown_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/vatgrown_preview.dmi'

	toxins_mod =   1.1
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(CULTURE_HUMAN_VATGROWN)
	)
	default_cultural_info = list(
		TAG_CULTURE = CULTURE_HUMAN_VATGROWN
	)

	spawn_flags = SPECIES_IS_WHITELISTED

/datum/species/human/belter
	name = "Belter"
	name_plural = "Belters"
	description = "'No laws in Ceres. Just cops.'<br/><br/>\
	- Josephus Miller, Star Helix Security<br/><br/>\
	\
	Like the Martians, the people of the Belt had to eke out their existence in their new homes from nothing. \
	Unlike on Mars, the Belt has remained to dispersed and disunited to become anything beyond the collection of poor colonies it remains today.<br/><br/>\
	\
	Virtually nowhere in the Belt are its denizens free from the colonial authorities of Mars and the United Nations, or from their many influential corporations. \
	Belters have no stake in political arrangement that dominates their lives, and no control over their economy.\
	\
	That this is a familiar story in the annals of human history is cold comfort to Belters,<br/><br/>\
	who resent working endlessly in a system that utterly fails to provide for their needs or leave them space to better their own lives. <br/><br/>\
	\
	Few Belters are able to make it far beyond the slim margin of survival that defines life in the belt, \
	where even air is a commodity, and the result has been over a hundred years of turmoil. <br/><br/>\
	\
	Belters have always resisted the oppressive political and economic system that keeps them down, and their futures are in their hands, \
	not those of New York or Londres Nova."
	icobase =     'icons/mob/human_races/species/human/subspecies/vatgrown_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/vatgrown_preview.dmi'

	oxy_mod =   0.7
	toxins_mod =   0.6
	flash_mod = 1.3
	brute_mod = 1.3
	burn_mod =  1.3
	darksight_range = 6
	darksight_tint = DARKTINT_MODERATE

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = -1
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(CULTURE_HUMAN_BELTER)
	)
	default_cultural_info = list(
		TAG_CULTURE = CULTURE_HUMAN_BELTER
	)

/datum/species/human/martian
	name = "Martian"
	name_plural = "Martians"
	description = "'It would have been nice to see an ocean on Mars.'<br/><br/>\
-Lieutenant K. Lopez, Martian Congressional Republic Navy<br/><br/>\
\
The Martians are alone among the many civilizations that have risen and fallen over the course of human history in that they have built their entire world, from start to finish. <br/><br/>\
\
Before the first settlers touched down in the Mariner Valley in 2176, Mars had never supported permanent human habitation.<br/><br/>\
\
Everything, from the air they breathed, to the water they drank, to their primitive shelters,\
 were established through their efforts. Human civilization did not evolve on Mars - it was engineered there.<br/><br/>\
\
The frontier spirit of these early settlers endures in today's Mars. \
Martians have toiled for every new square meter of ground they have made livable beneath or upon the surface of their planet, \
and they will never hesitate to remind you of it.<br/><br/>\
\
The very possibility of human civilization on Mars is one of humanity's greatest achievements,\
but the Martians will not be content until they have built a sustainable, independent biosphere on their planet.<br/><br/>\
\
This may be the loftiest goal ever set by a human society, but it is the only way for the  Martian people to achieve true and lasting ecological and economic independence from Earth, \
and so the Martians continue to invest billions of dollars and man-hours on it every year."

	icobase =     'icons/mob/human_races/species/human/body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/preview.dmi'

	oxy_mod =   0.9
	toxins_mod =   0.6
	flash_mod = 1.1
	brute_mod = 1.1
	burn_mod =  1.1
	darksight_range = 2
	darksight_tint = DARKTINT_MODERATE

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = -1
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(CULTURE_HUMAN_MARTIAN)
	)
	default_cultural_info = list(
		TAG_CULTURE = CULTURE_HUMAN_MARTIAN
	)



/datum/species/human/tritonian
	name = SPECIES_TRITONIAN
	name_plural = "Tritonians"
	description = "Of all human gene-adapts, the Tritonian genotype is probably the most wildly divergent from \
	baseline humanity. Conceived alongside dolphin and octopus genetic engineering projects, this genotype \
	is adapted for amphibious life on flooded ocean moons like Triton, but is equally comfortable in a range \
	of aquatic and non-aquatic environments. Their heavy, seal-like bodies have sharp teeth, recessed eyes, \
	and thick blue-grey skin with a layer of dense blubber for insulation and protection, but they find \
	it difficult to move quickly on land due to their bulk."
	icobase =     'icons/mob/human_races/species/human/subspecies/tritonian_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/tritonian_preview.dmi'
	slowdown = 1

	oxy_mod =             0.5
	brute_mod =           0.8
	toxins_mod =          1.15
	radiation_mod =       1.15
	body_temperature =    302
	water_soothe_amount = 5

	heat_level_1 = 350
	heat_level_2 = 380
	heat_level_3 = 900

	cold_level_1 = 220
	cold_level_2 = 160
	cold_level_3 = 100

	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/sharp
	)

	descriptors = list(
		/datum/mob_descriptor/height,
		/datum/mob_descriptor/build = 1
		)

	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_TRITON | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR
	spawn_flags = SPECIES_IS_WHITELISTED