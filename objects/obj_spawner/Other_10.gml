global.fuckingscore++
obj_candycar.maxspeed++
with (instance_create_depth(144, 30, obj_candycar.depth-1, obj_speednotif))
{
	text = "+1"
	image_blend = c_lime
}
/*if ((global.fuckingscore mod 5) == 0 && spawntime > 45)
{
	spawntime -= 15
}*/