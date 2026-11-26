spawntimer -= max(sqrt(global.vroom), minimumspawnvroom)
if (spawntimer <= 0)
{
	minimumspawnvroom = sqrt((global.vroom - obj_candycar.bonusspeed) / 4)
	if (irandom(2) == 0)
		spawntimer = spawntime * random_range(0.25, 1)
	else
		spawntimer = spawntime
	var chosenobject = noone
	var pool = 0
	if (global.fuckingscore < 5)
		pool = 0
	else if (global.fuckingscore < 10)
		pool = irandom(1)
	else if (global.fuckingscore < 30)
		pool = 1
	else if (global.fuckingscore < 40)
		pool = 1 + (irandom(2) == 0)
	else if (global.fuckingscore < 50)
		pool = 1 + (irandom(2) != 0)
	else
		pool = 2
	
	if (pool == 2)
		chosenobject = choose(obj_bb, obj_bb, obj_bb, obj_freddy, obj_freddy, obj_freddy, obj_goldenfreddy, obj_goldenfreddy, obj_chicu, obj_foxy, obj_foxy, obj_springtrap, obj_rat, obj_rat, obj_lolbit)
	else if (pool == 1)
		chosenobject = choose(obj_bb, obj_bb, obj_bb, obj_freddy, obj_freddy, obj_freddy, obj_goldenfreddy, obj_goldenfreddy, obj_chicu, obj_foxy, obj_foxy)
	else
		chosenobject = choose(obj_bb, obj_bb, obj_bb, obj_freddy, obj_freddy)
	if (chosenobject == obj_springtrap || chosenobject == obj_lolbit)
	{
		if (!instance_exists(chosenobject))
		{
			if (chosenobject == obj_springtrap)
				instance_create_depth(1700, irandom_range(200, 600), depth, chosenobject)
			else
				instance_create_depth(mouse_x, mouse_y, depth, obj_lolbit)
		}
	}
	else if (chosenobject != noone)
		instance_create_depth(1700 + sqrt(global.vroom) * 100, irandom_range(100, 700), depth, chosenobject)
}
if (keyboard_check_pressed(ord("G")))
	event_user(0)