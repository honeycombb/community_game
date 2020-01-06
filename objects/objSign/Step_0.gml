/// @description

//---------->> Interaction
//if player nearby, interact key is pressed, and there isn't already a textbox,
//display sign content

if (point_in_circle(x, y, objPlayer.x, objPlayer.y, 32)) {
	if (keyboard_check_pressed(game.interactKey)) {
		if (txt == noone) {
			scrText(myText, 0.5, self);
		}
	}
};