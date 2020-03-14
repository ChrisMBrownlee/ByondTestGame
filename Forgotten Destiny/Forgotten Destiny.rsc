�{   >r�*=;l^��i^�{  Aesthetics\byond.dmf macro "macro"
	elem 
		name = "Center+REP"
		command = ".center"
	elem 
		name = "Northeast+REP"
		command = ".northeast"
	elem 
		name = "Southeast+REP"
		command = ".southeast"
	elem 
		name = "Southwest+REP"
		command = ".southwest"
	elem 
		name = "Northwest+REP"
		command = ".northwest"
	elem 
		name = "West+REP"
		command = ".west"
	elem 
		name = "North+REP"
		command = ".north"
	elem 
		name = "East+REP"
		command = ".east"
	elem 
		name = "South+REP"
		command = ".south"
	elem 
		name = "ALT+1+REP"
		command = "one"
	elem 
		name = "ALT+2+REP"
		command = "two"
	elem 
		name = "ALT+3+REP"
		command = "three"
	elem 
		name = "ALT+4+REP"
		command = "four"
	elem 
		name = "ALT+A+REP"
		command = "Attack"
	elem 
		name = "ALT+G+REP"
		command = "get"
	elem 
		name = "F1+REP"
		command = ".options"
	elem 
		name = "F2+REP"
		command = ".screenshot"


menu "menu"
	elem 
		name = "&File"
		command = ""
		saved-params = "is-checked"
	elem 
		name = "&Options and Messages...\tF1"
		command = ".options"
		category = "&File"
		saved-params = "is-checked"
	elem 
		name = "&Save screenshot...\tF2"
		command = ".screenshot"
		category = "&File"
		saved-params = "is-checked"
	elem 
		name = "&Quit"
		command = ".quit"
		category = "&File"
		saved-params = "is-checked"
	elem 
		name = "&Icons"
		command = ""
		saved-params = "is-checked"
	elem "stretch"
		name = "&Stretch to fit"
		command = ".winset \"mapwindow.map.icon-size=0\""
		category = "&Icons"
		is-checked = true
		can-check = true
		group = "size"
		saved-params = "is-checked"
	elem "icon32"
		name = "&32x32"
		command = ".winset \"mapwindow.map.icon-size=32\""
		category = "&Icons"
		can-check = true
		group = "size"
		saved-params = "is-checked"
	elem "icon16"
		name = "&16x16"
		command = ".winset \"mapwindow.map.icon-size=16\""
		category = "&Icons"
		can-check = true
		group = "size"
		saved-params = "is-checked"
	elem 
		name = ""
		command = ""
		category = "&Icons"
		saved-params = "is-checked"
	elem "textmode"
		name = "&Text"
		command = ".winset \"menu.textmode.is-checked=true?mapwindow.map.text-mode=true:mapwindow.map.text-mode=false\""
		category = "&Icons"
		can-check = true
		saved-params = "is-checked"
	elem 
		name = "Game"
		command = ""
		saved-params = "is-checked"
	elem 
		name = "Game Stats"
		command = "game-stats"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Who"
		command = "who"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Help"
		command = "Help"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Say"
		command = "say"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Logout"
		command = "Logout"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Get"
		command = "get"
		category = "Game"
		saved-params = "is-checked"
	elem 
		name = "Drop"
		command = "drop"
		category = "Game"
		saved-params = "is-checked"


window "ArmorS"
	elem "ArmorS"
		type = MAIN
		pos = 281,0
		size = 640x380
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-minimized;is-maximized"
		title = "Armor"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
		can-scroll = vertical
	elem "CARMOR"
		type = GRID
		pos = 0,0
		size = 640x380
		anchor1 = 0,0
		anchor2 = 100,100
		font-family = "serif"
		font-style = "bold"
		background-color = #ab7818
		saved-params = ""
		cells = 2x300
		current-cell = 1,1
		show-lines = none
		small-icons = true
		enable-http-images = true
		highlight-color = #000000

window "Bank"
	elem "Bank"
		type = MAIN
		pos = 281,0
		size = 248x328
		anchor1 = none
		anchor2 = none
		background-color = #936715
		is-visible = false
		saved-params = "pos;size;is-maximized"
		title = "Bank"
		statusbar = false
		can-minimize = false
		can-resize = false
		on-close = "close-bank"
	elem "bankgrid"
		type = GRID
		pos = 0,32
		size = 248x256
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		background-color = #835b12
		border = line
		saved-params = ""
		cells = 1x1
		current-cell = 1,1
		show-lines = none
		enable-http-images = true
		highlight-color = #000000
	elem "bankedgoldshow"
		type = LABEL
		pos = 56,288
		size = 120x20
		anchor1 = none
		anchor2 = none
		text-color = #e9bb67
		background-color = #7e5812
		border = line
		saved-params = ""
		text = "Gold: 0"
	elem "button14"
		type = BUTTON
		pos = 116,308
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Deposit"
		command = "bank-depositgold"
		is-flat = true
	elem "spacecount"
		type = LABEL
		pos = 176,288
		size = 72x40
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		background-color = #966514
		border = line
		saved-params = ""
		text = "Space:0/30"
	elem "label7"
		type = LABEL
		pos = 72,0
		size = 112x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #6d4d10
		border = line
		saved-params = ""
		text = "Banked Items"
	elem "button16"
		type = BUTTON
		pos = 16,296
		size = 24x24
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #835b12
		border = line
		saved-params = "is-checked"
		text = "X"
		command = "close-bank"
		is-flat = true
	elem "button17"
		type = BUTTON
		pos = 56,308
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Withdraw"
		command = "bank-withdrawgold"
		is-flat = true
	elem "button18"
		type = BUTTON
		pos = 184,0
		size = 64x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Deposit Item"
		command = "Deposit-Item"
		is-flat = true
	elem "button15"
		type = BUTTON
		pos = -4,0
		size = 76x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Withdraw  Item"
		command = "Withdraw-Item"
		is-flat = true

window "GM"
	elem "GM"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		title = "GM"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "GMC"
		type = OUTPUT
		pos = 0,0
		size = 640x464
		anchor1 = 0,0
		anchor2 = 100,100
		font-size = 8
		text-color = #00cc00
		background-color = #000000
		saved-params = "max-lines"
		visited-color = #990099
		enable-http-images = true
	elem "input1"
		type = INPUT
		pos = 0,464
		size = 640x16
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "serif"
		font-size = 7
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #080808
		border = line
		saved-params = ""
		command = "gm-chat"

window "GuildBank"
	elem "GuildBank"
		type = MAIN
		pos = 281,0
		size = 248x328
		anchor1 = none
		anchor2 = none
		background-color = #936715
		is-visible = false
		saved-params = "pos;size;is-maximized"
		title = "Guild Bank"
		statusbar = false
		can-minimize = false
		can-resize = false
		on-close = "gclose-bank"
	elem "gbankgrid"
		type = GRID
		pos = 0,32
		size = 248x256
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		background-color = #835b12
		border = line
		saved-params = ""
		cells = 1x1
		current-cell = 1,1
		show-lines = none
		enable-http-images = true
	elem "gbankedgoldshow"
		type = LABEL
		pos = 56,288
		size = 120x20
		anchor1 = none
		anchor2 = none
		text-color = #e9bb67
		background-color = #7e5812
		border = line
		saved-params = ""
		text = "Gold: 0"
	elem "button14"
		type = BUTTON
		pos = 116,308
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Deposit"
		command = "bank-depositgold"
		is-flat = true
	elem "gspacecount"
		type = LABEL
		pos = 176,288
		size = 72x40
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		background-color = #966514
		border = line
		saved-params = ""
		text = "Space:0/30"
	elem "label7"
		type = LABEL
		pos = 72,0
		size = 112x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		font-style = "italic"
		text-color = #df9d24
		background-color = #6d4d10
		border = line
		saved-params = ""
		text = "Guild Bank"
	elem "button17"
		type = BUTTON
		pos = 56,308
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Withdraw"
		command = "bank-withdrawgold"
		is-flat = true
	elem "button18"
		type = BUTTON
		pos = 184,0
		size = 64x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Deposit Item"
		command = "Deposit-Item"
		is-flat = true
	elem "button15"
		type = BUTTON
		pos = -4,0
		size = 76x32
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #8b5e12
		border = line
		saved-params = "is-checked"
		text = "Withdraw  Item"
		command = "Withdraw-Item"
		is-flat = true
	elem "label42"
		type = LABEL
		pos = 14,296
		size = 26x26
		anchor1 = none
		anchor2 = none
		background-color = #000000
		border = line
		saved-params = ""
		text = ""
	elem "button37"
		type = BUTTON
		pos = 15,297
		size = 24x24
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #df9d24
		background-color = #835b12
		border = line
		saved-params = "is-checked"
		text = "X"
		command = "gclose-bank"
		is-flat = true

window "HIDDENSHIT"
	elem "HIDDENSHIT"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		is-visible = false
		saved-params = "pos;size;is-maximized"
	elem "hiddenbrowser"
		type = BROWSER
		pos = 0,0
		size = 200x200
		anchor1 = none
		anchor2 = none
		saved-params = ""

window "chatsplit"
	elem "chatsplit"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "chattabs"
		type = TAB
		pos = 0,0
		size = 640x480
		anchor1 = 0,0
		anchor2 = 100,100
		font-family = "serif"
		font-size = 8
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		saved-params = ""
		tabs = "outputwindow"
		current-tab = "outputwindow"

window "deletechar"
	elem "deletechar"
		type = MAIN
		pos = 281,0
		size = 421x480
		anchor1 = none
		anchor2 = none
		background-color = #ab7818
		is-visible = false
		saved-params = "pos;size;is-minimized;is-maximized"
		title = "Character Deletion"
		statusbar = false
		can-minimize = false
		can-resize = false
		on-close = "DeleteClose"
	elem "label1"
		type = LABEL
		pos = 0,0
		size = 421x20
		anchor1 = 0,0
		anchor2 = 100,0
		font-family = "Comic Sans MS"
		font-size = 8
		font-style = "bold"
		background-color = #936715
		border = line
		saved-params = ""
		text = "Which character will you abandon?"
	elem "label2"
		type = LABEL
		pos = 0,20
		size = 20x460
		anchor1 = 0,0
		anchor2 = 0,100
		background-color = #835b12
		border = line
		saved-params = ""
		text = ""
	elem "label3"
		type = LABEL
		pos = 402,20
		size = 20x460
		anchor1 = 100,0
		anchor2 = 100,100
		background-color = #835b12
		border = line
		saved-params = ""
		text = ""
	elem "label4"
		type = LABEL
		pos = 0,460
		size = 421x20
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "Comic Sans MS"
		font-size = 8
		font-style = "bold"
		background-color = #936715
		border = line
		saved-params = ""
		text = ""

window "guild"
	elem "guild"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		title = "Guild"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "guildchat"
		type = OUTPUT
		pos = 0,0
		size = 640x464
		anchor1 = 0,0
		anchor2 = 100,100
		background-color = #aa7a1a
		saved-params = "max-lines"
		enable-http-images = true
	elem "input2aa"
		type = INPUT
		pos = 0,464
		size = 640x16
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "serif"
		font-size = 7
		font-style = "bold"
		text-color = #e9bb67
		background-color = #a07418
		border = line
		saved-params = ""
		command = "guild-speak"

window "loadchar"
	elem "loadchar"
		type = MAIN
		pos = 281,0
		size = 421x480
		anchor1 = none
		anchor2 = none
		background-color = #ab7818
		is-visible = false
		saved-params = "pos;size;is-minimized;is-maximized"
		title = "Prepare to enter the Realms of the Mystics!"
		statusbar = false
		can-minimize = false
		can-resize = false
		on-close = "LoadClose"
	elem "label1"
		type = LABEL
		pos = 0,0
		size = 421x20
		anchor1 = 0,0
		anchor2 = 100,0
		font-family = "Comic Sans MS"
		font-size = 8
		font-style = "bold"
		background-color = #936715
		border = line
		saved-params = ""
		text = "Who do you want to be today?"
	elem "label2"
		type = LABEL
		pos = 0,20
		size = 20x460
		anchor1 = 0,0
		anchor2 = 0,100
		background-color = #835b12
		border = line
		saved-params = ""
		text = ""
	elem "label3"
		type = LABEL
		pos = 402,20
		size = 20x460
		anchor1 = 100,0
		anchor2 = 100,100
		background-color = #835b12
		border = line
		saved-params = ""
		text = ""
	elem "label4"
		type = LABEL
		pos = 0,460
		size = 421x20
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "Comic Sans MS"
		font-size = 8
		font-style = "bold"
		background-color = #936715
		border = line
		saved-params = ""
		text = ""

window "mainwindow"
	elem "mainwindow"
		type = MAIN
		pos = 281,0
		size = 640x440
		anchor1 = none
		anchor2 = none
		background-color = #333333
		is-default = true
		saved-params = "pos;size;is-maximized"
		title = "3.5 simulator"
		image-mode = center
		macro = "macro"
		menu = "menu"
	elem "mainvsplit"
		type = CHILD
		pos = 3,0
		size = 634x400
		anchor1 = 0,0
		anchor2 = 100,100
		background-color = #000000
		saved-params = "splitter"
		right = "rpane"
		is-vert = true
	elem "input"
		type = INPUT
		pos = 0,424
		size = 522x16
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "Arial Black"
		font-size = 9
		text-color = #f8f8f8
		background-color = #080808
		is-default = true
		border = line
		saved-params = ""
	elem "saybutton"
		type = BUTTON
		pos = 522,424
		size = 40x16
		anchor1 = 100,100
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #5f5f5f
		saved-params = "is-checked"
		text = "Chat"
		command = ".winset \"saybutton.is-checked=true?input.command=\"!say \\\"\" macrobutton.is-checked=false:input.command=\""
		button-type = pushbox
	elem "macrobutton"
		type = BUTTON
		pos = 562,424
		size = 30x16
		anchor1 = 100,100
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #5f5f5f
		saved-params = "is-checked"
		text = "Alt"
		command = ".winset \"macrobutton.is-checked=true?input.command=\"!.alt \" saybutton.is-checked=false:input.command=\""
		button-type = pushbox
	elem "hostb"
		type = BUTTON
		pos = 592,424
		size = 47x16
		anchor1 = 100,100
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #5f5f5f
		saved-params = "is-checked"
		text = "Host..."
		command = ".host"
	elem "GM1"
		type = BUTTON
		pos = 570,404
		size = 23x20
		anchor1 = 100,100
		anchor2 = none
		is-visible = false
		border = line
		saved-params = "is-checked"
		text = ""
		command = "LockDown"
		is-flat = true
	elem "GM3"
		type = BUTTON
		pos = 616,404
		size = 23x20
		anchor1 = 100,100
		anchor2 = none
		is-visible = false
		border = line
		saved-params = "is-checked"
		text = ""
		command = "Shutdown"
		is-flat = true
	elem "GM2"
		type = BUTTON
		pos = 593,404
		size = 23x20
		anchor1 = 100,100
		anchor2 = none
		is-visible = false
		border = line
		saved-params = "is-checked"
		text = ""
		command = ""
		is-flat = true

window "mapwindow"
	elem "mapwindow"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "map"
		type = MAP
		pos = 0,0
		size = 640x480
		anchor1 = 0,0
		anchor2 = 100,100
		text-color = #000000
		is-default = true
		saved-params = "icon-size"
		on-show = ".winset\"mainwindow.mainvsplit.left=mapwindow\""
		on-hide = ".winset\"mainwindow.mainvsplit.left=\""

window "outputwindow"
	elem "outputwindow"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		background-color = #000000
		saved-params = "pos;size;is-maximized"
		title = "Main"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "output"
		type = OUTPUT
		pos = 0,0
		size = 640x480
		anchor1 = 0,0
		anchor2 = 100,100
		text-color = #f8f8f8
		background-color = #000000
		is-default = true
		saved-params = "max-lines"
		visited-color = #800080
		style = ".system {color:#ff0000;}"
		enable-http-images = true

window "rpane"
	elem "rpane"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		background-color = #000000
		saved-params = "pos;size;is-maximized"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
	elem "rpanewindow"
		type = CHILD
		pos = 0,0
		size = 638x480
		anchor1 = 0,0
		anchor2 = 100,100
		background-color = #000000
		saved-params = "splitter"
		right = "chatsplit"
		is-vert = false
	elem "textb"
		type = BUTTON
		pos = 0,0
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #5f5f5f
		is-visible = false
		saved-params = "is-checked"
		text = "Text"
		command = ".winset \"rpanewindow.left=;\""
		is-checked = true
		group = "rpanemode"
		button-type = pushbox
	elem "browseb"
		type = BUTTON
		pos = 65,0
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #5f5f5f
		is-visible = false
		saved-params = "is-checked"
		text = "Browser"
		command = ".winset \"rpanewindow.left=browserwindow\""
		group = "rpanemode"
		button-type = pushbox
	elem "infob"
		type = BUTTON
		pos = 130,0
		size = 60x20
		anchor1 = none
		anchor2 = none
		font-family = "Arial Black"
		font-size = 7
		text-color = #f8f8f8
		background-color = #808080
		is-visible = false
		saved-params = "is-checked"
		text = "Info"
		command = ".winset \"rpanewindow.left=infowindow\""
		group = "rpanemode"
		button-type = pushbox

window "browserwindow"
	elem "browserwindow"
		type = MAIN
		pos = 281,0
		size = 736x733
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		title = "Browser"
		statusbar = false
		is-pane = true
	elem "browser"
		type = BROWSER
		pos = 0,0
		size = 640x498
		anchor1 = 0,0
		anchor2 = 100,100
		background-color = #000000
		is-default = true
		saved-params = ""
		show-history = true
		show-url = true
		on-show = ".winset\"rpane.infob.is-visible=true?rpane.infob.pos=130,0;rpane.textb.is-visible=true;rpane.browseb.is-visible=true;rpane.browseb.is-checked=true;rpane.rpanewindow.pos=0,30;rpane.rpanewindow.size=0x0;rpane.rpanewindow.left=browserwindow\""
		on-hide = ".winset\"rpane.browseb.is-visible=false;rpane.infob.is-visible=true?rpane.infob.is-checked=true rpane.infob.pos=65,0 rpane.rpanewindow.left=infowindow:rpane.rpanewindow.left=textwindow rpane.textb.is-visible=false rpane.rpanewindow.pos=0,0 rpane.rpanewindow.size=0x0\""

window "infowindow"
	elem "infowindow"
		type = MAIN
		pos = 281,0
		size = 720x694
		anchor1 = none
		anchor2 = none
		saved-params = "pos;size;is-maximized"
		title = "Info"
		statusbar = false
		is-pane = true
	elem "info"
		type = INFO
		pos = 0,0
		size = 720x696
		anchor1 = 0,0
		anchor2 = 100,100
		text-color = #f8f8f8
		background-color = #000000
		is-default = true
		saved-params = ""
		highlight-color = #00aa00
		tab-text-color = #f8f8f8
		tab-background-color = #777777
		tab-font-family = "serif"
		tab-font-size = 8
		tab-font-style = "bold"
		on-show = ".winset\"rpane.infob.is-visible=true;rpane.browseb.is-visible=true?rpane.infob.pos=130,0:rpane.infob.pos=65,0 rpane.textb.is-visible=true rpane.infob.is-checked=true rpane.rpanewindow.pos=0,30 rpane.rpanewindow.size=0x0 rpane.rpanewindow.left=infowindow\""
		on-hide = ".winset\"rpane.infob.is-visible=false;rpane.browseb.is-visible=true?rpane.browseb.is-checked=true rpane.rpanewindow.left=browserwindow:rpane.textb.is-visible=false rpane.rpanewindow.pos=0,0 rpane.rpanewindow.size=0x0 rpane.rpanewindow.left=\""
		prefix-color = #f8f8f8
		suffix-color = #f8f8f8

window "team"
	elem "team"
		type = MAIN
		pos = 281,0
		size = 640x480
		anchor1 = none
		anchor2 = none
		background-color = none
		saved-params = "pos;size;is-maximized"
		title = "Team"
		titlebar = false
		statusbar = false
		can-close = false
		can-minimize = false
		can-resize = false
		is-pane = true
		outer-size = 654x494
	elem "teamchat"
		type = OUTPUT
		pos = 0,0
		size = 640x464
		anchor1 = 0,0
		anchor2 = 100,100
		text-color = #f8f8f8
		background-color = #000000
		saved-params = "max-lines"
		visited-color = #800080
		enable-http-images = true
	elem "input22dd"
		type = INPUT
		pos = 0,464
		size = 640x16
		anchor1 = 0,100
		anchor2 = 100,100
		font-family = "serif"
		font-size = 7
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #000000
		border = line
		saved-params = ""
		command = "group-speak"

window "trainer"
	elem "trainer"
		type = MAIN
		pos = 281,0
		size = 348x338
		anchor1 = none
		anchor2 = none
		background-color = #000000
		is-visible = false
		saved-params = "pos;size;is-minimized;is-maximized"
		title = "Trainer"
		can-resize = false
		on-close = "Stop-Training"
	elem "label45"
		type = LABEL
		pos = 20,40
		size = 308x280
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #333333
		border = line
		saved-params = ""
		text = ""
	elem "label46"
		type = LABEL
		pos = 120,44
		size = 88x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "Skills"
	elem "FAS"
		type = LABEL
		pos = 44,72
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "First Aid:"
		align = right
	elem "FA_S"
		type = LABEL
		pos = 108,72
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button42"
		type = BUTTON
		pos = 240,72
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "FA-ADD"
		is-flat = true
	elem "SPSHOW"
		type = LABEL
		pos = 184,308
		size = 160x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #080808
		background-color = #f8f8f8
		border = line
		saved-params = ""
		text = "300 SP"
	elem "label47"
		type = LABEL
		pos = 44,96
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Fishing:"
		align = right
	elem "Fish_S"
		type = LABEL
		pos = 108,96
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button43"
		type = BUTTON
		pos = 240,96
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "FISH-ADD"
		is-flat = true
	elem "label49"
		type = LABEL
		pos = 44,120
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Meditating:"
		align = right
	elem "Med_S"
		type = LABEL
		pos = 108,120
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button44"
		type = BUTTON
		pos = 240,120
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "MED-ADD"
		is-flat = true
	elem "label51"
		type = LABEL
		pos = 44,144
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Mining:"
		align = right
	elem "Mine_S"
		type = LABEL
		pos = 108,144
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button45"
		type = BUTTON
		pos = 240,144
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "MINE-ADD"
		is-flat = true
	elem "label55"
		type = LABEL
		pos = 32,168
		size = 72x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Hand 2 Hand:"
		align = right
	elem "H2H_S"
		type = LABEL
		pos = 108,168
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button47"
		type = BUTTON
		pos = 240,168
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "H2H-ADD"
		is-flat = true
	elem "label57"
		type = LABEL
		pos = 44,192
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Bashing:"
		align = right
	elem "Bash_S"
		type = LABEL
		pos = 108,192
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button48"
		type = BUTTON
		pos = 240,192
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "BASH-ADD"
		is-flat = true
	elem "label59"
		type = LABEL
		pos = 44,216
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Piercing:"
		align = right
	elem "Pie_S"
		type = LABEL
		pos = 108,216
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button49"
		type = BUTTON
		pos = 240,216
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "PIE-ADD"
		is-flat = true
	elem "label61"
		type = LABEL
		pos = 44,240
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Slicing:"
		align = right
	elem "Slice_S"
		type = LABEL
		pos = 108,240
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button50"
		type = BUTTON
		pos = 240,240
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "SLICE-ADD"
		is-flat = true
	elem "label63"
		type = LABEL
		pos = 44,264
		size = 60x20
		anchor1 = none
		anchor2 = none
		text-color = #f8f8f8
		background-color = #080808
		saved-params = ""
		text = "Crushing:"
		align = right
	elem "Crush_S"
		type = LABEL
		pos = 108,264
		size = 124x20
		anchor1 = none
		anchor2 = none
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = ""
		text = "0 "
		align = right
	elem "button51"
		type = BUTTON
		pos = 240,264
		size = 20x20
		anchor1 = none
		anchor2 = none
		font-size = 15
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		border = line
		saved-params = "is-checked"
		text = "+"
		command = "CRUSH-ADD"
		is-flat = true
	elem "label44"
		type = LABEL
		pos = 16,4
		size = 312x20
		anchor1 = none
		anchor2 = none
		font-family = "serif"
		font-size = 9
		font-style = "bold"
		text-color = #f8f8f8
		background-color = #5f5f5f
		saved-params = ""
		text = "Please choose a skill to Increase"

�  &�G0=;l^x�i^w  Player.dmi �PNG

   IHDR   @   @   ��M   PLTE���  � ��   ,~��   tRNS @��f   zzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S�)�85 '�2�H��3%�����3�(17�6����/K�M�+�\�\�6 �� "b�J   �IDAT8�c`�XPi�%Z4*��B��B�V�	`��~�&�a(���PiFT��� �f0�A�1:���`��&<�4�*�)p��&B�����8 ��q� ,�n��)���|���pX���0*`�U`~�	� ��<�u�    IEND�B`�  ����=;l^Zg^�  Monsters.dmi �PNG

   IHDR   `   `   �w8   �zTXtDescription  x��˱�0��`7��������^B!�U|}g�o�Z܆1��S�C�龁џ���k�z!�D��~au�FS$ڪYrQ��ѓ{�%��ё��!Y�
F�k��%����@S�0!/9  +IDATx��An�0E+�jvp�H\�s���Kg׹�,�t�첩�7��&J'�7<�T�q�߅����ա 0 ��P 
 C`( �� 0 f����M�?�s�����qQ��v""߷��-��b~��>�����	g�/:%»)��p�|������^3����-�*Q���+��^�/��'P�_�a�KWASX�>�2?�>9�d,؏������,T�~t� �'aq�gŘ�h@W���� ֽ��<3]�W�ɞ��U=���(�?�^�,�@����x��S�]o�Κ_t'��������Uς�|��P 
 C`( �� 0 ��P 
 C`( �� 0 ��@��Ǵ}�h�6��ҪPM~L��/c�߾w�e�J �&?&l��X�%X�jC�⤥%���9���$l��)�#_[7�V��.!3�{^�5�k�n��O�'x���Ο��/Y�K���?��?�K ]*�/ٟ`}(gu~my:�S�'h�[?������U�R?��{���P�'X���S��?@q.v�	��?T@���c�|����h0 ��P 
 C`��,Ȕ�m��<�P 
 C`( �� 0 ��P 
 �I �>�`M�����^��q�����hE� D}~�7��8j�?�ȧ$����y�Se��j�Q%�dN����P���O8��eh���x��s����x��w��.����W�?����`N�P�ǿ�?�q��OثY�
�)(#�yg��|X��Ew�g��G_�/���U
 C`( �� 0� ��l���    IEND�B`��  ҏ�=;l^��i^�  Misc.dmi �PNG

   IHDR   @       �C��   �PLTE����������������������ɜ��������ި�Ք���ԯ��z�����ό�ǂ����q���|����z��b|���⢶Ȍ��fx�Jcw���;HZHLS������Tg�������������u����믽�[��H��j���Iz�/��4j�!t�)Uoi�ӡ�knr3;F-:_en��   tRNS @��f   ozTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S�-571'U��3%��(`�řV���
aÕ��Q������ �$r��6�  6IDATH���r�0�s$r	ET�^��ն����WYx�aBf��&B33���R���1LC?��˲�S�ӭpy׵c\L%,lO�>$�������m�1��%Ԁ���Ib���F�%)zi�߅� ~/[�i�e�z�#���u����no�b�+��|���m@oB9������~����qVv�r ��_:��J�s�pYb��.+e�oGU���X
!�$u��=fSC#�q�����ӹ�'S�x�;�2ԋ���Kݨ�rַٌb����~i���Z����s��o���ɀ��Q� ?OT�3�    IEND�B`��  g���=;l^Zg^_  Warrior Weapons.dmi �PNG

   IHDR           �Tg�   PLTE���   ������www�  �3 3� ����<�h   tRNS @��f   lzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S)�� '�(�H��3%��(d�řV���
