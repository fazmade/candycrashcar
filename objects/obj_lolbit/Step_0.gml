if (appeartimer > 0)
{
	appeartimer--
	image_alpha = 1 - (appeartimer / 90)
	if (appeartimer == 0)
	{
		sprite_index = spr_lolbit_laugh
		image_index = 0
	}
}
else
{
	if (!audio_is_playing(aud_lolbit1) && !audio_is_playing(aud_lolbit2) && !audio_is_playing(aud_lolbit3))
		audio_play_sound(choose(aud_lolbit1, aud_lolbit2, aud_lolbit3), 1, false)
	if (point_distance(x, y, mouse_x, mouse_y) < 150)
	{
		global.vroom = max(global.vroom - 2, 0)
		obj_candycar.bonusspeed = 0
		with (instance_create_depth(0, 30, obj_candycar.depth-1, obj_speednotif))
		{
			text = "-2"
			image_blend = c_blue
		}
	}
}