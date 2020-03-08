var
	WORLDCHAT=1
	ExpTimes=1

var/list/Noob_Shop=list(new/obj/weapons/LeatherGloves,\
new/obj/armor/ClothShirt)


var/list/Furniture_Shop=list(new/obj/item/Deeds/Bed1Deed)

var/list/Banned=list()
var/list/Names=list()
var/list/Muted=list()

var/list/PVP_SHOP=list(new/obj/helmet/Curruption,\
new/obj/armor/SlayerPlatemail)

var/list/Cash_Armor=list(new/obj/armor/SantaSuit)


var/list/Armor_Shop=list(new/obj/armor/TravelersVest,new/obj/armor/AnimalHideShirt,new/obj/armor/VestofBlazar,new/obj/armor/TunicoftheFool,new/obj/armor/TransportArmor,new/obj/armor/AndrigasRobe,new/obj/armor/SyphonSuit,new/obj/armor/SteelPlatemail,new/obj/armor/HolyGown,new/obj/armor/BlizzardToga,new/obj/armor/NinjaKimono,new/obj/armor/HeroicRobe,new/obj/armor/ElvenRobe,new/obj/armor/GoldPlatemail)
var/list/BannedNames=list("_","1","2","3","4","5","6","7","8","9","0"," ","<",">","!",".",",","+","\",",")","(","*","&","^","%","$","#","@","!","~","`")

var/list/Guild_Shop=list(new/obj/helmet/GuildWear/Bandana,\
new/obj/helmet/GuildWear/Hood,\
new/obj/Capes/Guild_Cloak,\
new/obj/armor/GuildMaster)

var/list/Weapon_Shop=list(new/obj/weapons/LeatherGloves,new/obj/weapons/Dagger,new/obj/weapons/PoisonDagger,new/obj/weapons/ShortSword,new/obj/weapons/Sword,new/obj/weapons/LongSabre,new/obj/weapons/Broadsword,new/obj/weapons/Katana,new/obj/weapons/Sawblade,new/obj/weapons/GiantAxe,new/obj/weapons/Halberd,new/obj/weapons/SciusMallet,new/obj/weapons/GroundMallet,new/obj/weapons/DisfigurementStaff,new/obj/weapons/HarpofAmbush,new/obj/weapons/BookoftheDead,new/obj/weapons/MechanicsGloves,new/obj/weapons/BloodAxe,new/obj/weapons/EnchantedStaff,new/obj/weapons/TaintedWand)

var/list/Scroll_Shop=list(new/obj/item/bones,\
new/obj/item/ees,\
new/obj/item/fes,\
new/obj/item/aes,\
new/obj/item/wes,\
new/obj/item/scrolls/Pet)

var/list/Shield_Shop=list(new/obj/shield/Rusty,\
new/obj/shield/Copper,\
new/obj/shield/Silver,\
new/obj/shield/Lovely_Heart,\
new/obj/shield/Tower,\
new/obj/shield/Spike,\
new/obj/shield/Elven,\
new/obj/shield/Dragon_Tooth)


var/list/Item_Shop=list(new/obj/item/journal,\
new/obj/item/compass,\
new/obj/item/sense,\
new/obj/item/Merchant_Contract,\
new/obj/item/pots/health/pot1,\
new/obj/item/pots/health/pot2,\
new/obj/item/pots/health/pot3,\
new/obj/item/pots/health/pot4,\
new/obj/item/pots/mana/pot1,\
new/obj/item/pots/mana/pot2,\
new/obj/item/pots/mana/pot3,\
new/obj/item/pots/mana/pot4,\
new/obj/item/pots/resto/pot1,\
new/obj/item/pots/resto/pot2,\
new/obj/item/pots/resto/pot3,\
new/obj/item/pots/resto/pot4)

var/list/Skill_Shop=list(new/obj/item/bandage,\
new/obj/item/bandage2,\
new/obj/item/fishingrod,\
new/obj/item/digging/pickaxe,\
new/obj/item/digging/shovel)

proc
	onground(obj/O)
		spawn(600)
			if(!O)
				return
			else
				if(O.onground==1)
					del(O)

obj
	banned
obj
	var
		tmp/list
			Owners=list()
		tmp
			deps=0
		pushable=0
		turnable=0
		owner
		MaxStack=50
		StackAble=0
		selling_price=0
		OLDSUF=""
obj
	var
		IP=""
		Account=""
		ID=""
		Name=""
		tmp/onground=0
		PVPVALUE=0
	account


var/Players=0
var/MaxPlayers=30




proc
	FireDMG(mob/M,DMG)
		var/CA=0
		if(M.RepelFire==1)
			CA=1
		if(M.FireResist==1)
			CA=1
		if(prob(0.5))
			CA=0
		if(CA==0)
			M.HP-=DMG
			Update(M)
			if(M.HP<=0)
				view(M)<<"<font color=red>[M] has burned to death in the scolding lava!"
				Player_Die(M)
