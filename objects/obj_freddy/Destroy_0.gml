instance_create_depth(x, y, depth, obj_roadkill)
with (instance_create_depth(144, 30, obj_candycar.depth-1, obj_speednotif))
{
	text = "-3"
	image_blend = c_red
}
with (obj_candycar)
{
	maxspeed -= 3
	bonusspeed = 0
}
//global.vroom = round(global.vroom / 0.01) * 0.01
audio_play_sound(aud_hit, 1, false)