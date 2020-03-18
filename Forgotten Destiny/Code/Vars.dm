//-----------------------------------------------------
					//VARIABLES FILE//
//-----------------------------------------------------

//-----------------------------------------------------
					//MOB VARIABLES//
//-----------------------------------------------------

mob/var
//USER IMAGES
	Hair = ""
	Weapon = ""
	Armor = ""
	Boots = ""
	Gloves = ""
//STATS
	STR = 1
	DEX = 1
	INT = 1
	LUK = 1
	CON = 1
	CHA = 1
	FTH = 1
//TEMP STATS
	TMPSTR = 0
	TMPDEX = 0
	TMPINT = 0
	TMPLUK = 0
	TMPCON = 0
	TMPCHA = 0
	TMPFTH = 0
//HELD POINTS
	RemainingAP = 0
	RemainingSP = 0
//HP / MP
	HP = 80
	MAXHP = 80
	MP = 10
	MAXMP = 10
//ATK / DEF
	Power = 5
	AddedPower = 0
	Guard = 13
	AddedGuard = 0
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
	overlay = ""

//-----------------------------------------------------
					//GENDER VARIABLES//
//-----------------------------------------------------

var
	maleshow = new/obj/Misc/Male
	femaleshow = new/obj/Misc/Female

mob
    var
        move_delay = 5   // how many ticks the player must wait between movements
        tmp // these vars are not saved
            move_time = 0    // the earliest time the mob may move

client
    Move()
        if(world.time < mob.move_time) // not enough time passed
            return

        // set the move_time for move_delay ticks from now
        mob.move_time = world.time + mob.move_delay
        return ..() // do the default Move() proc and return what it returns
