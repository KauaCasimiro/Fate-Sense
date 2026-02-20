var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var left = button_x - button_width * 0.7;
var right = button_x + button_width * 0.7;
var top = button_y - button_height * 0.7;
var bottom = button_y + button_height * 0.7;

if (point_in_rectangle(mx, my, left, top, right, bottom)) {
	show_debug_message("Clicou dentro do botão");
	button_state = 1;
	button_anim_frame = 0;
} else {
	show_debug_message("Clicou fora do botão");
}