/// init

alpha = 0;

//text printed to screen
print = "";

//frames passed since object made
time = 0;

depth = depth - instance_number(objText);

text = [""];
totalPages = array_length_1d(text);
spd = 0.5;
fillColor = c_ltgray;
outlineColor = c_blue;
creator = noone;
padding = 16;
page = 0;
font = fnt;
textLength = string_length(text[page]);
fontSize = font_get_size(font);
game.pause = true;
	
boxWidth = display_get_gui_width() - padding*2;
maxLength = boxWidth - padding * 2;
textHeight = string_height_ext(text[page], fontSize+(fontSize/2), maxLength);
boxHeight = textHeight + (padding * 2);
