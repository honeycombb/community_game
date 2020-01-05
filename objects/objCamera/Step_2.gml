/// @description Insert description here
// You can write your code in this editor

#macro view view_camera[0]

camera_set_view_size(view, viewW, viewH);

if instance_exists(objPlayer) {
	var _x = clamp(objPlayer.x - viewW/2, 0, room_width - viewW);
	var _y = clamp(objPlayer.y - viewH/2, 0, room_height - viewH);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	var _spd = 0.1;
	
	camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
};