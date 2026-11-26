instance_create_depth(x, y, depth, obj_roadkill).sprite_index = spr_rat_die
//global.vroom += 2
with (obj_spawner)
{
	event_user(1)
	event_user(1)
}
obj_candycar.maxspeed += 2
with (instance_create_depth(144, 30, obj_candycar.depth-1, obj_speednotif))
{
	text = "+2"
	image_blend = c_lime
}
audio_play_sound(aud_hit, 1, false)