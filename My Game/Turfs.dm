/* TURF INFORMATION */

//STARTING LOCATION FOR PLAYERS
turf/start
	name = "Spawn Spot"
	icon = 'Start.dmi'
	icon_state = "start"

//STANDARD TURFS
//GRASS - NORMAL
turf/floors/grass
	name = "Grass"
	icon = 'Floors.dmi'
	icon_state = "grass"
//SAND - NORMAL
turf/floors/sand
	name = "Sand"
	icon = 'Floors.dmi'
	icon_state = "sand"

//DENSE TURFS
//STONE WALL
turf/walls/wall
	name = "Stone Wall"
	icon = 'Walls.dmi'
	icon_state = "stonewall"
	density = 1
	opacity = 1

//TRAP TURFS
turf/trap/quicksand
	name = "Sand"
	icon = 'Traps.dmi'
	icon_state = "quicksand"
