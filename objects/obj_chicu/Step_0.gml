if (obj_candycar.y > 450)
	dir = -1
else if (obj_candycar.y < 350)
	dir = 1
y = clamp(y + (dir * 5), 100, 700)
event_inherited()