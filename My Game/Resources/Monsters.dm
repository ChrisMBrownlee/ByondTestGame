mob
	var
		tmp
			s_x=0
			s_y=0
			s_z=0
			s_d=NORTH
			ROCKS=500
	Critters
		name="BackGround"
		Bflys
			icon='spellshots.dmi'
			density=0
			New()
				..()
				spawn(rand(20,60))
					while(src)
						step_rand(src)
						sleep(rand(100,250))
	rock
		icon='turfs.dmi'
		icon_state="rock1"
		name="BackGround"
		Alignment="Evil"
		density=1
		opacity=1
		New()
			..()
			while(src)
				if(ROCKS<50)
					ROCKS++
				sleep(100)
	bush
		icon='turfs.dmi'
		icon_state="bush"
		density=1
		name="BackGround"
		Alignment="Evil"
		opacity=1
	tree
		icon='turfs.dmi'
		icon_state="tree1"
		density=1
		name="BackGround"
		Alignment="Evil"
		opacity=1
	NPC
		Bump(mob/M)
			if(src.Fights==1)
				if(src.Stunned==0)
					MAttack(src)
		AttackDelay=5
		monster
			New()
				s_x=x
				s_y=y
				s_z=z
				s_d=dir
				Update(src)
				src.underlays+=new/obj/charshadow
				..()
			icon='NPCs.dmi'
			Behemot
				name = "Behemot"
				icon = 'NPCs.dmi'
				icon_state = "behe"
				HP = 4500
				Power = 900
				Guard = 800
				Exp= 10000
				Level= 150
				Gold = 5000
				Alignment = "Evil"
				HPMAX = 4500
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(get_step(src,P))
										if(P.Level<150)
											if(P.Alignment=="Evil")
												CA=0
											else
												CA=1
										else
											CA=0
										if(P.Shielded==1)
											CA=0
										if(CA==1)
											src.target=P
											if(src.FIZO==0)
												src.FIZO=1
												spawn(1)
													Follow(src)
						sleep(25)
			BehemotKnight
				name = "Behemot Knight"
				icon = 'NPCs3.dmi'
				icon_state = "drag"
				HP = 5000
				Power = 1400
				Guard = 1250
				Exp= 35000
				Level= 170
				Gold = 15000
				Alignment = "Neutral"
				HPMAX = 5000
			Ogre
				name="Ogre"
				icon='NPCs3.dmi'
				icon_state="Ogre"
				HP = 3000
				Power = 950
				Guard = 1100
				Exp= 5800
				Level= 120
				Gold = 1000
				Alignment = "Neutral"
				HPMAX = 3000
			DemonGeneral
				name = "Demon General"
				icon = 'NPCs4.dmi'
				icon_state = "7"
				HP = 6000
				Power = 1425
				Guard = 1350
				Exp= 30000
				Level= 190
				Gold = 10000
				Alignment = "Evil"
				HPMAX = 6000
			Dracovern
				name = "Dracovern"
				icon = 'NPCs2.dmi'
				icon_state = "dragon1"
				HP = 6300
				Power = 700
				Guard = 650
				Exp= 6000
				Level= 110
				Gold = 350
				Alignment = "Evil"
				HPMAX = 6300
				AttackSound='Dracovernatt.wav'
				DieSound='Dracovernhit.wav'


			FrozenDracovern
				name = "Frozen Dracovern"
				icon = 'NPCs4.dmi'
				icon_state = "icedragon"
				HP = 6500
				Power = 1350
				Guard = 1450
				Exp= 25000
				Level= 175
				Gold = 13000
				Alignment = "Evil"
				HPMAX = 6500
				AttackSound='Dracovernatt.wav'
				DieSound='Dracovernhit.wav'
				ArmorEffect="IceDragon"
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(get_step(src,P))
										if(P.Level<160)
											if(P.Alignment=="Evil")
												CA=0
											else
												CA=1
										else
											CA=0
										if(P.Shielded==1)
											CA=0
										if(CA==1)
											src.target=P
											if(src.FIZO==0)
												src.FIZO=1
												spawn(1)
													Follow(src)
						sleep(25)



			GXF
				name = "GXF 8724"
				icon = 'NPCs3.dmi'
				icon_state = "G1"
				HP = 9000
				Power = 1850
				Guard = 1700
				Exp= 100000
				Level= 230
				Gold = 15000
				Alignment = "Evil"
				HPMAX = 9000
			Harpey
				name = "Harpey"
				icon = 'NPCs.dmi'
				icon_state = "harpey"
				HP = 5000
				Power = 700
				Guard = 650
				Exp= 6500
				Level= 110
				Gold = 350
				Alignment = "Evil"
				HPMAX = 5000
			LavaGolem
				name = "Lava Golem"
				icon = 'NPCs3.dmi'
				icon_state = "lava"
				HP = 5500
				Power = 600
				Guard = 735
				Exp= 5000
				Level= 115
				Gold = 350
				Alignment = "Neutral"
				HPMAX = 5500
				DieSound='Golemhit.wav'
			LostSoul
				name = "Lost Soul"
				icon = 'NPCs.dmi'
				icon_state = "soul"
				HP = 6000
				Power = 1000
				Guard = 1100
				Exp= 25000
				Level= 162
				Gold = 1000
				Alignment = "Good"
				HPMAX = 6000
			Necromancer
				icon='NPCs3.dmi'
				icon_state="necro"
			OrcLegionaire
				name = "Orc Legionaire"
				icon = 'NPCs3.dmi'
				icon_state = "orclegion"
				HP = 4000
				Power = 900
				Guard = 820
				Exp= 3500
				Level= 130
				Gold = 450
				Alignment = "Evil"
				HPMAX = 4000
			Pixie
				name = "Pixie"
				icon = 'NPCs3.dmi'
				icon_state = "pixie"
				HP = 6300
				Power = 800
				Guard = 700
				Exp= 2000
				Level= 120
				Gold = 250
				Alignment = "Neutral"
				HPMAX = 6300
			Reaper
				name = "Reaper"
				icon = 'NPCs3.dmi'
				icon_state = "reaper"
				HP = 10000
				Power = 1950
				Guard = 1800
				Exp= 100000
				Level= 275
				Gold = 1500
				Alignment = "Evil"
				HPMAX = 10000
			Toad
				name = "Toad Warrior"
				icon = 'NPCs4.dmi'
				icon_state = "6"
				HP = 8000
				Power = 1650
				Guard = 1400
				Exp= 45000
				Level= 203
				Gold = 5000
				Alignment = "Neutral"
				HPMAX = 8000
			Wyvern
				name = "Wyvern"
				icon = 'NPCs.dmi'
				icon_state = "babydrag"
				HP = 1300
				Power = 260
				Guard = 181
				Exp= 400
				Level= 42
				Gold = 150
				Alignment = "Evil"
				HPMAX = 1300
			ZenithDragon
				name = "Zenith Draco"
				icon = 'NPCs2.dmi'
				icon_state = "dragon4"
				HP = 6500
				Power = 1600
				Guard = 1350
				Exp= 50000
				Level= 200
				Gold = 1500
				Alignment = "Neutral"
				HPMAX = 6500
			bat
				name = "Night Flier"
				icon = 'NPCs.dmi'
				icon_state = "bat"
				HP = 200
				Power = 35
				Guard = 28
				Exp= 17
				Level= 10
				Gold = 13
				Alignment = "Evil"
				HPMAX = 200
			bee
				name = "Bee"
				icon = 'NPCs.dmi'
				icon_state = "bee"
				HP = 46
				Power = 5
				Guard = 7
				Exp= 18
				Level= 2
				Gold = 1
				Alignment = "Chaotic"
				HPMAX = 46
			chicken
				name="Chicken"
				icon_state="chick"
			clown
				name = "Skull Clown"
				icon = 'NPCs3.dmi'
				icon_state = "skullclown"
				HP = 5000
				Power = 575
				Guard = 575
				Exp= 4000
				Level= 100
				Gold = 150
				Alignment = "Evil"
				HPMAX = 5000
			demon
				name = "Demon Fighter"
				icon = 'NPCs.dmi'
				icon_state = "dn"
				HP = 1250
				Power = 200
				Guard = 160
				Exp= 300
				Level= 38
				Gold = 90
				Alignment = "Evil"
				HPMAX = 1250
			felinekitty
				name = "Felinaus Cub"
				icon = 'NPCs3.dmi'
				icon_state = "kitty"
				HP = 930
				Power = 150
				Guard = 92
				Exp= 150
				Level= 30
				Gold = 100
				Alignment = "Good"
				HPMAX = 930
			fire
				icon_state="fep"
				fire1
					name = "Lesser Fire Elemental"
					icon = 'NPCs.dmi'
					icon_state = "fep"
					HP = 175
					Power = 35
					Guard = 15
					Exp= 55
					Level= 10
					Gold = 20
					Alignment = "Evil"
					HPMAX = 175
				fire2
					name = "Fire Elemental"
					icon = 'NPCs.dmi'
					icon_state = "fep"
					HP = 250
					Power = 70
					Guard = 30
					Exp= 140
					Level= 25
					Gold = 60
					Alignment = "Evil"
					HPMAX = 250
				fire3
					name = "Greater Fire Elemental"
					icon = 'NPCs.dmi'
					icon_state = "fep"
					HP = 600
					Power = 240
					Guard = 160
					Exp= 450
					Level= 45
					Gold = 150
					Alignment = "Evil"
					HPMAX = 600
				fire4
					name = "Fire Elemental Master"
					icon = 'NPCs.dmi'
					icon_state = "fep"
					HP = 7500
					Power = 1750
					Guard = 1400
					Exp= 20000
					Level= 170
					Gold = 500
					Alignment = "Evil"
					HPMAX = 7500
			fly
				icon='NPCs3.dmi'
				icon_state="fly"
				Fights=0
				name = "Fly"
				HP = 10
				Power = 5
				Guard = 4
				Exp= 2
				Level= 1
				Gold = 1
				Alignment = "Neutral"
				HPMAX = 10
			ghost
				name = "Phantom"
				icon = 'NPCs3.dmi'
				icon_state = "ghost"
				HP = 3500
				Power = 500
				Guard = 500
				Exp= 1700
				Level= 75
				Gold = 250
				Alignment = "Chaotic"
				HPMAX = 3500
				dropscorpse=0
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(get_step(src,P))
										if(P.Level<75)
											if(P.Alignment=="Evil")
												CA=0
											else
												CA=1
										else
											CA=0
										if(P.Shielded==1)
											CA=0
										if(CA==1)
											src.target=P
											if(src.FIZO==0)
												src.FIZO=1
												spawn(1)
													Follow(src)
						sleep(25)
			gnoll1
				name = "Young Gnoll"
				icon = 'NPCs.dmi'
				icon_state = "gnoll1"
				HP = 400
				Power = 70
				Guard = 75
				Exp= 100
				Level= 23
				Gold = 150
				Alignment = "Good"
				HPMAX = 400
			gnoll2
				name = "Gnoll"
				icon = 'NPCs.dmi'
				icon_state = "gnoll2"
				HP = 3100
				Power = 450
				Guard = 400
				Exp= 1400
				Level= 70
				Gold = 50
				Alignment = "Evil"
				HPMAX = 3100
			goblin
				name = "Goblin"
				icon = 'NPCs.dmi'
				icon_state = "gob"
				HP = 2400
				Power = 335
				Guard = 311
				Exp= 650
				Level= 50
				Gold = 250
				Alignment = "Evil"
				HPMAX = 2400
			golem
				name = "Golem"
				icon = 'NPCs.dmi'
				icon_state = "gol"
				HP = 1000
				Power = 270
				Guard = 330
				Exp= 500
				Level= 36
				Gold = 300
				Alignment = "Good"
				HPMAX = 1000
				DieSound='Golemhit.wav'
			hobgoblin
				name = "Hobgoblin"
				icon = 'NPCs.dmi'
				icon_state = "hobgob"
				HP = 300
				Power = 60
				Guard = 65
				Exp= 75
				Level= 1
				Gold = 40
				Alignment = "Evil"
				HPMAX = 300
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(3,src))
									if(get_step(src,P))
										if(P.Level<15)
											if(P.Alignment=="Evil")
												CA=0
											else
												CA=1
										else
											CA=0
										if(P.Shielded==1)
											CA=0
										if(CA==1)
											src.target=P
											if(src.FIZO==0)
												src.FIZO=1
												spawn(1)
													Follow(src)
						sleep(25)

			hobgoblinking
				name = "Hobgoblin Renegade"
				icon = 'NPCs.dmi'
				icon_state = "gob3"
				HP = 2000
				Power = 500
				Guard = 400
				Exp= 1000
				Level= 47
				Gold = 70
				Alignment = "Chaotic"
				HPMAX = 2000
			ice
				icon='NPCs2.dmi'
				icon_state="ice"
				ice1
					name = "Lesser Ice Elemental"
					icon = 'NPCs2.dmi'
					icon_state = "ice"
					HP = 175
					Power = 27
					Guard = 26
					Exp= 55
					Level= 10
					Gold = 20
					Alignment = "Evil"
					HPMAX = 175
				ice2
					name = "Ice Elemental"
					icon = 'NPCs2.dmi'
					icon_state = "ice"
					HP = 250
					Power = 54
					Guard = 52
					Exp= 140
					Level= 25
					Gold = 50
					Alignment = "Evil"
					HPMAX = 250
				ice3
					name = "Greater Ice Elemental"
					icon = 'NPCs2.dmi'
					icon_state = "ice"
					HP = 800
					Power = 208
					Guard = 204
					Exp= 450
					Level= 45
					Gold = 150
					Alignment = "Evil"
					HPMAX = 800
				ice4
					name = "Ice Elemental Master"
					icon = 'NPCs2.dmi'
					icon_state = "ice"
					HP = 8500
					Power = 1350
					Guard = 1600
					Exp= 20000
					Level= 170
					Gold = 1200
					Alignment = "Evil"
					HPMAX = 8500
			kang
				name = "Boxing Kangaroo"
				icon = 'NPCs2.dmi'
				icon_state = "kang"
				HP = 2750
				Power = 405
				Guard = 355
				Exp= 1400
				Level= 60
				Gold = 200
				Alignment = "Good"
				HPMAX = 2750
				AttackSound='Kangarooatt.wav'
				DieSound='Kangaroohit.wav'
			kingslime
				name = "King Slimeball"
				icon = 'NPCs3.dmi'
				icon_state = "bigslm"
				HP = 3500
				Power = 600
				Guard = 575
				Exp= 2000
				Level= 68
				Gold = 250
				Alignment = "Evil"
				HPMAX = 3500
			kitty
				name = "Kitty"
				icon = 'NPCs3.dmi'
				icon_state = "cat1"
				HP = 930
				Power = 110
				Guard = 92
				Exp= 150
				Level= 30
				Gold = 120
				Alignment = "Evil"
				HPMAX = 930
			mage
				name="Evil Magician"//comes with a random elemental pet
				icon='NPCs2.dmi'
				icon_state="darkmage"
			moonbeast
				name="Moon Beast"
				icon_state="dbab"
			orc
				name = "Orc Knight"
				icon = 'NPCs3.dmi'
				icon_state = "orc"
				HP = 3650
				Power = 600
				Guard = 515
				Exp= 2100
				Level= 80
				Gold = 200
				Alignment = "Evil"
				HPMAX = 3650
			orc1
				name = "Orc"
				icon = 'NPCs3.dmi'
				icon_state = "orc1"
				HP = 1300
				Power = 245
				Guard = 176
				Exp= 325
				Level= 40
				Gold = 50
				Alignment = "Evil"
				HPMAX = 1300
			penguin
				name = "Penguin"
				icon = 'NPCs2.dmi'
				icon_state = "penguin"
				HP = 220
				Power = 43
				Guard = 33
				Exp= 25
				Level= 13
				Gold = 12
				Alignment = "Good"
				HPMAX = 220

			satanic
				name="Satanic Worshiper"
				icon='NPCs3.dmi'
				icon_state="dark"
			shadow
				name = "Shadow Men"
				icon = 'NPCs.dmi'
				icon_state = "shadow"
				HP = 3050
				Power = 490
				Guard = 400
				Exp= 1300
				Level= 65
				Gold = 100
				Alignment = "Chaotic"
				HPMAX = 3050
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(P.client)
										if(get_step(src,P))
											if(P.Level<70)
												if(P.Alignment=="Evil")
													CA=0
												else
													CA=1
											else
												CA=0
											if(P.Shielded==1)
												CA=0
											if(CA==1)
												src.target=P
												if(src.FIZO==0)
													src.FIZO=1
													spawn(1)
														Follow(src)
						sleep(25)
			skel
				name="Undead Beast"
				icon='NPCs2.dmi'
				icon_state="undead"
			skeleking
				name = "Skeleton King"
				icon = 'NPCs.dmi'
				icon_state = "skking"
				HP = 600
				Power = 100
				Guard = 110
				Exp= 257
				Level= 28
				Gold = 60
				Alignment = "Evil"
				HPMAX = 600
			skelemage
				name = "Skeleton Wizard"
				icon = 'NPCs.dmi'
				icon_state = "skmage"
				HP = 260
				Power = 50
				Guard = 50
				Exp= 50
				Level= 18
				Gold = 20
				Alignment = "Evil"
				HPMAX = 260
			skeleton
				name = "Skeleton"
				icon = 'NPCs.dmi'
				icon_state = "sk"
				HP = 180
				Power = 32
				Guard = 24
				Exp= 20
				Level= 13
				Gold = 10
				Alignment = "Evil"
				HPMAX = 180
				New()
					..()
					spawn(1)
						if(prob(10))
							src.icon='NPCs3.dmi'
							src.icon_state="skelewarrior"
							src.name="Skeleton Warrior"
							src.HP+=50
							src.HPMAX+=50
							src.Gold+=rand(20,30)
							src.Level=15
							src.Guard+=rand(10,25)
							src.Power+=rand(10,25)
							src.Exp+=rand(20,150)
							Update(src)
			slime
				DieSound='Slimeballdie.wav'
				Gold=4
				Level=5
				dropscorpse=0
				blue
					name = "Blue Slimeball"
					icon = 'NPCs.dmi'
					icon_state = "slm3"
					HP = 80
					Power = 18
					Guard = 13
					Exp= 8
					Level= 5
					Gold = 3
					Alignment = "Neutral"
					HPMAX = 80
				green
					name = "Green Slimeball"
					icon = 'NPCs.dmi'
					icon_state = "slm1"
					HP = 80
					Power = 18
					Guard = 13
					Exp= 8
					Level= 5
					Gold = 3
					Alignment = "Neutral"
					HPMAX = 80
				orange
					name = "Orange Slimeball"
					icon = 'NPCs.dmi'
					icon_state = "slm2"
					HP = 80
					Power = 18
					Guard = 13
					Exp= 8
					Level= 5
					Gold = 3
					Alignment = "Neutral"
					HPMAX = 80


			spider2
				name = "Arachnid Queen"
				icon = 'NPCs4.dmi'
				icon_state = "spiderman"
				HP = 1300
				Power = 185
				Guard = 163
				Exp= 650
				Level= 35
				Gold = 320
				Alignment = "Evil"
				HPMAX = 1300
				AttackSound='Arachnidhit.wav'
				DieSound='Arachniddie.wav'

			spider1
				name = "Weak Arachnid"
				icon = 'NPCs.dmi'
				icon_state = "spider"
				HP = 50
				Power = 8
				Guard = 6
				Exp= 4
				Level= 3
				Gold = 2
				Alignment = "Evil"
				HPMAX = 50
				AttackSound='Arachnidhit.wav'
				DieSound='Arachniddie.wav'
				dropscorpse=0
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(get_step(src,P))
										if(P.Level<4)
											if(P.Alignment=="Evil")
												CA=0
											else
												CA=1
										else
											CA=0
										if(P.Shielded==1)
											CA=0
										if(CA==1)
											src.target=P
											if(src.FIZO==0)
												src.FIZO=1
												spawn(1)
													Follow(src)
						sleep(25)
			squirrel
				icon = 'NPCs4.dmi'
				name="Tree Hopper"
				icon_state = "squirrel"
				HP = 60
				Power = 5
				Guard = 6
				Exp= 2
				Level= 2
				Gold = 1
				Alignment = "Neutral"
				HPMAX = 60
				Fights=0
				New()
					s_x=x
					s_y=y
					s_z=z
					s_d=dir
					src.underlays+=new/obj/charshadow
					Update(src)
					spawn(rand(20,150))
					while(src)
						step_rand(src)
						sleep(rand(20,150))
			sunbeast
				name="Sun Beast"
				icon='NPCs4.dmi'
				icon_state="monk"
			tauros
				name = "Minotaur Knight"
				icon = 'NPCs4.dmi'
				icon_state = "tauros"
				HP = 800
				Power = 100
				Guard = 85
				Exp= 300
				Level= 30
				Gold = 50
				Alignment = "Evil"
				HPMAX = 800
				DieSound='Minotaurdie.wav'
			taurosking
				name = "Minotaur King"
				icon = 'NPCs4.dmi'
				icon_state = "tauros2"
				HP = 3000
				Power = 630
				Guard = 550
				Exp= 2000
				Level= 65
				Gold = 50
				Alignment = "Evil"
				HPMAX = 3000
				DieSound='Minotaurdie.wav'
			thief
				name = "Thief"
				icon = 'NPCs3.dmi'
				icon_state = "thief"
				HP = 2350
				Power = 435
				Guard = 345
				Exp= 1300
				Level= 61
				Gold = 50
				Alignment = "Chaotic"
				WeaponEffect="Steal"
				HPMAX = 2350
				New()
					.=..()
					while(src)
						var/CA=1
						if(!src.target)
							if(src.FIZO==0)
								for(var/mob/Player/P in view(5,src))
									if(P.client)
										if(get_step(src,P))
											if(P.Level<src.Level)
												if(P.Alignment=="Evil")
													CA=0
												else
													CA=1
											else
												CA=0
											if(P.Shielded==1)
												CA=0
											if(CA==1)
												src.target=P
												if(src.FIZO==0)
													src.FIZO=1
													spawn(1)
														Follow(src)
						sleep(25)
			tiger
				name = "Felinaus"
				icon = 'NPCs.dmi'
				icon_state = "tig1"
				HP = 5000
				Power = 660
				Guard = 510
				Exp= 3500
				Level= 90
				Gold = 50
				Alignment = "Good"
				HPMAX = 5000
			troll
				name = "Troll"
				icon = 'NPCs3.dmi'
				icon_state = "T1"
				HP = 300
				Power = 60
				Guard = 65
				Exp= 80
				Level= 20
				Gold = 20
				Alignment = "Evil"
				HPMAX = 300
			turt
				name = "Tortoise"
				icon = 'NPCs.dmi'
				icon_state = "turt"
				HP = 220
				Power = 43
				Guard = 33
				Exp= 25
				Level= 13
				Gold = 0
				Alignment = "Good"
				HPMAX = 220
			water
				icon_state="wep"
				water1
					name = "Lesser Water Elemental"
					icon = 'NPCs.dmi'
					icon_state = "wep"
					HP = 175
					Power = 27
					Guard = 26
					Exp= 55
					Level= 10
					Gold = 20
					Alignment = "Evil"
					HPMAX = 175
				water2
					name = "Water Elemental"
					icon = 'NPCs.dmi'
					icon_state = "wep"
					HP = 250
					Power = 54
					Guard = 52
					Exp= 140
					Level= 25
					Gold = 50
					Alignment = "Evil"
					HPMAX = 250
				water3
					name = "Greater Water Elemental"
					icon = 'NPCs.dmi'
					icon_state = "wep"
					HP = 800
					Power = 208
					Guard = 204
					Exp= 450
					Level= 45
					Gold = 50
					Alignment = "Evil"
					HPMAX = 800
				water4
					name = "Water Elemental Master"
					icon = 'NPCs.dmi'
					icon_state = "wep"
					HP = 8500
					Power = 1600
					Guard = 1500
					Exp= 20000
					Level= 170
					Gold = 50
					Alignment = "Evil"
					HPMAX = 8500
			watergod
				name = "Ocean Goddess"
				icon = 'NPCs3.dmi'
				icon_state = "water"
				HP = 2900
				Power = 505
				Guard = 460
				Exp= 1500
				Level= 80
				Gold = 400
				Alignment = "Evil"
				HPMAX = 2900
				dropscorpse=0
			willowisp
				name = "Will-O-Wisp"
				icon = 'NPCs.dmi'
				icon_state = "wisp2"
				HP = 1400
				Power = 240
				Guard = 205
				Exp= 800
				Level= 46
				Gold = 50
				Alignment = "Evil"
				HPMAX = 1400
				dropscorpse=0
			willowisp2
				name = "Light Chaser"
				icon = 'NPCs.dmi'
				icon_state = "wisp1"
				HP = 2750
				Power = 405
				Guard = 400
				Exp= 1200
				Level= 60
				Gold = 50
				Alignment = "Evil"
				HPMAX = 2750
				dropscorpse=0
			zombie
				name = "Zombie"
				icon = 'NPCs.dmi'
				icon_state = "zomb1"
				HP = 100
				Power = 23
				Guard = 13
				Exp= 12
				Level= 9
				Gold = 10
				Alignment = "Evil"
				HPMAX = 100
				AttackSound='Zombieatt.wav'
				DieSound='Zombiedie.wav'
			zombieice
				name = "Freeze Zombie"
				icon = 'NPCs.dmi'
				icon_state = "zomb2"
				HP = 960
				Power = 120
				Guard = 95
				Exp= 450
				Level= 31
				Gold = 260
				Alignment = "Evil"
				HPMAX = 960
				AttackSound='Zombieatt.wav'
				DieSound='Zombiedie.wav'
