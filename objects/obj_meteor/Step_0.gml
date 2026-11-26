yvel += grv
y += yvel
xvel--
if (y > groundy)
{
	yvel *= -0.8
	y = groundy
}
x -= global.vroom - xvel
image_index = irandom(image_number - 1)