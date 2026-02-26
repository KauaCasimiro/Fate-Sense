var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

for (var i = 0; i < array_length(menu); i++) {
	var spr = menu[i].sprite;
	
	var w = sprite_get_width(spr) * button_scale;
	var h = sprite_get_height(spr) * button_scale;
	
	var _x = 550;
	var _y = 1400 + (h + spacing) * i;
	
	var left = _x - w * 0.5;
	var right = _x + w * 0.5;
	var top = _y - h * 0.5;
	var bottom = _y + h * 0.5;
	
	if (device_mouse_check_button_pressed(0, mb_left)) {
		if (point_in_rectangle(mx, my, left, top, right, bottom)) {
			menu[i]._function();
		}
	}
}