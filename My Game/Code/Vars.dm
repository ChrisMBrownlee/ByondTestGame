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
	ExpMax = 15
	Level = 1
	Gold = 0
	DropCorpse = 0
	ATKSPD = 7
	attacking = 0
	MOVSPD = 10
	CA = 0
//STRINGS
	ALIGN = "Neutral"
	Class = "Explorer"
	Gender = "Male"
//LISTS
	killlist = new /list(1)

//-----------------------------------------------------
					//OBJECT VARIABLES//
//-----------------------------------------------------

obj/var
	value = 1

//-----------------------------------------------------
					//GENDER VARIABLES//
//-----------------------------------------------------

var
	maleshow = new/obj/male
	femaleshow = new/obj/female

