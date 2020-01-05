/// Add letters over time

if (time < textLength) {
	time += spd;
	//move characters from text to the print string
	print = string_copy(text[page], 0, time);
};

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