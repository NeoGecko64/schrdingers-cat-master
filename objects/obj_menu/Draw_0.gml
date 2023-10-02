//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_right);
draw_set_halign(fa_bottom);

for (var i = 0; i < op_length; i++)
	{
	var _c = c_black;
	if pos == i {_c = c_red};
	draw_text_colour(x, y + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);	
	}