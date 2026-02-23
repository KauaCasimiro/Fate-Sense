var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var left = button_x - button_width * 0.5;
var right = button_x + button_width * 0.5;
var top = button_y - button_height * 0.5;
var bottom = button_y + button_height * 0.5;

var inside = point_in_rectangle(mx, my, left, top, right, bottom);


if (inside && !mouse_was_inside) {
	show_debug_message("Mouse entrou na área do botão");
} else if (!inside && mouse_was_inside) {
	show_debug_message("Mouse saiu da área do botão");
}

mouse_was_inside = inside;

if (button_state == 1) {
	button_anim_frame += button_anim_speed;
	
	if (button_anim_frame >= 3) {
		with(obj_game_controllers) {
			game_state = game_State.Transition;
		}
		global.tutorial_done = true;
		instance_destroy();
	}
}