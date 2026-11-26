/*if (mouse_wheel_up())
	image_angle += 4
if (mouse_wheel_down())
	image_angle -= 4
image_angle += random_range(-0.5, 0.5)*/
image_angle = point_direction(x, y, mouse_x, mouse_y)
if (image_angle > 270)
	image_angle -= 360
