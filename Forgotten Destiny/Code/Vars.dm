//-----------------------------------------------------
					//VARIABLES FILE//
//-----------------------------------------------------

//-----------------------------------------------------
					//MOB VARIABLES//
//-----------------------------------------------------

mob/var
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
//INTS
	HP = 80
	MAXHP = 80
	MP = 10
	MAXMP = 10
	Power = 5
	AddedPower = 0
	Guard = 13
	AddedGuard = 0
	Exp = 0
	Level = 1
	Gold = 0
	DropCorpse = 0
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

//-----------------------------------------------------
					//GENDER VARIABLES//
//-----------------------------------------------------

var
	maleshow = new/obj/Misc/Male
	femaleshow = new/obj/Misc/Female

