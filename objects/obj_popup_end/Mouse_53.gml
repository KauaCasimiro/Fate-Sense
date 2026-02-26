var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (button_state == 1) {
	exit;
}

for (var i = 0; i < array_length(options); i++) {
	var btn = options[i];
	var percent  = 0.25 + i * 0.5;
	
	var sprite = btn.sprite;
	var width = sprite_get_width(sprite) * button_scale;
	var height = sprite_get_height(sprite) * button_scale
	var padding = 20;
	
	var button_x = popup_left + popup_width * percent;
	var button_y = popup_bottom - padding - height * 1.6;
	
	var left = button_x - width * 0.5;
	var right = button_x + width * 0.5;
	var top = button_y - height * 0.5;
	var bottom = button_y + height * 0.5;
	
	if (point_in_rectangle(mx, my, left, top, right, bottom)) {
		show_debug_message("Clicou dentro do botão");
		selected_index = i;
		button_state = 1;
		button_anim_frame = 0;
	}  else {
		show_debug_message("Clicou fora do botão de sair");
	}
}