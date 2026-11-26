var movement = (obj_wheel.image_angle - 90) * 0.2
y -= movement
image_angle = movement
if (y < 0 || y > room_height || global.vroom < 10 || place_meeting(x, y, obj_springtrap)) && !instance_exists(obj_explose)
	instance_create_depth(x, y, depth-1, obj_explose)

if (global.vroom <= maxspeed + bonusspeed && audio_is_playing(aud_sputtering))
	audio_stop_sound(aud_sputtering)
if (global.vroom < maxspeed + bonusspeed)
	global.vroom += 0.02
else if (global.vroom > maxspeed + bonusspeed)
{
	global.vroom -= 0.1
	if (!audio_is_playing(aud_sputtering))
		audio_play_sound(aud_sputtering, 1, true)
}

image_speed = global.vroom / 60