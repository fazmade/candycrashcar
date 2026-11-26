//x += myspeed - global.vroom
x -= 3
if (y > 700)
	yspeed = -1
else if (y < 100)
	yspeed = 1
if (x < 1700)
{
	y += yspeed
	hasentered = true
	if (x < -100)
		instance_destroy()
}
else if (hasentered)
	instance_destroy()