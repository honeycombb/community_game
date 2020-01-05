/// @AI movement

moveX = 0;
moveY = 0;

var idle = choose(0, 1)

if !idle {
	var dir = choose(1, 2, 3, 4)
	switch(dir) {
		case 1: moveX = -spd; break;
		case 2: moveX = spd; break;
		case 3: moveY = -spd; break;
		case 4: moveY = spd; break;
			
	}
}


alarm[0] = random_range(1.5, 4) * room_speed;
