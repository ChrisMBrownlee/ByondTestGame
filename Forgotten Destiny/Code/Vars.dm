//-----------------------------------------------------
					//VARIABLES FILE//
//-----------------------------------------------------

//-----------------------------------------------------
					//MOB VARIABLES//
//-----------------------------------------------------

mob/var
//USER IMAGES
	Eyes = ""
	Hair = ""
	Weapon = ""
	Armor = ""
	Boots = ""
	Gloves = ""
//STATS
	STR = 5
	DEX = 5
	INT = 5
	LUK = 5
//TEMP STATS
	TMPSTR = 0
	TMPDEX = 0
	TMPINT = 0
	TMPLUK = 0
//HELD POINTS
	RemainingAP = 0
	RemainingSP = 0
//HP / MP
	HP = 80
	MAXHP = 80
	MP = 10
	MAXMP = 10
//ATK / DEF
	Power = 15
	AddedPower = 0
	Guard = 13
	AddedGuard = 0
//ACCURACY
	Evasion = 0.05
	Accuracy = 0
	EquipAcc = 0
//LEVEL STUFF
	Exp = 0
	Level = 1
//DROP STUFF
	Gold = 0
	DropCorpse = 0
//MODIFIERS
	ATKSPD = 7
	attacking = 0
	MOVSPD = 30
	CA = 0
	ServerTalkOn = 1
	weapon_equipped = 0
//STRINGS
	ALIGN = "Neutral"
	Class = "Explorer"
	Gender = "Male"
	Status = "usr"
//LISTS
	list/killlist[5]// = new /list(1)

//-----------------------------------------------------
					//OBJECT VARIABLES//
//-----------------------------------------------------

obj/var
	value = 0
	powmod = 0
	wepacc = 0
	overlay = ""

//-----------------------------------------------------
					//GENDER VARIABLES//
//-----------------------------------------------------

var
	maleshow = new/obj/Misc/Male
	femaleshow = new/obj/Misc/Female

//-----------------------------------------------------
					//PLAYER MOVEMENT VARIABLES//
//-----------------------------------------------------

mob
	var
		move_delay = 3
		tmp
			move_time = 0

client
	Move()
		if(world.time < mob.move_time)
			return
		mob.move_time = world.time + mob.move_delay
		return ..()

var/const
	ACTION_RATE = 30
	NO_ACTION

mob
	var
		action_speed = 20
		tmp
			action = NO_ACTION
			action_count = 0
	New()
		..()
		spawn(1) lifecycle()
	proc
		lifecycle()
			action_count += action_speed
			if(action_count >= ACTION_RATE)
				action_count -= ACTION_RATE
				if(action)
					step(src,action)
				action = NO_ACTION
			spawn(1) lifecycle()


client
	North()
		mob.action = NORTH
	South()
		mob.action = SOUTH
	East()
		mob.action = EAST
	West()
		mob.action = WEST
	Northeast()
		mob.action = NORTHEAST
	Northwest()
		mob.action = NORTHWEST
	Southeast()
		mob.action = SOUTHEAST
	Southwest()
		mob.action = SOUTHWEST