x -= global.vroom
if (x < -300)
	instance_destroy()
else if (floor(image_index) == image_number-1)
	image_speed = 0