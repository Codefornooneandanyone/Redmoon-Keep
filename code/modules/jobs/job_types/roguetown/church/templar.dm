//shield flail or longsword, tief can be this with red cross

/datum/job/roguetown/templar
	title = "Templar"
	department_flag = CHURCHMEN
	faction = "Station"
	tutorial = "Templars are warriors who have forsaken wealth and title in lieu of service to the church, due to either zealotry or a past shame. They guard the church and its priest, while keeping a watchful eye against heresy and nite-creechers. Within troubled dreams, they wonder if the blood they shed makes them holy or stained."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_VERY_SHUNNED_UP
	allowed_patrons = ALL_CLERIC_PATRONS
	outfit = /datum/outfit/job/roguetown/templar
	min_pq = 2
	max_pq = null
	total_positions = 3
	spawn_positions = 3
	display_order = JDO_TEMPLAR
	give_bank_account = TRUE

/datum/outfit/job/roguetown/templar
	allowed_patrons = ALL_CLERIC_PATRONS

/datum/outfit/job/roguetown/templar/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket
	cloak = /obj/item/clothing/cloak/tabard/crusader/tief
	switch(H.patron.name)
		if("Astrata")
			wrists = /obj/item/clothing/neck/roguetown/psicross/astrata
			if(prob(50))
				head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/astrata
			else
				head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/astrata/alt
			cloak = /obj/item/clothing/cloak/templar/astratan
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if("Noc")
			wrists = /obj/item/clothing/neck/roguetown/psicross/noc
			head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/noc
			cloak = /obj/item/clothing/cloak/tabard/crusader/noc
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if("Dendor")
			wrists = /obj/item/clothing/neck/roguetown/psicross/dendor
			head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/dendor
			cloak = /obj/item/clothing/cloak/tabard/crusader/dendor
			H.cmode_music = 'sound/music/cmode/garrison/CombatForestGarrison.ogg'
		if("Necra")
			wrists = /obj/item/clothing/neck/roguetown/psicross/necra
			if(prob(50))
				head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/necra
			else
				head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/necra/alt
			cloak = /obj/item/clothing/cloak/templar/necran
			H.cmode_music = 'sound/music/cmode/church/CombatGravekeeper.ogg'
		if("Pestra")
			head = /obj/item/clothing/head/roguetown/helmet/heavy/pestrahelm
			wrists = /obj/item/clothing/neck/roguetown/psicross/pestra
			cloak = /obj/item/clothing/cloak/tabard/crusader/pestra
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if("Malum")
			wrists = /obj/item/clothing/neck/roguetown/psicross/malum
			head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/malum
			cloak = /obj/item/clothing/cloak/templar/malummite
			H.cmode_music = 'sound/music/cmode/adventurer/CombatOutlander2.ogg'
		if("Ravox")
			wrists = /obj/item/clothing/neck/roguetown/psicross/ravox
			head = /obj/item/clothing/head/roguetown/helmet/heavy/templar/ravox
			cloak = /obj/item/clothing/cloak/tabard/crusader/ravox
			H.cmode_music = 'sound/music/cmode/adventurer/CombatOutlander2.ogg'
		if("Eora")
			head = /obj/item/clothing/head/roguetown/helmet/heavy/eorahelm
			wrists = /obj/item/clothing/neck/roguetown/psicross/eora
			cloak = /obj/item/clothing/cloak/tabard/crusader/eora
			mask = /obj/item/clothing/mask/rogue/facemask/goldmask
			H.cmode_music = 'sound/music/cmode/church/CombatEora.ogg'
		if("Xylix")
			wrists = /obj/item/clothing/neck/roguetown/psicross/xylix
			H.cmode_music = 'sound/music/combat_lunatic.ogg'
		if("Abyssor")
			head = /obj/item/clothing/head/roguetown/helmet/heavy/abyssorhelm
			cloak = /obj/item/clothing/cloak/abyssortabard
			wrists = /obj/item/clothing/neck/roguetown/psicross/abyssor
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
			H.mind?.adjust_skillrank(/datum/skill/labor/fishing, 3, TRUE)
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/armor
	backl = /obj/item/storage/backpack/rogue/satchel
	switch(H.patron.name)
		if("Necra")
			backpack_contents = list(/obj/item/key/graveyard, /obj/item/key/church)
		if("Xylix")
			backpack_contents = list(/obj/item/key/church, /obj/item/squeeze_me)
		else
			backpack_contents = list(/obj/item/key/church = 1)
	backr = /obj/item/rogueweapon/shield/tower/metal
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
	id = /obj/item/clothing/ring/silver
	gloves = /obj/item/clothing/gloves/roguetown/chain
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		switch(H.patron.name)
			if("Malum")
				H.mind.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
				beltr = /obj/item/rogueweapon/mace/warhammer/steel
			else
				H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
				beltr = /obj/item/rogueweapon/sword/long
		H.change_stat("strength", 3)
		H.change_stat("perception", 2)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", 2)
		H.change_stat("endurance", 2)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

/datum/outfit/job/roguetown/templar/post_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
