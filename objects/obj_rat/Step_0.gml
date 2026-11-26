if (instance_exists(obj_explose) || !candies)
{
	x -= global.vroom
	if (x < -200)
		instance_destroy(self, false)
}
else
	event_inherited()
if (instance_exists(mytbox))
	mytbox.x = x