mob
	var
		tmp
			list/merchant_shop=list()
			mob/merchantshopping
			BankLoaded=0
			GuildBanking=0
			list/tradelist=list()
			RepelFire=0
			RepelPoison=0
			ScanOn=0
			inbooth=0
			intrade=0
			Chargeing=0
			hidden=0
			SOGE_E=0

			Poisoned=0
		//Settings
		ATTACKABLE=1
		SERVERCOM=1
		BUMPATT=0
		GMWHO=1
		list/IGNORED=list()
		BPS=1
		GPS=1
		MPS=1
		SKS=0
		PK_QUEST=0

		FireResist=0
		PoisonResist=0



		//
		Skin
		doo_rag
		PVP_POINTS=0
		EXPTNL=100
		EXPUS=0
		tmp/GuildFund=0
		tmp/respawn=1
		tmp/CanStance=1
		tmp/Fishing=0
		HasTeleLoriel=0
		HasTeleNortikos=0
		HasTeleArkelena=0
		HASH="NONE"
		HOBQUEST=0
		HOBQUESTFINISHED=0

		SWIFTCLAWS=0

		SlimeQuest=0
		BoxQuest=0
		BoxQuestFinished=0

		TWQUEST=0
		TWQUESTFINISHED=0

		TW2QUEST=0
		TW2QUESTFINISHED=0
		MinoKNIGHTS=0
		MinoKINGS=0

		GOLDRING=0
		tmp
			SummoningLS=0
			BUILDING=0
			BUILDINGWHAT
			Guild
			HASGB=0
			GLEAD=0
			GCOLOR="#000000"
			beingattacked=0
			Shielded=0
			ShieldedType="Nothing"
		ArmorEffect="Nothing"
		WeaponEffect="Nothing"
		ShieldEffect="Nothing"
		PlayerVersion=23
		RingEffect="Nothing"
		TalentPoints=0
		WalkEffect="Nothing"
		tmp
			Bandaged=0
			list/OLDO=list()
			list/OLDU=list()
		tmp/SingingSong="None"
		tmp/Singing=0
		tmp/SummoningSF=0
		mob/pet
		Fights=1
		SavePath
		HP=100
		HPMAX=100
		Power=15
		Guard=10
		AddedGuard=0
		Deaths=0
		Kills=0
		Player_Kills=0
		TotalGoldEver=0
		Exp=0
		ExpMax=100
		Gender="male"
		PVP=0
		Level=1
		tmp/GM=0
		Class=""
		SP=5
		SPMAX=5
		MaxItems=25
		Gold=0
		SUBACCESS=0
		StartingLocation="Training Ground"
		Isnoob=1
		MoveSpeed=2
		BankedGold=0
		AddedPower=0
		Stamina=100
		StaminaMax=100

		NoobTest1=0//Kill a monster
		NoobTest2=0//Buy equipment
		NoobTest3=0//Store Gold
		NoobTest4=0//Train Skills
		TrainingComplete=0
		AttackDelay=6
		tmp/CanAttack=1
		Alignment="Nuteral"
		camefrom

		//Skills
		FirstAidlvl=1
		Fishinglvl=1
		Meditatinglvl=1
		Mininglvl=1
		Craftinglvl=1
		HandtoHandlvl=1
		Bashinglvl=1
		Piercinglvl=1
		Slicinglvl=1
		Crushinglvl=1
		Missilelvl=1


		FirstAidlvlup=3
		Fishinglvlup=3
		Meditatinglvlup=3
		Mininglvlup=3
		Craftinglvlup=3
		HandtoHandlvlup=3
		Bashinglvlup=3
		Piercinglvlup=3
		Slicinglvlup=3
		Crushinglvlup=3
		Missilelvlup=3
		FirstAidcounter
		Fishingcounter
		Meditatingcounter
		Miningcounter
		Craftingcounter
		HandtoHandcounter
		Bashingcounter
		Piercingcounter
		Slicingcounter
		Crushingcounter
		Missilecounter
		AddedDelay=0

		list/Ignored=list()
		//Chat Color shit
		SayColor="Black"
		SayChatColor="Black"

		StatMaxLvl=100
		FAMaxLvl=250
		PlayedTime=0
		CharacterMade=""
		tmp
			AttackSound=null
			DieSound=null
			AFK=0
			AFKS


		tmp
			PickingSayColor=0

		//


		//SHOPS
		tmp/shoppednoob=0
		tmp/shoppedweapon=0
		tmp/shoppedfurniture=0
		tmp/shoppedarmor=0
		tmp/shopping=0
		tmp/shoppedscroll=0
		tmp/shoppedshield=0
		tmp/shoppeditem=0
		tmp/shoppedskill=0
		tmp/shoppedguild=0
		tmp/shoppedpvp=0
		tmp/shoppedmerchant=0


		list/Spells=list()


mob
	NPC
		FirstAidlvl=100
		Fishinglvl=100
		Meditatinglvl=100
		Mininglvl=100
		Craftinglvl=100
		HandtoHandlvl=100
		Bashinglvl=100
		Piercinglvl=100
		Slicinglvl=100
		Crushinglvl=100
		Missilelvl=100
