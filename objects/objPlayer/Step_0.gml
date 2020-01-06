

//---------->> Movement input
inputLeft	= keyboard_check(game.leftKey);
inputRight	= keyboard_check(game.rightKey);
inputUp		= keyboard_check(game.upKey);
inputDown	= keyboard_check(game.downKey);

moveX = 0;
moveY = 0;

moveX = (inputRight - inputLeft) * spd;
moveY = (inputDown - inputUp) * spd;

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
}

//---------->> Move
if !game.pause {
	x += moveX;
	y += moveY;
};