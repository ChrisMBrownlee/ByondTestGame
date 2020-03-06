mob
	var
		Weapon
		WeaponOn=0
		WeaponType="Hand2Hand"

proc
	AddWeapon(mob/M)
		M.overlays+=image('WeaponOverlay.dmi',icon_state = "[M.Weapon]1")




obj
	var
		PowerAdd=0
		Delay=0
		ToWT="Hand2Hand"
		overlayiconstate
		overlayiconstate2
		RLVL=0
		Iskey

obj
	weapons
		icon='weapons.dmi'

		HealingStaff
			name="Staff of Healing"
			desc="This is an ancient weapon its said that this staff has been embued with magical healing powers"
			icon_state="Staff of Healing"
			overlayiconstate="Staff of Healing1"
			overlayiconstate2="Staff of Healing2"
			ToWT = "Bashing"
			Value=250000
			PowerAdd=75
			Delay=10
			RLVL=50
			Class="Cleric"
			Effect="HealingStaff"

		Draco_Claws
			name="Dracovern Claws"
			icon_state="Draco Claws"
			Value=70000
			PowerAdd=36
			Delay=8
			ToWT="Hand2Hand"
			overlayiconstate = "Draco Claws1"
			overlayiconstate2 = "Draco Claws2"
		Wooden_Bow
			name="Wooden Bow"
			icon_state="Inferno Bow"
			Value=20
			PowerAdd=3
			Delay=5
			ToWT="Missile"
		Dagger
			name = "Dagger"
			icon_state = "Dagger"
			Value = 20
			PowerAdd = 4
			Delay = 16
			ToWT = "Piercing"
		ThiefDagger
			name = "Thief Dagger"
			icon_state = "Dagger"
			overlayiconstate = "Dagger1"
			overlayiconstate2 = "Dagger2"
			Value = 2
			PowerAdd = 50
			Delay = 12
			ToWT = "Piercing"
		FineSteelDagger
			name = "Fine Steel Dagger"
			icon_state = "Fine Steel Dagger"
			overlayiconstate = "Fine Steel Dagger1"
			overlayiconstate2 = "Fine Steel Dagger2"
			Value = 20000
			PowerAdd = 50
			Delay = 10
			ToWT = "Piercing"
		FlameDagger
			name = "Flame Dagger"
			icon_state = "Flame Dagger"
			overlayiconstate = "Flame Dagger1"
			overlayiconstate2 = "Flame Dagger2"
			Value = 2
			PowerAdd = 24
			Delay = 17
			ToWT = "Piercing"

		SkullStaff
			name = "Skull Staff"
			icon_state = "Skull Staff"
			overlayiconstate = "s1"
			overlayiconstate2 = "s2"
			Value = 2
			PowerAdd = 185
			Delay = 20
			ToWT = "Bashing"
		Lariat
			name = "Lariat"