var/MOTD = "Please report any glitches or bugs you find by using the submit suggestion verb."

obj
	var
		Value=0
		forsale=0
		SellValue=0
		stackable=0
		Guard=0
		PlayerOwned=0
proc
    AddCommas(Num as num)
        var/Tnum=num2text(round(Num),100000)
        var/l=length(Tnum)
        var/mod=1
        for(var/i=3,l>i,i+=3)
            var/first="[copytext(Tnum,1,length("[Tnum]")-(i-mod))]"
            var/second="[copytext(Tnum,length("[Tnum]")-(i-mod))]"
            Tnum="[first],[second]"
            mod--
        return Tnum


proc/converttime(timer)
	timer = round(timer/10, 1)
	var/hours = round(timer / 3600)
	var/days=0
	if(hours>=24)
		days=hours/24
		hours-=days*24
	timer %= 3600
	var/minutes = round(timer / 60)
	timer %= 60
	if(minutes <= 10)
		minutes = "[minutes] minutes"
	else
		minutes = "[minutes] minutes"
	if(timer <= 10)
		timer = "[timer] seconds"
	else
		timer = "[timer] seconds"
	if(hours >= 1) hours = "[hours] hour"
	if(minutes == 1) minutes = "1 minute"
	if(minutes == 0) minutes = "No minutes"
	if(timer == 1) timer = "1 second"
	if(days >=1)
		days="[days] days"
	if(hours == 0)
		return "[minutes] and [timer]"
	else
		if(days>0)
			return "[days], [hours], [minutes] and [timer]"
		else
			return "[hours], [minutes] and [timer]"



obj
	var
		tmp
			cash_sale=0

proc
	Load_Stores()
		for(var/obj/O in Cash_Armor)
			O.cash_sale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Coin"
		for(var/obj/O in Furniture_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Noob_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Weapon_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Armor_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Skill_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"


		for(var/obj/O in Shield_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Item_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in Guild_Shop)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"

		for(var/obj/O in PVP_SHOP)
			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.PVPVALUE)] PvP Points"

		for(var/obj/O in Scroll_Shop)
			if(O.type==/obj/item/bones)
				O.Value=10
			if(O.type==/obj/item/ees)
				O.Value=400
			if(O.type==/obj/item/fes)
				O.Value=400
			if(O.type==/obj/item/aes)
				O.Value=400
			if(O.type==/obj/item/wes)
				O.Value=400

			O.forsale=1
			O.suffix="<font color=#D4A017>[AddCommas(O.Value)] Gold"
proc
	Go_Home(mob/M)
		if(M.StartingLocation=="Training Ground")
			M.loc=locate(/turf/Towns/Training_Grounds)
		if(M.StartingLocation=="Training Grounds")
			M.loc=locate(/turf/Towns/Training_Grounds)
		if(M.StartingLocation=="StartingLocation")
			M.loc=locate(/turf/Towns/Training_Grounds)
		if(M.StartingLocation=="Loriel")
			M.loc=locate(/turf/Towns/Loriel)
		if(M.StartingLocation=="Tavel")
			M.loc=locate(/turf/Towns/Tavel)

		if(M.StartingLocation=="Ecaria")
			M.loc=locate(/turf/Towns/Ecaria)
		if(M.StartingLocation=="Arkelena")
			M.loc=locate(/turf/Towns/Arkelena)
		if(M.StartingLocation=="Nortikos")
			M.loc=locate(/turf/Towns/Nortikos)
		if(M.StartingLocation=="Subscriber")
			M.loc=locate(/turf/Towns/Subscriber)
		if(M.haspet==1)
			SummonPet(M)


mob
	var
		tmp
			oldtarget
			Targetsign
			target


proc
	info(T as text)
		set hidden=1
		world << "<font face=Arial><u>INFO</u>:<font face=New Times Roman><font color=maroon> [T]"


mob
	Click()
		..()
		if(get_step(usr,src))
			if(src.name=="BackGround")
				return
			if(usr.Targetsign)
				del usr.Targetsign
			usr.target=src
			usr.Target(usr)
mob
	proc
		Target(mob/U)
			if(U.oldtarget==U.target)
				U.oldtarget=null
				U.target=null
				if(U.Targetsign)
					del U.Targetsign
			else
				U.oldtarget=U.target
				if(U.Targetsign)
					del U.Targetsign
				for(var/mob/M in view(10))
					if(U.target==M)
						var/image/I=image('life2.dmi',M,icon_state="FLASH3")
						if(M.Level<usr.Level)
							if(M.Level+10<usr.Level)
								I=image('life2.dmi',M,icon_state="FLASH0")
							else
								I=image('life2.dmi',M,icon_state="FLASH1")
						else
							if(usr.Level<M.Level)
								if(M.Level+5<M.Level)
									I=image('life2.dmi',M,icon_state="FLASH4")
								else
									if(M.Level+10<M.Level)
										I=image('life2.dmi',M,icon_state="FLASH5")
						I.layer=35
						I.pixel_y=2
						U.Targetsign=I
						U<<I