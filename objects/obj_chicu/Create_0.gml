warningindex = 3
if (obj_candycar.y > 400)
	dir = -1
else
	dir = 1
image_index = irandom(image_number)
entranced = false
spawnsound = choose(aud_pizza1, aud_pizza2, aud_pizza3)