/// @function scrText(text[], speed, creator)
/// @description Create an instance of objText to display some text on screen
/// @param text[]
/// @param speed
/// @param x
/// @param y
/// @param fill
/// @param outline
guiH = display_get_gui_height();
boxX = 16;
boxY = guiH - guiH/4;
txt = instance_create_layer(boxX, boxY, "Textbox", objText);

with (txt) {
	text = argument0;
	totalPages = array_length_1d(text);
	spd = argument1;
	creator = argument2;
}

return txt;