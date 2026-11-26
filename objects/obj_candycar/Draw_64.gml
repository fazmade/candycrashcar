draw_set_halign(0)
draw_set_font(hudfont)
if (bonusspeed == 0)
	draw_text(0, 0, string("{0}/{1} speed per time", global.vroom, maxspeed))
else
	draw_text(0, 0, string("{0}/{1}+{2} speed per time", global.vroom, maxspeed, bonusspeed))
draw_set_halign(2)
draw_text(1600, 00, string("fucking score: {0}", global.fuckingscore))