//			icon_state = "Skull Staff"
			Value = 2
			PowerAdd = 70
			Delay = 18
			ToWT = "Piercing"
		RazorDagger
			name = "Razor Dagger"
			icon_state = "Razor Dagger"
			Value = 2
			PowerAdd = 100
			Delay = 13.5
			ToWT = "Piercing"

		HeatedDagger
			name = "Flame Dagger"
			icon_state = "Flame Dagger"
			overlayiconstate = "Flame Dagger1"
			overlayiconstate2 = "Flame Dagger2"
			Value = 2
			PowerAdd = 65
			Delay = 17
			ToWT = "Piercing"
		ScaldingDagger
			name = "Scalding Dagger"
			icon_state = "Flame Dagger"
			overlayiconstate = "Flame Dagger1"
			overlayiconstate2 = "Flame Dagger2"
			Value = 550000
			PowerAdd = 95
			Delay = 17
			ToWT = "Piercing"
		PoisonDagger
			name = "Poison Dagger"
			icon_state = "Poison Dagger"
			overlayiconstate = "Poison Dagger1"
			overlayiconstate2 = "Poison Dagger2"
			Value = 1100
			PowerAdd = 24
			Delay = 17
			ToWT = "Piercing"
		VenomDagger
			name = "Venom Dagger"
			icon_state = "Poison Dagger"
			overlayiconstate = "Poison Dagger1"
			overlayiconstate2 = "Poison Dagger2"
			Value = 2
			PowerAdd = 65
			Delay = 17
			ToWT = "Piercing"
		ToxicDagger
			name = "Toxic Dagger"
			icon_state = "Poison Dagger"
			overlayiconstate = "Poison Dagger1"
			overlayiconstate2 = "Poison Dagger2"
			Value = 2
			PowerAdd = 95
			Delay = 17
			ToWT = "Piercing"
		ShortSword
			name = "Short Sword"
			icon_state = "Short Sword"
			overlayiconstate = "Short Sword1"
			overlayiconstate2 = "Short Sword2"
			Value = 150
			PowerAdd = 8
			Delay = 17
			ToWT = "Slicing"
		Sword
			name = "Sword"
			icon_state = "Sword"
			overlayiconstate = "Sword1"
			overlayiconstate2 = "Sword2"
			Value = 400
			PowerAdd = 12
			Delay = 20
			ToWT = "Slicing"
		LongSabre
			name = "Long Sabre"
			icon_state = "Long Sabre"
			overlayiconstate = "Long Sabre1"
			overlayiconstate2 = "Long Sabre2"
			Value = 600
			PowerAdd = 16
			Delay = 21
			ToWT = "Slicing"
		Broadsword
			name = "Broadsword"
			icon_state = "Broadsword"
			overlayiconstate = "Broadsword1"
			overlayiconstate2 = "Broadsword2"
			Value = 750
			PowerAdd = 20
			Delay = 22
			ToWT = "Slicing"
			Effect="Stun"
		Katana
			name = "Katana"
			icon_state = "Katana"
			overlayiconstate = "Katana1"
			overlayiconstate2 = "Katana2"
			Value = 990
			PowerAdd = 17
			Delay = 10
			ToWT = "Slicing"
		Gladius
			name = "Gladius"
			icon_state = "Gladius"
			overlayiconstate = "Gladius1"
			overlayiconstate2 = "Gladius2"
			Value = 2
			PowerAdd = 60
			Delay = 15
			ToWT = "Slicing"
		InfernoBlade
			name = "Inferno Blade"
			icon_state = "Inferno Blade"
			overlayiconstate = "Inferno Blade1"
			overlayiconstate2 = "Inferno Blade2"
			Value = 2
			PowerAdd = 150
			Delay = 15
			ToWT = "Slicing"
			Effect="InfernoBlade"
			RLVL=150
		MonsoonBlade
			name = "Monsoon Blade"
			icon_state = "Monsoon Blade"
			overlayiconstate = "Monsoon Blade1"
			overlayiconstate2 = "Monsoon Blade2"
			Value = 2
			PowerAdd = 150
			Delay = 15
			ToWT = "Slicing"
			Effect="RAIN ROD"
			RLVL=150
		GlacierBlade
			name = "Glacier Blade"
			icon_state = "Glacier Blade"
			overlayiconstate = "Glacier Blade1"
			overlayiconstate2 = "Glacier Blade2"
			Value = 2
			PowerAdd = 150
			Delay = 15
			ToWT = "Slicing"
			RLVL=150
			Effect="Frost"
		Halberd
			name = "Halberd"
			icon_state = "Halberd"
			overlayiconstate = "Halberd1"
			overlayiconstate2 = "Halberd2"
			Value = 1800
			PowerAdd = 48
			Delay = 14
			ToWT = "Crushing"
		Basher
			name = "Basher"
			icon_state = "Basher"
			overlayiconstate = "Basher1"
			overlayiconstate2 = "Basher2"
			Value = 2
			PowerAdd = 35
			Delay = 29
			ToWT = "Bashing"
			Effect="Basher"
		MintHammer
			name = "Mint Hammer"
			icon_state = "Mint Hammer"
			overlayiconstate = "Mint Hammer1"
			overlayiconstate2 = "Mint Hammer2"
			Value = 2
			PowerAdd = 80
			Delay = 15
			ToWT = "Bashing"
		GroundMallet
			name = "Ground Mallet"
			icon_state = "Ground Mallet"
			overlayiconstate = "Ground Mallet1"
			overlayiconstate2 = "Ground Mallet2"
			Value = 35000
			PowerAdd = 85
			Delay = 29
			ToWT = "Bashing"
		SciusMallet
			name = "Scius Mallet"
			icon_state = "Scius Mallet"
			overlayiconstate = "Scius Mallet1"
			overlayiconstate2 = "Scius Mallet2"
			Value = 20000
			PowerAdd = 76
			Delay = 24
			ToWT = "Bashing"
		LightningStave
			name = "Lightning Stave"
			icon_state = "Lightning Stave"
			overlayiconstate = "Lightning Stave1"
			overlayiconstate2 = "Lightning Stave2"
			Value = 2
			PowerAdd = 150
			Delay = 15
			ToWT = "Bashing"
			RLVL=150
		Undique
			name = "Undique"
			icon_state = "Undique"
			overlayiconstate = "Undique1"
			overlayiconstate2 = "Undique2"
			Value = 2
			PowerAdd = 55
			Delay = 14
			ToWT = "Bashing"
		GoldenHammer
			name = "Golden Hammer"
			icon_state = "Golden Hammer"
			overlayiconstate = "Golden Hammer1"
			overlayiconstate2 = "Golden Hammer2"
			Value = 2
			PowerAdd = 120
			Delay = 30
			ToWT = "Bashing"
		DragonWingblade
			name = "Dragon Wingblade"
			icon_state = "Dragon Wingblade"
			overlayiconstate = "Dragon Wingblade1"
			overlayiconstate2 = "Dragon Wingblade2"
			Value = 20000
			PowerAdd = 105
			Delay = 14.5
			ToWT = "Slicing"
		CrystalWingblade
			name = "Crystal Wingblade"
			icon_state = "Crystal Wingblade"
			overlayiconstate = "Crystal Wingblade1"
			overlayiconstate2 = "Crystal Wingblade2"
			Value = 40000
			PowerAdd = 135
			Delay = 12.5
			ToWT = "Slicing"
			Effect="FrostBlade"


		Sawblade
			name = "Sawblade"
			icon_state = "Sawblade"
			overlayiconstate = "Sawblade1"
			overlayiconstate2 = "Sawblade2"
			Value = 1100
			PowerAdd = 28
			Delay = 22
			ToWT = "Slicing"
		GiantAxe
			name = "Giant Axe"
			icon_state = "Giant Axe"
			overlayiconstate = "Giant Axe1"
			overlayiconstate2 = "Giant Axe2"
			Value = 1450
			PowerAdd = 80
			Delay = 36
			ToWT = "Crushing"
		WingedHammer
			name = "Winged Hammer"
			icon_state = "Winged Hammer"
			overlayiconstate = "Winged Hammer1"
			overlayiconstate2 = "Winged Hammer2"
			Value = 2
			PowerAdd = 120
			Delay = 16.5
			ToWT = "Bashing"
		WingedDevilSword
			name = "Winged Devil Sword"
			icon_state = "Winged Devil Sword"
			overlayiconstate = "Winged Devil Sword1"
			overlayiconstate2 = "Winged Devil Sword2"
			Value = 2
			PowerAdd = 130
			Delay = 17.5
			ToWT = "Slicing"
		DemonicBlade
			name = "Demonic Blade"
			icon_state = "Demonic Blade"
			overlayiconstate = "Demonic Blade1"
			overlayiconstate2 = "Demonic Blade2"
			Value = 2
			PowerAdd = 170
			Delay = 17
			ToWT = "Slicing"
		NecromancerStaff
			name = "Necromancer Staff"
			icon_state = "Necromancer Staff"
			overlayiconstate = "Necromancer Staff1"
			overlayiconstate2 = "Necromancer Staff2"
			Value = 2
			PowerAdd = 85
			Delay = 15
			ToWT = "Bashing"
		StaffoftheSun
			name = "Staff of the Sun"
			icon_state = "Staff of the Sun"
			overlayiconstate = "Staff of the Sun1"
			overlayiconstate2 = "Staff of the Sun2"
			Value = 2
			PowerAdd = 75
			Delay = 14.5
			ToWT = "Bashing"
		StaffoftheMoon
			name = "Staff of the Moon"
			icon_state = "Staff of the Moon"
			overlayiconstate = "Staff of the Moon1"
			overlayiconstate2 = "Staff of the Moon2"
			Value = 2
			PowerAdd = 75
			Delay = 14.5
			ToWT = "Bashing"
		AndrigasStaff
			name = "Andrigas Staff"
			icon_state = "Andrigas Staff"
			overlayiconstate = "Andrigas Staff1"
			overlayiconstate2 = "Andrigas Staff2"
			Value = 2
			PowerAdd = 50
			Delay = 50
			ToWT = "Bashing"
		LeatherGloves
			name = "Leather Gloves"
			icon_state = "Leather Gloves"
			overlayiconstate = "Leather Gloves1"
			overlayiconstate2 = "Leather Gloves2"
			Value = 10
			PowerAdd = 5
			Delay = 10
			ToWT = "Hand2Hand"
		SteelGauntlets
			name = "Steel Gauntlets"
			icon_state = "Steel Gauntlets"
			overlayiconstate = "Steel Gauntlets1"
			overlayiconstate2 = "Steel Gauntlets2"
			Value = 200
			PowerAdd = 35
			Delay = 21
			ToWT = "Hand2Hand"
		SwiftClaws
			name = "Swift Claws"
			icon_state = "Swift Claws"
			overlayiconstate = "Swift Claws1"
			overlayiconstate2 = "Swift Claws2"
			Value = 2
			PowerAdd = 5
			Delay = 4
			ToWT = "Hand2Hand"
		CatClaws
			name = "Cat Claws"
			icon_state = "Cat Claws"
			overlayiconstate = "Cat Claws1"
			overlayiconstate2 = "Cat Claws2"
			Value = 40000
			PowerAdd = 20
			Delay = 7.5
			ToWT = "Hand2Hand"
		DragonClaws
			name = "Dragon Claws"
			icon_state = "Dragon Claws"
			overlayiconstate = "Dragon Claws1"
			overlayiconstate2 = "Dragon Claws2"
			Value = 95000
			PowerAdd = 50
			Delay = 9.5
			ToWT = "Hand2Hand"
		EnchantedGloves
			name = "Enchanted Gloves"
			icon_state = "Enchanted Gloves"
			overlayiconstate = "Enchanted Gloves1"
			overlayiconstate2 = "Enchanted Gloves2"
			Value = 2
			PowerAdd = 5
			Delay = 10
			ToWT = "Hand2Hand"
		FeatheredWand
			name = "Feathered Wand"
			icon_state = "Feathered Wand"
			overlayiconstate = "Feathered Wand1"
			overlayiconstate2 = "Feathered Wand2"
			Value = 1100000
			PowerAdd = 45
			Delay = 12
			ToWT = "Piercing"
		ElvenWand
			name = "Elven Wand"
			icon_state = "Elven Wand"
			overlayiconstate = "Elven Wand1"
			overlayiconstate2 = "Elven Wand2"
			Value = 1500000
			PowerAdd = 60
			Delay = 12
			ToWT = "Piercing"
		GoldWand
			name = "Gold Wand"
			icon_state = "Gold Wand"
			overlayiconstate = "Gold Wand1"
			overlayiconstate2 = "Gold Wand2"
			Value = 2000000
			PowerAdd = 95
			Delay = 12
			ToWT = "Piercing"
		TaintedWand
			name = "Tainted Wand"
			icon_state = "Tainted Wand"
			overlayiconstate = "Tainted Wand1"
			overlayiconstate2 = "Tainted Wand2"
			Value = 1500000
			PowerAdd = 60
			Delay = 11.5
			ToWT = "Piercing"
		BookoftheDead
			name = "Book of the Dead"
			icon_state = "Book of the Dead"
			overlayiconstate = "Book of the Dead1"
			overlayiconstate2 = "Book of the Dead2"
			Value = 1500000
			PowerAdd = 75
			Delay = 13
			ToWT = "Hand2Hand"
		MechanicsGloves
			name = "Mechanics Gloves"
			icon_state = "Mechanics Gloves"
			overlayiconstate = "Mechanics Gloves1"
			overlayiconstate2 = "Mechanics Gloves2"
			Value = 1500000
			PowerAdd = 45
			Delay = 9
			ToWT = "Hand2Hand"
		BloodAxe
			name = "Blood Axe"
			icon_state = "Blood Axe"
			overlayiconstate = "Blood Axe1"
			overlayiconstate2 = "Blood Axe2"
			Value = 1500000
			PowerAdd = 115
			Delay = 17
			ToWT = "Crushing"
		StarBlade
			name = "Star Blade"
			icon_state = "Star Blade"
			overlayiconstate = "Star Blade1"
			overlayiconstate2 = "Star Blade2"
			Value = 2
			PowerAdd = 90
			Delay = 13.5
			ToWT = "Slicing"
		LifeStaff
			name = "Life Staff"
			icon_state = "Life Staff"
			overlayiconstate = "Life Staff1"
			overlayiconstate2 = "Life Staff2"
			Value = 2
			PowerAdd = 5
			Delay = 10
			ToWT = "Bashing"
		BoxingGloves
			name = "Boxing Gloves"
			icon_state = "Boxing Gloves"
			overlayiconstate = "Boxing Gloves1"
			overlayiconstate2 = "Boxing Gloves2"
			Value = 45000
			PowerAdd = 41
			Delay = 11
			ToWT = "Hand2Hand"
			Effect="Stun2"
		Staff
			name = "Staff"
			icon_state = "Staff"
			overlayiconstate = "Staff1"
			overlayiconstate2 = "Staff2"
			Value = 500
			PowerAdd = 35
			Delay = 18
			ToWT = "Bashing"
		QuarterStaff
			name = "QuarterStaff"
			icon_state = "QuarterStaff"
			overlayiconstate = "QuarterStaff1"
			overlayiconstate2 = "QuarterStaff2"
			Value = 2
			PowerAdd = 5
			Delay = 10
			ToWT = "Bashing"
		BurstStaff
			name = "Burst Staff"
			icon_state = "Burst Staff"
			overlayiconstate = "Burst Staff1"
			overlayiconstate2 = "Burst Staff2"
			Value = 2
			PowerAdd = 155
			Delay = 22.5
			ToWT = "Bashing"
		Bladeofelement
			name = "Blade of Elements"
			icon_state = "Green Bladed Broadsword"
			overlayiconstate = "Green Bladed Broadsword1"
			overlayiconstate2 = "Green Bladed Broadsword2"
			Value = 75000
			PowerAdd = 59
			Delay = 13.5
			ToWT = "Slicing"
		FrostAxe
			name = "Frost Axe"
			icon_state = "Frost Axe"
			overlayiconstate = "Frost Axe1"
			overlayiconstate2 = "Frost Axe2"
			Value = 2
			PowerAdd = 5
			Delay = 10
			ToWT = "Crushing"
		IronMallet
			name = "Iron Mallet"
			icon_state = "Iron Mallet"
			overlayiconstate = "Iron Mallet1"
			overlayiconstate2 = "Iron Mallet2"
			Value = 2
			PowerAdd = 100
			Delay = 27.5
			ToWT = "Bashing"
		DragonToothDagger
			name = "Dragon Tooth Dagger"
			icon_state = "Dragon Tooth Dagger"
			overlayiconstate = "Dragon Tooth Dagger1"
			overlayiconstate2 = "Dragon Tooth Dagger2"
			Value = 2
			PowerAdd = 65
			Delay = 15
			ToWT = "Piercing"
		DisfigurementStaff
			name = "Disfigurement Staff"
			icon_state = "Disfigurement Staff"
			overlayiconstate = ""
			overlayiconstate2 = ""
			Value = 1500000
			PowerAdd = 70
			Delay = 12.5
			ToWT = "Bashing"
		HarpofAmbush
			name = "Harp of Ambush"
			icon_state = "Harp of Ambush"
			overlayiconstate = ""
			overlayiconstate2 = ""
			Value = 1500000
			PowerAdd = 75
			Delay = 10
			ToWT = "Hand2Hand"
			Class="Bard"
			Effect="Harp"
		EnchantedStaff
			name = "Enchanted Staff"
			icon_state = "Enchanted Staff"
			overlayiconstate = ""
			overlayiconstate2 = ""
			Value = 1500000
			PowerAdd = 80
			Delay = 13
			ToWT = "Bashing"
		Bow
			name = "Bow"
			icon_state = "Bow"
			PowerAdd = 0
			Delay = 15
			Value = 2
			ToWT = "Missile"
		ForestBow
			name = "Forest Bow"
			icon_state = "Forest Bow"
			PowerAdd = 0
			Delay = 15
			Value = 2
			ToWT = "Missile"
		InfernoBow
			name = "Inferno Bow"
			icon_state = "Inferno Bow"
			PowerAdd = 0
			Delay = 15
			Value = 2
			ToWT = "Missile"









		DblClick()
			if(src in usr.contents)
				if(usr.SelectedStance!="Normal")
					usr<<"You can only change equipment in the normal stance."
					return
				if(usr.shopping==1)
					if(src.suffix=="<font color=blue>Equipped")
						src.suffix=""
						usr.WeaponOn=0
						usr.Weapon=null
						usr.WeaponType="Hand2Hand"
						usr.AddedPower-=src.PowerAdd
						usr.AddedDelay-=src.Delay
						usr.WeaponEffect="Nothing"
						if(usr.AddedPower<0)
							usr.AddedPower=0
						ResetOverlays(usr)
					..()
				else
					if(src.Class)
						if(findtext(src.Class,usr.Class)==0)
							usr<<"Your class cannot wear this type of weapon."
							return
					if(usr.Level<src.RLVL)
						usr<<"You are not powerful enough to equip this."
						return
					if(usr.WeaponOn==1)
						if(src.suffix=="<font color=blue>Equipped")
							src.suffix=""
							usr.WeaponOn=0
							usr.Weapon=null
							usr.WeaponType="Hand2Hand"
							usr.AddedPower-=src.PowerAdd
							usr.AddedDelay-=src.Delay
							usr.WeaponEffect="Nothing"
							if(usr.AddedPower<0)
								usr.AddedPower=0
							ResetOverlays(usr)
						else
							if(usr.shopping==1)
								..()
							else
								for(var/obj/weapons/O in usr.contents)
									if(O.suffix=="<font color=blue>Equipped")
										if(src.Iskey)
											if(src.Iskey!=usr.key)
												usr<<"You do not own this weapon."
												return
										O.suffix=""
										usr.AddedDelay-=O.Delay
										usr.AddedPower-=O.PowerAdd
										if(usr.AddedPower<0)
											usr.AddedPower=0
										usr.Weapon=src.icon_state
										ResetOverlays(usr)
										src.suffix="<font color=blue>Equipped"
										usr.AddedPower+=src.PowerAdd
										usr.AddedDelay+=src.Delay
										usr.WeaponType=src.ToWT
										usr.WeaponEffect=src.Effect
					else
						if(usr.shopping==1)
							..()
						else
							if(src.Iskey)
								if(src.Iskey!=usr.key)
									usr<<"You do not own this weapon."
									return
							usr.Weapon=src.icon_state
							usr.WeaponOn=1
							src.suffix="<font color=blue>Equipped"
							usr.AddedPower+=src.PowerAdd
							usr.AddedDelay+=src.Delay
							usr.WeaponEffect=src.Effect
							usr.WeaponType=src.ToWT
							ResetOverlays(usr)
			else
				..()





















