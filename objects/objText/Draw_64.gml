/// Render textbox and text
//fade in
draw_set_alpha(alpha);
if (alpha < 1) alpha += spd/10; else alpha = 1;

draw_set_font(font);




//box fill
draw_set_color(fillColor);
draw_rectangle(x, y, x+boxWidth, y+boxHeight, 0);

//box outline
draw_set_color(outlineColor);
draw_rectangle(x, y, x+boxWidth, y+boxHeight, 1);

//draw text
draw_set_color(c_navy);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(
	x+padding,
	y+padding/2,
	creator.name + ":"
);
draw_text_ext(
	x+padding,
	y+padding + fontSize+(fontSize/2),
	print,
	fontSize + (fontSize/2),
	maxLength
);

draw_set_alpha(1);


