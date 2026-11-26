x -= global.vroom
if (x < -200)
	instance_destroy(self, false)
else if place_meeting(x, y, obj_candycar)
	instance_destroy(self, true)
if (x < 1600 && !entranced)
{
	entranced = true
	audio_play_sound(spawnsound, 1, false)
}