if (button_state == 1) {
	button_anim_frame += button_anim_speed;
	
	if (button_anim_frame >= 3) {		
		if(selected_index != -1) {
			options[selected_index].action();
		}
		global.tutorial_done = true;
		instance_destroy();
	}
}