a++����M ��|�u�   zIDAT(��б� �ᤳ�'�tO�p��хJ���%|G^���C�G���O-�0�3��-+�����.�%`��������"G0d�l��&�^�N�ϒ�4��o��PA�{�Q?k�@7���    IEND�B`�o  ����=;l^Zg^T  Start.dmi �PNG

   IHDR           �Tg�   PLTE��� ̙ �̙�3���X^   tRNS @��f   gzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S	�(*Q��L�,*��8ӊsS!leW?�� ;�9�2>q   �IDAT(����� �u ܀T ��1�?�4 H��C�~�����5�P����k�*�\��
�ch@s���'VK�@SP�UmT@))�`��l@d�]�Cd�2yt���a8�+�%��P���<'ը��    IEND�B`��  �V=;l^Zg^n  Floors.dmi �PNG

   IHDR   @       P�c�   PLTEr�5_�X��Q����f �����f��C>   qzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S)�(��X��3%���7��L+J�M��᪊�Rp)RVp�s� �p$o�=��  �IDAT8�eS��1�� \�g�@J�\鿇�:q���d$!��xt����< SQE�bS`>o��s�l ]���	�s����/ ����l�y����{!�Ϳ�;8+:�i�l�	 ��%Lk�k>��k�c^8h3O"�Աf?/LjJ���C?��׈�'�k�q��_P����o�&�w)����J�R:!�ڲz�H�p�7C�Q�����tp��M�U\ �hv�MT��¢A�T�^�2)x���z10"e�Q�7�%6Mdڬ�*Ӳ�.Fd}�N���/����M�O@�`"�ⶻT�t [ȹ�c�#��Uh�>�m����#��攚���UH냫H�,��;�"�(Jw��]<.�dɕ"��Z�F�Ҝ���e�nV�d3�|���`3�L~��*~�}�S��k    IEND�B`��  =xF=;l^Zg^�  Traps.dmi �PNG

   IHDR   �   �   1|�   PLTE   �f �����f���ޗV�   tRNS @��f   �zTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S��439�81/E��3%��(f�řV���
f��Ss+Al<���(�<3/�_Y���� �'3�z�  �IDATh������ E�#�" �L��BoS53~�-q��im�-Cra��?w��Ϳ|7.Z�8_qǀƃr;g��)Ԡ�ǣ�K�C(Ӄ��zVn�_1*��K�ئ��_���v�hq}�G��]�3�m�n/�O��4�y�0krZ�-�!8��)���1��%�N�(h��r���FZ�����b|�]w�3��!k��(#�w}�e������΃�h�P��!���e�λ���?x�e�k�`�D���?X�3�����W��\����w���{f��1�7��B\��Ӓ����\x�e���=`����3��}*+�'kGg�\��D��|&_�,���j�B�L38�EP�������ҩ���mc� �2���b����z���,��g,��Y��9;V�A$�Kg�p*,����ɪ?(_���^�����a���y�Y�����M����7D�`��X��e�4?��I]ڲ#���q���ah�Q���>��d�`���z�x�|���kaX{�'F�0�~ �~����!��p�x(���4��#gd�4?گ����[ �P���;�C��"�����Է!X~ �X��N�>Q�����1�1�~`�N�>����r�ϧ���T~�A���8�u��?`��q�E�a�,����e�:)~ �8�x����g��>p�$�qZr�21����M�sh~ ����Z�2�$���|��6K������X��3?���� ������"�����,�g~�e`�?�B��OY+����� ��,p3������� �`����5��?e����Sf,�g~@^��S��g~@���ܬ��,�����5����`���� {�g~�6K��`����P���Sf,�g~�g��������q$]�)���D���P�    IEND�B`�"  �>+T=;l^Zg^  Walls.dmi �PNG

   IHDR           �g   PLTE   ���333wwwB�y   mzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT S��$?/�<1'G��3%��(f�řV���
a++����� ���D~n>   =IDAT�c`���Ĉ0�����?���0H�-\�%ն���$���!PX�Bd5C�� 5RذH j    IEND�B`