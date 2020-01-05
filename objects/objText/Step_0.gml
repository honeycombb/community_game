/// Add letters over time

if (time < textLength) {
	time += spd;
	//move characters from text to the print string
	print = string_copy(text[page], 0, time);
};

// cycle thru pages

if (keyboard_check_pressed(game.interactKey)) {
	if (page < totalPages - 1) {
		print = "";
		time = 0;
		page++;
	} else {
		instance_destroy();
		creator.txt = noone;
	}
};

// update size stuff

textLength = string_length(text[page]);
boxWidth = display_get_gui_width() - padding*2;
maxLength = boxWidth - padding * 2;
textHeight = string_height_ext(text[page], fontSize+(fontSize/2), maxLength);
boxHeight = textHeight + (padding * 2) + (fontSize * 2);