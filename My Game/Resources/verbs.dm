
mob
	var
		ServerTalkOn=1
mob/Player
	verb
		item_inf(obj/O in usr.contents)
			set name="item info"
			set desc="find information on an item you are carrying."
			usr<<"[item_info(O)]"
		tell()
			set desc="privately talk to someone"
			var/list/PL=list()
			for(var/mob/M in world)
				if(M.client)
					PL+=M
			var/mob/S=input("Privately talk to someone","Tell mob")in PL+"Cancel"
			if(S=="Cancel")
				return
			else
				var/T=input("Privately talk to someone","Tell [S]")as null|text
				if(!T)
					return
				else
					if(Muted.Find(usr.name))
						usr<<"You cannot speak when you are muted."
						return
					else
						if(findtext(T,"\n")==0)
							if(findtext(T,"byond://")==0)
								S<<"<font color=#00BBBB><B>[usr.name]: </B><font color=black>[html_encode(T)]"
								usr<<"<font color=#790079><B>[usr.name]: </B><font color=black>[html_encode(T)]"
		submit_suggestion(t as message)
			set desc="Submit your suggestion or bug report here."
			text2file(" ","Suggestions.txt")
			text2file(" ","Suggestions.txt")
			text2file("[usr.name]([usr.key])  [t]","Suggestions.txt")

		afk()
			set desc="go afk"
			stopsinging(usr)
			if(usr.party_following!="NONE")
				usr<<"You stop following [usr.party_following]."
				usr.party_following="NONE"
				walk_to(usr,0)
				walk_towards(usr,0)
			if(usr.AFK==0)
				usr.AFK=1
				var/obj/o=new
				o.name=null
				o.layer=15
				o.icon='AFK.dmi'
				o.icon_state=pick("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16")
				usr.AFKS=o
				usr.overlays+=usr.AFKS
			else
				usr.AFK=0
				usr.overlays-=usr.AFKS
		emote(t as text)
			set desc="a custom action"
			if(!t)
				return
			else
				if(Muted.Find(usr.name))
					usr<<"You cannot speak when you are muted."
					return
				else
					if(findtext(t,"\n")==0)
						if(findtext(t,"byond://")==0)
							for(var/mob/Player/M in view(usr))
								var/CON=1
								if(M.IGNORED.Find(usr.key))
									CON=0
								if(CON==1)
									M<<"<font color=#FFD551>[usr.name] [html_encode(t)]"
		drop_gold(n as num)
			set desc="drop some of your money"
			if(n<0)
				return
			if(n<=0)
				return
			else
				if(n>usr.Gold)
					return
				else
					var/FG=0
					for(var/obj/Gold/GL in usr.loc)
						FG=1
						GL.amount+=n
						usr.Gold-=n
						GL.StackShit(GL)
						usr.DisplayGold()
					if(FG==0)
						var/obj/Gold/G=new
						G.amount=n
						usr.Gold-=n
						G.loc=usr.loc
						G.StackShit(G)
						usr.DisplayGold()
		switchtab()
			set hidden=1
			usr<<sound('switch.wav')
		who()
			var/tmp/count=0
			usr<<"<font size=1>----------<B>Players</B>----------"
			for(var/mob/Player/M in world)
				if(M.hidden==0)
					var/MobAddon=""
					var/KEYSHOW=""
					var/AFKSY=""
					var/GMADD=""
					if(M.GM==56)
						MobAddon="<font color=#19C416 size=1>\[GM]</font>"
					if(M.GM==19)
						MobAddon="<font color=blue size=1>\[HOST]</font>"
					if(M.GM==10)
						MobAddon="<font color=blue size=1>\[GM]</font>"
					if(M.AFK==1)
						AFKSY="<font color=green size=1><b>(AFK)</b></font>"
					if(M.doo_rag)
						KEYSHOW=M.doo_rag
					else
						KEYSHOW=M.key
					if(usr.GMWHO==1)
						if(usr.GM>0)
							GMADD=" <a href=\"?Ban[M.name]\">\[Ban]</a> <a href=\"?Boot[M.name]\">\[Boot]</a> <a href=\"?Mute[M.name]\">\[Mute]</a> <a href=\"?Goto[M.name]\">\[Goto]</a> <a href=\"?Summon[M.name]\">\[Summon]</a>"
					if(M.client)
						count++
						if(M.SUBACCESS==1)
							if(M.Guild)
								if(M.GLEAD==1)
									usr<<"[AFKSY]<font size=1>* [MobAddon]<b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=#365151><u>\"[M.Guild]\"</u> <font color=Black>([KEYSHOW])[GMADD]"
								else
									usr<<"[AFKSY]<font size=1>* [MobAddon]<b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=#365151>\"[M.Guild]\" <font color=Black>([KEYSHOW])[GMADD]"
							else
								usr<<"[AFKSY]<font size=1>* [MobAddon]<b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=Black>([KEYSHOW])[GMADD]"
						else
							if(M.Guild)
								if(M.GLEAD==1)
									usr<<"[AFKSY][MobAddon]<font size=1><b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=#365151><u>\"[M.Guild]\"</u> <font color=Black>([KEYSHOW])[GMADD]"
								else
									usr<<"[AFKSY][MobAddon]<font size=1><b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=#365151>\"[M.Guild]\" <font color=Black>([KEYSHOW])[GMADD]"
							else
								usr<<"[AFKSY][MobAddon]<font size=1><b>[M.name]</b> <font color=#0850AF> Lvl [AddCommas(M.Level)] <font color=red>[M.Class] <font color=Black>([KEYSHOW])[GMADD]"
			usr<<"<font size=1>----------<B>\[Total: [AddCommas(count)]]</B>----------"
