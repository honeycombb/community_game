/// @function scrText(text[], speed, x, y, fill, outline, creator)
/// @description Create an instance of objText to display some text on screen
/// @param text[]
/// @param speed
/// @param x
/// @param y
/// @param fill
/// @param outline

txt = instance_create_layer(argument2, argument3, "Textbox", objText);

with (txt) {
	padding = 16;
	maxLength = camera_get_view_width(view_camera[0]);
	text = argument0;
	page = 0;
	totalPages = array_length_1d(text);
	spd = argument1;
	font = fnt;
	fillColor = argument4;
	outlineColor = argument5;
	creator = argument6;
	
	draw_set_font(font);
	
	textLength = string_length(text[page]);
	fontSize = font_get_size(font);
	
	textWidth = string_width_ext(text[page], fontSize+(fontSize/2), maxLength);
	textHeight = string_height_ext(text[page], fontSize+(fontSize/2), maxLength);
	
	boxWidth = textWidth + padding*2;
	boxHeight = textHeight + padding*2;	
}

return txt;