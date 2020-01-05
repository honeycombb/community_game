/// @description

if !game.pause {
	seconds += increment;
};
minutes = seconds/60;
hours = minutes/60;

if (hours >= 24) {
	seconds = 0;
	day++;
	if (day > 28) {
		day = 1;
		month++;
		if (month > 4) {
			month = 1;
			year++;
		}
	}
}