mob
	Player
		verb
			Ignore()
				set desc="Ignore a person in the world"
				switch(alert(usr,"What do you want to do?","Ignore","Add","Remove","Cancel"))
					if("Add")
						var/list/KEYS=list()
						for(var/mob/Player/P in world)
							var/ADD=1
							if(usr.IGNORED.Find(P.key))
								ADD=0
							if(ADD==1)
								KEYS+=P.key
						var/DICKS=input("Who do you want to ignore?","Ignore")in KEYS+"Cancel"
						switch(DICKS)
							if("Cancel")
								return
							else
								switch(alert(usr,"Are you sure you want to ignore [DICKS]?","Ignore [DICKS]","Yes","No"))
									if("Yes")
										usr<<"You have added [DICKS] to your ignore list."
										usr.IGNORED.Add(DICKS)
									if("No")
										return
					if("Remove")
						if(IGNORED.len<=0)
							usr<<"Your ignore list is empty."
							return
						var/TAKE=input("Who do you want to remove from your ignore list?","Ignore - Remove")in IGNORED+"Cancel"
						if(TAKE=="Cancel")
							return
						else
							usr<<"You have removed [TAKE] from your ignore list."
							for(var/D in usr.IGNORED)
								if(D==TAKE)
									usr.IGNORED.Remove(D)


			settings()
				set hidden=1
				var/list/LIST2=list()
				LIST2+="Bump Attack"
				if(usr.SUBACCESS==1)
					LIST2+="Change Hairstyle"
					LIST2+="Change Skin"
				if(usr.GM>0)
					LIST2+="GM Who"
				var/S=input("Choose a setting you would like to change","Settings")in list("Chat Channels","Tabs")+LIST2+"Cancel"

				if(S=="GM Who")
					switch(alert("This setting will turn off the who gm commands for easy access, I do not recommend turning this off for new gms","GM Who","ON","OFF"))
						if("ON")
							usr.GMWHO=1
							usr<<"GM Who enabled."
						if("OFF")
							usr.GMWHO=0
							usr<<"GM Who disabled."
				if(S=="Bump Attack")
					switch(alert("This will allow your character to attack things by walking into them","Bump Attack","ON","OFF"))
						if("ON")
							usr<<"Bump Attack enabled."
							usr.BUMPATT=1
						if("OFF")
							usr<<"Bump Attack disabled."
							usr.BUMPATT=0
				if(S=="Change Hairstyle")
					if(usr.Gender=="male")
						ChooseHairMale(usr)
						ResetOverlays(usr)
					else
						ChooseHairFemale(usr)
						ResetOverlays(usr)
				if(S=="Change Skin")
					switch(alert(usr,"What type of skin do you want?","Skin","White","Black"))
						if("White")
							usr.Skin=null
							ResetOverlays(usr)
						if("Black")
							usr.Skin="Black"
							ResetOverlays(usr)
				if(S=="Cancel")
					return
				if(S=="Chat Channels")
					var/list/CC=list("Server Chat")
					if(usr.GM>0)
						CC+="Servers Communicate"
					CC+="Cancel"
					var/T=input("Which channel will you toggle?","Settings")in CC
					if(T=="Cancel")
						settings()
					if(T=="Servers Communicate")
						if(usr.SERVERCOM==0)
							usr.SERVERCOM=1
							usr<<"Server Communicate is now on."
						else
							usr.SERVERCOM=0
							usr<<"Server Communicate is now off."
					if(T=="Server Chat")
						if(usr.TrainingComplete==0)
							return
						else
							if(usr.ServerTalkOn==0)
								usr.ServerTalkOn=1
								usr<<"Server talk is now on."
								usr.verbs+=/mob/Player/verb/talk
							else
								usr.ServerTalkOn=0
								usr<<"Server talk is now off."
								usr.verbs-=/mob/Player/verb/talk
				if(S=="Tabs")
					var/TS=input("What tab will you change?","Settings")in list("BackPack","Guild","Magic","Skills","Cancel")
					if(TS=="BackPack")
						if(usr.BPS==1)
							usr.BPS=0
						else
							usr.BPS=1
					if(TS=="Guild")
						if(usr.GPS==1)
							usr.GPS=0
						else
							usr.GPS=1
					if(TS=="Magic")
						if(usr.MPS==1)
							usr.MPS=0
						else
							usr.MPS=1
					if(TS=="Skills")
						if(usr.SKS==1)
							usr.SKS=0
						else
							usr.SKS=1
					if(TS=="Cancel")
						settings()
			PickSayColor()
				set hidden=1
				SayColor=input("Please pick the color for your name for the say command","Name - Say Colors",usr.SayColor)as color
				SayChatColor=input("Please pick the color for your text for the say command","Text - Say Colors",usr.SayChatColor)as color
			talk(t as text)
				set category="Channels"
				set name="server talk"
				set desc="send a message through the chat channel"
				if(WORLDCHAT==0)
					return
				if(!t)
					return
				else
					if(Muted.Find(usr.name))
						usr<<"You cannot speak when you are muted."
						return
					else
						for(var/mob/Player/M in world)
							var/CON=1
							if(M.IGNORED.Find(usr.key))
								CON=0
							if(CON==1)
								if(M.ServerTalkOn==1)
									if(findtext(t,"\n")==0)
										if(findtext(t,"byond://")==0)
											M<<"<font color=navy>(World)<B>[usr.name]</font>:</B> [html_encode(t)]"
			say(t as text)
				set desc="talk to people arround you"
				if(!t)
					return
				else
					if(Muted.Find(usr.name))
						usr<<"You cannot speak when you are muted."
						return
					else
						if(t=="animus irretitus intus liber crepundia")
							var/FL=0
							if(usr in locate(19,127,4))
								for(var/obj/item/doll/d in locate(19,127,4))
									del(d)
									FL=1
							if(FL==1)
								usr<<"<b><font color=#FFD551>A strange presence joins you..."
								usr.SummoningSF=1
								return
						if(t=="vocare antiquus potentia")
							var/FL=0
							if(usr in locate(146,74,2))
								for(var/obj/item/voodoo/d in locate(146,74,2))
									del(d)
									FL=1
							if(FL==1)
								usr<<"<b><font color=#FFD551>A strange presence joins you..."
								usr.SummoningLS=1
								return
						for(var/mob/Player/M in view(usr))
							var/CST=1
							if(M.IGNORED.Find(usr.key))
								CST=0
							if(Muted.Find(M.name))
								CST=0
							if(CST==1)
								if(findtext(t,"\n")==0)
									if(findtext(t,"byond://")==0)
										M<<"<b><font color=[M.SayColor]>[usr.name]</font><font color=[M.SayChatColor]>:</b> <font color=[M.SayChatColor]>[html_encode(t)]"

			game_stats()
				set desc = "see info about the world"
				//#c8c077
				usr << "<b><font color=#365151 size=3>World Status</b></font>"
				usr << "<b><font color=#365151 size=2>CPU: </b><font color=#365151 size=2>[round(world.cpu)]</font>"//[round(world.cpu/100*100)]
				usr << "<b><font color=#365151 size=2>Byond Version: </b><font color=#365151 size=2>[world.byond_version]</font>"
				usr << "<b><font color=#365151 size=2>Version: </b><font color=#365151 size=2>[Server_Version] hosted by: [gamehost]</font>"
				usr << "<b><font color=#365151 size=2>Address: </b><a href=byond://[world.internet_address]:[world.port]>byond://[world.internet_address]:[world.port]<a></font>"
				usr << "<b><font color=#365151 size=2>Time Hosted: </b><font color=#365151 size=2>[converttime(world.time)]</font>"
				var/count = 0
				var/GMs = 0
				var/logins=0
				for(var/mob/Player/M as mob in world)
					if(M.client)
						count ++
						if(M.GM >= 1)
							GMs ++
				for(var/mob/BaseCamp/ChoosingCharacter/M in world)
					if(M.client)
						logins ++
				count-=GMs
				usr << "<b><font color=#365151 size=2>Players Logging In: </b><font color=#365151 size=2>[logins]</font>"
				usr << "<b><font color=#365151 size=2>Players Connected: </b><font color=#365151 size=2>[count]</font>"
				usr << "<b><font color=#365151 size=2>GMs Connected: </b><font color=#365151 size=2>[GMs]</font>"


			help()
				switch(input("What do you need help on?","Help")in list("Message of the day","Updates","Fix Equipment"))
					if("Fix Equipment")
						usr.fixequip()
					if("Message of the day")
						alert(usr,"[MOTD]","Message of the day!")



					if("Updates")
						usr<<browse(Updates,"window=name;file=name;display=1; size=300x300;border=0;can_close=1; can_resize=1;can_minimize=1;titlebar=1")










			drop(obj/O in usr.contents)
				if(O.deps==1)
					return
				if(O.loc!=usr)
					return
				if(O.dropable==0)
					switch(alert(usr,"Dropping this item will delete it. Drop it anyway?","[src.name]","No","Yes"))
						if("No")
							return
						if("Yes")
							if(istype(O,/obj/item/QUEST/box))
								usr.BoxQuest=0
								usr.BoxQuestFinished=0
							del(O)
							return
				if(O.suffix=="<font color=blue>Equipped")
					return
				else
					if(O.StackAble==1)
						var/how_many=input("How many [O.name] do you want to drop?","Drop [O.name]",O.amount)as null|num
						if(how_many==0)
							return
						if(how_many<0)
							return
						if(how_many>O.amount)
							return
						if(how_many==O.amount)
							O.SPELL_SLOT=0
							O.loc=usr.loc
							O.layer=OBJ_LAYER
							O.StackShit(O)
						else
							var/found=0
							for(var/obj/LL in usr.loc)
								if(LL.name==O.name)
									if(LL.amount+how_many<=LL.MaxStack)
										LL.amount+=how_many
										LL.suffix="<font color=blue>x[LL.amount]"
										found=1
										LL.StackShit(LL)
										LL.layer=OBJ_LAYER
										break
							if(found==0)
								var/obj/K=new O.type
								K.amount=how_many
								K.suffix="<font color=blue>x[K.amount]"
								K.layer=OBJ_LAYER
								K.SPELL_SLOT=0
								K.loc=usr.loc
								K.StackShit(K)
							O.amount-=how_many
							O.suffix="<font color=blue>x[O.amount]"
					else
						O.layer=OBJ_LAYER
						O.SPELL_SLOT=0
						var/ADD=0
						if(O.Owners.Find("[usr.name]([usr.key]) - [usr.client.address]"))
							ADD=1
						if(ADD==0)
							O.Owners.Add("[usr.name]([usr.key]) - [usr.client.address]")
						O.loc=usr.loc
						O.StackShit(O)
					Displayspells(usr)

			Logoutofgame()
				set name="logout"
				set desc="Logout to the title screen"
				if(usr.logoutn==1)
					return
				usr.logoutn=1
				var/Slept=-1
				var/Sleepto=15
				while(Slept<Sleepto)
					if(usr.logoutn==0)
						usr<<"Logout canceled."
						break
					else
						Slept++
						usr<<"Logging out in...[Sleepto-Slept]"
						if(Slept>=Sleepto)
							var/mob/Player/P=usr
							P.SavePlayer()
							sleep(5)
							for(var/O in usr.client.screen)
								del(O)
							var/mob/BaseCamp/ChoosingCharacter/N=new
							N.clickedlogin=0
							usr.client.mob=N
					sleep(10)

mob
	var
		tmp
			logoutn=0