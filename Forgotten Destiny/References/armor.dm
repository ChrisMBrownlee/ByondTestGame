mob
	var
		Armor
		ArmorOn=0
obj
	var
		FemaleOnly=0
		MaleOnly=0
		Class=""
		Effect="Nothing"
	armor
		icon='armor2.dmi'
		Subscriber
			name="Subscriber Suit"
			icon_state="Subscriber"
			Value=10
			Guard=10
			NSUB=1
		SlayerPlatemail
			name="Slayer Platemail"
			icon_state="Slayer Platemail"
			Value=300000
			Guard=125
			PVPVALUE=5000
			RLVL=100
		ClothShirt
			name = "Cloth Shirt"
			icon_state = "Cloth Shirt"
			Value = 10
			Guard = 5
		TravelersVest
			name = "Travelers Vest"
			icon_state = "Travelers Vest"
			Value = 50
			Guard = 10
		AnimalHideShirt
			name = "Animal Hide Shirt"
			icon_state = "Animal Hide Shirt"
			Value = 300
			Guard = 15
		VestofBlazar
			name = "Vest of Blazar"
			icon_state = "Vest of Blazar"
			Value = 600
			Guard = 25
		AndrigasRobe
			name = "Andrigas Robe"
			icon_state = "Andrigas Robe"
			Value = 15000
			Guard = 77
			Effect="Heal1"
		SyphonSuit
			name = "Syphon Suit"
			icon_state = "Syphon Suit"
			Value = 27500
			Guard = 60
			Effect="LifeDrain"
		SteelPlatemail
			name = "Steel Platemail"
			icon_state = "Steel Platemail"
			Value = 35000
			Guard = 100
		HeavyGoldPlatemail
			name = "Heavy Gold Platemail"
			icon_state = "Heavy Gold Platemail"
			Value = 175000
			Guard = 145
			Effect="Heal3"
		TunicoftheFool
			name = "Tunic of the Fool"
			icon_state = "Tunic of the Fool"
			Value = 1420
			Guard = 50
		MagicRobe
			name = "Magic Robe"
			icon_state = "Magic Robe"
			Value = 151000
			Guard = 65
		DarkMagicRobe
			name = "Dark Magic Robe"
			icon_state = "Dark Magic Robe"
			Value = 151000
			Guard = 65
		TransportArmor
			name = "Transport Armor"
			icon_state = "Transport Armor"
			Value = 2000
			Guard = 45
		DragonCape
			name = "Dragon Cape"
			icon_state = "Dragon Cape"
			Value = 350000
			Guard = 110
		HolyGown
			name = "Holy Gown"
			icon_state = "Holy Gown"
			Value = 38000
			Guard = 75
			Effect="Heal1"
		SantaSuit
			name = "Santa Suit"
			icon_state = "Santa Suit"
			Value = 500
			Guard = 70
			Effect="Heal2"
		SapphirePlatemail
			name = "Sapphire Platemail"
			icon_state = "Sapphire Platemail"
			Value = 26000
			Guard = 90
		RubyRobe
			name = "Ruby Robe"
			icon_state = "Ruby Robe"
			Value = 36000
			Guard = 90
		DoomsdaySuit
			name = "Doomsday Suit"
			icon_state = "Doomsday Suit"
			Value = 115000
			Guard = 110
			Effect="LifeDrain2"
		HeroicRobe
			name = "Heroic Robe"
			icon_state = "Heroic Robe"
			Value = 55000
			Guard = 115
		FlowerGown
			name = "Flower Gown"
			icon_state = "Flower Gown"
			Value = 1340
			Guard = 100
			FemaleOnly=1
		Grapevine
			name = "Grapevine"
			icon_state = "Grapevine"
			Value = 335
			Guard = 32
			FemaleOnly=1
		LightChainmail
			name = "Light Chainmail"
			icon_state = "Light Chainmail"
			Value = 20000
			Guard = 89
		FadedTunic
			name = "Faded Tunic"
			icon_state = "Faded Tunic"
			Value = 40000
			Guard = 80
		BronzeKnightArmor
			name = "Bronze Knight Armor"
			icon_state = "Bronze Knight Armor"
			Value = 105000
			Guard = 105
		KnightArmor
			name = "Knight Armor"
			icon_state = "Knight Armor"
			Value = 95000
			Guard = 95
		ShadowGarb
			name = "Shadow Garb"
			icon_state = "Shadow Garb"
			Value = 1650
			Guard = 53
		GoldenKnightArmor
			name = "Golden Knight Armor"
			icon_state = "Golden Knight Armor"
			Value = 125000
			Guard = 125
		AquaTunic
			name = "Aqua Tunic"
			icon_state = "Aqua Tunic"
			Value = 10000
			Guard = 85
		ClownCostume
			name = "Clown Costume"
			icon_state = "Clown Costume"
			Value = 5150
			Guard = 55
		Matzel
			name = "Matzel"
			icon_state = "Matzel"
			Value = 10050
			Guard = 68
		WarriorSuit
			name = "Warrior Suit"
			icon_state = "Warrior Suit"
			Value = 260000
			Guard = 105
		WyvernTunic
			name = "Wyvern Tunic"
			icon_state = "Wyvern Tunic"
			Value = 11250
			Guard = 100
			Effect="DragonShoot"
		BlizzardToga
			name = "Blizzard Toga"
			icon_state = "Blizzard Toga"
			Value = 42000
			Guard = 95
			Effect="FREEZE"
		ElvenRobe
			name = "Elven Robe"
			icon_state = "Elven Robe"
			Value = 550000
			Effect="Heal2"
			Guard = 120
			Class = "Shapeshifter Bard Drifter Barbarian"
		GoldPlatemail
			name = "Gold Platemail"
			icon_state = "Gold Platemail"
			Value =550000
			Guard = 120
			Class = "Cleric Elementalist Necromancer"
		NinjaKimono
			name = "Ninja Kimono"
			icon_state = "Ninja Kimono"
			Value = 50000
			Guard = 105
			Effect="Heal3"
		GuildMaster
			name = "Guild Master Plate"
			icon_state = "GuildMaster"
			Value = 1500000
			Guard = 115
			Effect="Heal1"

		DblClick()
			if(src in usr.contents)
				if(src.NSUB==1)
					if(usr.SUBACCESS==0)
						usr<<"You must be a subscriber to wear this."
						return
				if(usr.SelectedStance!="Normal")
					usr<<"You can only change equipment in the normal stance."
					return
				if(usr.Level<src.RLVL)
					usr<<"You are not powerful enough to equip this."
					return
				if(src.icon_state=="GuildMaster")
					if(usr.GLEAD==0)
						usr<<"You must be a Guild Master to wear this."
						return
				if(src.Class)
					if(findtext(src.Class,usr.Class)==0)
						usr<<"Your class cannot wear this type of equipment."
						return
				if(src.FemaleOnly==1)
					if(usr.Gender=="male")
						usr<<"This is for females only."
						return
				if(src.MaleOnly==1)
					if(usr.Gender=="female")
						usr<<"This is for males only."
						return
				if(usr.ArmorOn==1)
					if(src.suffix=="<font color=blue>Equipped")
						usr.ArmorEffect="Nothing"
						src.suffix=""
						usr.ArmorOn=0
						usr.Armor=null
						usr.AddedGuard-=src.Guard
						if(src.name=="Vest of Blazar")
							usr.FireResist=0
						ResetOverlays(usr)
					else
						if(usr.shopping==1)
							..()
						else
							for(var/obj/armor/O in usr.contents)
								if(O.suffix=="<font color=blue>Equipped")
									O.suffix=""
									usr.AddedGuard-=O.Guard
									if(O.name=="Vest of Blazar")
										usr.FireResist=0
									usr.AddedGuard+=src.Guard
									usr.Armor=src.icon_state
									ResetOverlays(usr)
									src.suffix="<font color=blue>Equipped"
									usr.ArmorEffect=src.Effect
									if(src.name=="Vest of Blazar")
										usr.FireResist=1
				else
					if(usr.shopping==1)
						..()
					else
						usr.Armor=src.icon_state
						usr.ArmorOn=1
						usr.AddedGuard+=src.Guard
						usr.ArmorEffect=src.Effect
						if(src.name=="Vest of Blazar")
							usr.FireResist=1
						src.suffix="<font color=blue>Equipped"
						ResetOverlays(usr)
			else
				..()
