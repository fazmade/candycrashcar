image_xscale = 0.75
image_yscale = 0.75
myspeed = global.vroom - 3
yspeed = irandom_range(-1, 1)
hasentered = false
if (irandom(4) == 0)
	audio_play_sound(aud_springtrap_freaky, 1, false)
else
	audio_play_sound(aud_springtrap, 1, false)