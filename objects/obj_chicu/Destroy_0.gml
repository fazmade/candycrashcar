instance_create_depth(x, y, depth, obj_meteor).sprite_index = spr_chicu_die
instance_create_depth(x, y, depth-1, obj_meteor).sprite_index = spr_chicu_apron
with (obj_spawner)
	event_user(1)
global.vroom += 5
with (instance_create_depth(0, 30, obj_candycar.depth-1, obj_speednotif))
{
	text = "+5"
	image_blend = c_yellow
}
if (global.vroom > obj_candycar.maxspeed)
	obj_candycar.bonusspeed = global.vroom - obj_candycar.maxspeed
audio_play_sound(aud_hit, 1, false)