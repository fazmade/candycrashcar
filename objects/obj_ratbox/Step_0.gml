if (place_meeting(x, y, obj_candycar))
{
	fremf.candies = false
	with (instance_create_depth(144, 30, obj_candycar.depth-1, obj_speednotif))
	{
		text = string_concat("-",(obj_candycar.maxspeed - 8))
		image_blend = c_red
	}
	obj_candycar.maxspeed = 8
	obj_candycar.bonusspeed = 0
	audio_play_sound(aud_puncture, 1, false)
	instance_destroy()
}