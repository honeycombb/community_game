/// @description Insert description here
// You can write your code in this editor

//resolution
viewW = 1920/5
viewH = 1080/5

windowScale = 3;

window_set_size(viewW * windowScale, viewH * windowScale);

alarm[0] = 1;

surface_resize(application_surface, viewW * windowScale, viewH * windowScale)
