/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8
	verb
		say(msg as text)
			world << "[usr] says, [msg]"
	icon = 'player.dmi'
	Login()
		loc = locate(/turf/start)
		..()

obj
	step_size = 8



turf
	floor
		icon = 'floor.dmi'
	wall
		icon = 'wall.dmi'
		density = 1
	start
		icon = 'start.dmi'