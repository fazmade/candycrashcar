if (random(global.vroom) <= 20)
	instance_create_depth(x, y, depth, obj_roadkill).sprite_index = spr_bb_altdie
else
{
	instance_create_depth(x, y, depth, obj_meteor).sprite_index = spr_bb_die
	if (irandom(1) == 0)
		audio_play_sound(aud_bb_die, 1, false)
}
with (obj_spawner)
	event_user(0)
audio_play_sound(aud_hit, 1, false)