/*	icon='weapons.dmi'
	Dagger/icon_state = "Dagger"
	Fine_Steel_Dagger/icon_state = "Fine Steel Dagger"
	Flame_Dagger/icon_state = "Flame Dagger"
	Poison_Dagger/icon_state = "Poison Dagger"
	Short_Sword/icon_state = "Short Sword"
	Sword/icon_state = "Sword"
	Long_Sabre/icon_state = "Long Sabre"
	Broadsword/icon_state = "Broadsword"
	Katana/icon_state = "Katana"
	Gladius/icon_state = "Gladius"
	Inferno_Blade/icon_state = "Inferno Blade"
	Monsoon_Blade/icon_state = "Monsoon Blade"
	Glacier_Blade/icon_state = "Glacier Blade"
	Halberd/icon_state = "Halberd"
	Razor_Dagger/icon_state = "Razor Dagger"
	Basher/icon_state = "Basher"
	Mint_Hammer/icon_state = "Mint Hammer"
	Ground_Mallet/icon_state = "Ground Mallet"
	Scius_Mallet/icon_state = "Scius Mallet"
	Lightning_Stave/icon_state = "Lightning Stave"
	Undique/icon_state = "Undique"
	Golden_Hammer/icon_state = "Golden Hammer"
	Dragon_Wingblade/icon_state = "Dragon Wingblade"
	Sawblade/icon_state = "Sawblade"
	Giant_Axe/icon_state = "Giant Axe"
	Winged_Hammer/icon_state = "Winged Hammer"
	Winged_Devil_Sword/icon_state = "Winged Devil Sword"
	Demonic_Blade/icon_state = "Demonic Blade"
	Necromancer_Staff/icon_state = "Necromancer Staff"
	Staff_of_the_Sun/icon_state = "Staff of the Sun"
	Staff_of_the_Moon/icon_state = "Staff of the Moon"
	Skull_Staff/icon_state = "Skull Staff"
	Andrigas_Staff/icon_state = "Andrigas Staff"
	Leather_Gloves
		icon_state = "Leather Gloves"
		Value=10
		PowerAddAdd=3
	Steel_Gauntlets/icon_state = "Steel Gauntlets"
	Swift_Claws/icon_state = "Swift Claws"
	Cat_Claws/icon_state = "Cat Claws"
	Dragon_Claws/icon_state = "Dragon Claws"
	Enchanted_Gloves/icon_state = "Enchanted Gloves"
	Feathered_Wand/icon_state = "Feathered Wand"
	Elven_Wand/icon_state = "Elven Wand"
	Gold_Wand/icon_state = "Gold Wand"
	Tainted_Wand/icon_state = "Tainted Wand"
	Disfigurement_Staff/icon_state = "Disfigurement Staff"
	Harp_of_Ambush/icon_state = "Harp of Ambush"
	Book_of_the_Dead/icon_state = "Book of the Dead"
	Mechanics_Gloves/icon_state = "Mechanics Gloves"
	Blood_Axe/icon_state = "Blood Axe"
	Enchanted_Staff/icon_state = "Enchanted Staff"
	Star_Blade
		icon_state = "Star Blade"
		PowerAddAdd=90
		Value=70000
	Life_Staff/icon_state = "Life Staff"
	Boxing_Gloves/icon_state = "Boxing Gloves"
	Staff/icon_state = "Staff"
	Quarter_Staff/icon_state = "Quarter Staff"
	Burst_Staff/icon_state = "Burst Staff"
	Nature_Staff/icon_state = "Nature Staff"
	Green_Bladed_Broadsword/icon_state = "Green Bladed Broadsword"
	Crystal_Spear/icon_state = "Crystal Spear"
	Iced_Club/icon_state = "Iced Club"
	Bow/icon_state = "Bow"
	Forest_Bow/icon_state = "Forest Bow"
	Inferno_Bow/icon_state = "Inferno Bow"
	Poison_Rod/icon_state = "Poison Rod"
	Inferno_Rod/icon_state = "Inferno Rod"
	Charming_Rod/icon_state = "Charming Rod"
	Tornado_Rod/icon_state = "Tornado Rod"
	Lightning_Rod/icon_state = "Lightning Rod"
	Rain_Rod/icon_state = "Rain Rod"
	Flash_Rod/icon_state = "Flash Rod"
	Long_Spear/icon_state = "Long Spear"
	Frost_Axe/icon_state = "Frost Axe"
	Flame_Axe/icon_state = "Flame Axe"
	Iron_Mallet/icon_state = "Iron Mallet"
	War_Axe/icon_state = "War Axe"
	Arachnid_Wand/icon_state = "Arachnid Wand"
	Dragon_Tooth_Dagger/icon_state = "Dragon Tooth Dagger"
	Crystal_Sword/icon_state = "Crystal Sword"
	Bone_Hammer/icon_state = "Bone Hammer"
	Thick_Blade/icon_state = "Thick Blade"
	Andrigas_Staff2/icon_state = "Andrigas Staff2"
	Fishing_Rod/icon_state = "Fishing Rod"*/














