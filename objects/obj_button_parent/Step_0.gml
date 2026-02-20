if (!scr_game_is_playing()) {
	exit;
}

switch (state) { 
	case "idle":

		if (device_mouse_check_button_pressed(0, mb_left)) {
			image_speed = 0;
			image_index = 0;
			var mx = device_mouse_x(0);
			var my = device_mouse_y(0);
	
			if (point_in_rectangle(mx, my, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
				state = "animating"
				image_index = 0;
				image_speed = 2;
				var result = game_controller.check_answer(base_letter);
				show_debug_message("Botão Pressionado: " + base_letter);
			}
		}

	break;
	
	case "animating":
		if (image_index >= image_number - 1) {
			image_speed = 0;
			image_index = 0
			state = "idle"
		}
	break;
}