
//---------->> Collision
if (moveX != 0) {
	if (place_meeting(x + moveX, y, objObject)) {
		repeat(abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, objObject)) { x += sign(moveX); } 
			else { break; }
		}
		moveX = 0;
	}
}
if (moveY != 0) {
	if (place_meeting(x, y + moveY, objObject)) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), objObject)) { y += sign(moveY); } 
			else { break; }
		}
		moveY = 0;
	}
};

//---------->> Move
if (txt == noone) {
	x += moveX;
	y += moveY;
};

//---------->> Interaction
//if player nearby, interact key is pressed, and there isn't already a textbox,
//initiate dialogue; if player moves away, destroy the textbox

if (point_in_circle(x, y, objPlayer.x, objPlayer.y, 32)) {
	if (keyboard_check_pressed(game.interactKey)) {
		if (txt == noone) {
			scrText(myText, 0.5, c_gray, c_black, self);
		}
	}
};