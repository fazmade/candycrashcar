if (appeartimer == 0)
{
	draw_sprite(spr_lolbit_background, 0, x, y)
	draw_self()
}
else
{
	draw_self()
	var popup = 1 - (appeartimer / 15)
	if (popup > 0)
		draw_sprite_ext(spr_lolbit_intro, 0, x, y, popup, popup, 0, c_white, 1)
}