obj/overtop/Weapon
	icon='WeaponOverlay.dmi'
	Dagger1/icon_state = "Dagger1"
	Dagger2/icon_state = "Dagger2"
	Fine_Steel_Dagger1/icon_state = "Fine Steel Dagger1"
	Fine_Steel_Dagger2/icon_state = "Fine Steel Dagger2"
	Flame_Dagger1/icon_state = "Flame Dagger1"
	Flame_Dagger2/icon_state = "Flame Dagger2"
	Poison_Dagger1/icon_state = "Poison Dagger1"
	Poison_Dagger2/icon_state = "Poison Dagger2"
	Short_Sword1/icon_state = "Short Sword1"
	Short_Sword2/icon_state = "Short Sword2"
	Sword1/icon_state = "Sword1"
	Sword2/icon_state = "Sword2"
	Long_Sabre1/icon_state = "Long Sabre1"
	Long_Sabre2/icon_state = "Long Sabre2"
	Broadsword1/icon_state = "Broadsword1"
	Broadsword2/icon_state = "Broadsword2"
	Katana1/icon_state = "Katana1"
	Katana2/icon_state = "Katana2"
	Gladius1/icon_state = "Gladius1"
	Gladius2/icon_state = "Gladius2"
	Inferno_Blade1/icon_state = "Inferno Blade1"
	Inferno_Blade2/icon_state = "Inferno Blade2"
	Monsoon_Blade1/icon_state = "Monsoon Blade1"
	Monsoon_Blade2/icon_state = "Monsoon Blade2"
	Glacier_Blade1/icon_state = "Glacier Blade1"
	Glacier_Blade2/icon_state = "Glacier Blade2"
	Halberd1/icon_state = "Halberd1"
	Halberd2/icon_state = "Halberd2"
	Basher1/icon_state = "Basher1"
	Basher2/icon_state = "Basher2"
	Mint_Hammer1/icon_state = "Mint Hammer1"
	Mint_Hammer2/icon_state = "Mint Hammer2"
	Ground_Mallet1/icon_state = "Ground Mallet1"
	Ground_Mallet2/icon_state = "Ground Mallet2"
	Scius_Mallet1/icon_state = "Scius Mallet1"
	Scius_Mallet2/icon_state = "Scius Mallet2"
	Lightning_Stave1/icon_state = "Lightning Stave1"
	Lightning_Stave2/icon_state = "Lightning Stave2"
	Undique1/icon_state = "Undique1"
	Undique2/icon_state = "Undique2"
	Golden_Hammer1/icon_state = "Golden Hammer1"
	Golden_Hammer2/icon_state = "Golden Hammer2"
	Dragon_Wingblade1/icon_state = "Dragon Wingblade1"
	Dragon_Wingblade2/icon_state = "Dragon Wingblade2"
	Sawblade1/icon_state = "Sawblade1"
	Sawblade2/icon_state = "Sawblade2"
	Giant_Axe1/icon_state = "Giant Axe1"
	Giant_Axe2/icon_state = "Giant Axe2"
	Winged_Hammer1/icon_state = "Winged Hammer1"
	Winged_Hammer2/icon_state = "Winged Hammer2"
	Winged_Devil_Sword1/icon_state = "Winged Devil Sword1"
	Winged_Devil_Sword2/icon_state = "Winged Devil Sword2"
	Demonic_Blade1/icon_state = "Demonic Blade1"
	Demonic_Blade2/icon_state = "Demonic Blade2"
	Necromancer_Staff1/icon_state = "Necromancer Staff1"
	Necromancer_Staff2/icon_state = "Necromancer Staff2"
	Staff_of_the_Sun1/icon_state = "Staff of the Sun1"
	Staff_of_the_Sun2/icon_state = "Staff of the Sun2"
	Staff_of_the_Moon1/icon_state = "Staff of the Moon1"
	Staff_of_the_Moon2/icon_state = "Staff of the Moon2"
	Andrigas_Staff1/icon_state = "Andrigas Staff1"
	Andrigas_Staff2/icon_state = "Andrigas Staff2"
	Leather_Gloves1/icon_state = "Leather Gloves1"
	Leather_Gloves2/icon_state = "Leather Gloves2"
	Steel_Gauntlets1/icon_state = "Steel Gauntlets1"
	Steel_Gauntlets2/icon_state = "Steel Gauntlets2"
	Swift_Claws1/icon_state = "Swift Claws1"
	Swift_Claws2/icon_state = "Swift Claws2"
	Cat_Claws1/icon_state = "Cat Claws1"
	Cat_Claws2/icon_state = "Cat Claws2"
	Dragon_Claws1/icon_state = "Dragon Claws1"
	Dragon_Claws2/icon_state = "Dragon Claws2"
	Enchanted_Gloves1/icon_state = "Enchanted Gloves1"
	Enchanted_Gloves2/icon_state = "Enchanted Gloves2"
	Feathered_Wand1/icon_state = "Feathered Wand1"
	Feathered_Wand2/icon_state = "Feathered Wand2"
	Elven_Wand1/icon_state = "Elven Wand1"
	Elven_Wand2/icon_state = "Elven Wand2"
	Gold_Wand1/icon_state = "Gold Wand1"
	Gold_Wand2/icon_state = "Gold Wand2"
	Tainted_Wand1/icon_state = "Tainted Wand1"
	Tainted_Wand2/icon_state = "Tainted Wand2"
	Book_of_the_Dead1/icon_state = "Book of the Dead1"
	Book_of_the_Dead2/icon_state = "Book of the Dead2"
	Mechanics_Gloves1/icon_state = "Mechanics Gloves1"
	Mechanics_Gloves2/icon_state = "Mechanics Gloves2"
	Blood_Axe1/icon_state = "Blood Axe1"
	Blood_Axe2/icon_state = "Blood Axe2"
	Star_Blade1/icon_state = "Star Blade1"
	Star_Blade2/icon_state = "Star Blade2"
	Life_Staff1/icon_state = "Life Staff1"
	Life_Staff2/icon_state = "Life Staff2"
	Boxing_Gloves1/icon_state = "Boxing Gloves1"
	Boxing_Gloves2/icon_state = "Boxing Gloves2"
	Staff1/icon_state = "Staff1"
	Staff2/icon_state = "Staff2"
	Quarter_Staff1/icon_state = "Quarter Staff1"
	Quarter_Staff2/icon_state = "Quarter Staff2"
	Burst_Staff1/icon_state = "Burst Staff1"
	Burst_Staff2/icon_state = "Burst Staff2"
	Green_Bladed_Broadsword1/icon_state = "Green Bladed Broadsword1"
	Green_Bladed_Broadsword2/icon_state = "Green Bladed Broadsword2"
	Frost_Axe1/icon_state = "Frost Axe1"
	Frost_Axe2/icon_state = "Frost Axe2"
	Iron_Mallet1/icon_state = "Iron Mallet1"
	Iron_Mallet2/icon_state = "Iron Mallet2"
	Dragon_Tooth_Dagger1/icon_state = "Dragon Tooth Dagger1"
	Dragon_Tooth_Dagger2/icon_state = "Dragon Tooth Dagger2"
	Fishing_Rod1/icon_state = "Fishing Rod1"
	Fishing_Rod2/icon_state = "Fishing Rod2"
