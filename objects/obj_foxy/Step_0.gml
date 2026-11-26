event_inherited()
if (y < 100)
	dir = 1
else if (y > 700)
	dir = -1
y += sped * dir
if (dir == 1)
	sprite_index = spr_foxy_down
else
	sprite_index = spr_foxy_up