if (x > 1700)
{
	var larp = lerp(0.5, 1, ((xstart - x) / (xstart - 1700)))
	draw_sprite_ext(spr_warning, warningindex, 1550, y, larp, larp, 0, c_white, 1)
}
draw_self()