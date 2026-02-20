function scr_flow_game(){
	
	switch (game_state) {
		case game_State.Tutorial:
			// Bloco que vai chamar o pop-up de tutorial
			if (!instance_exists(obj_popup_tutorial)) {
				instance_create_layer(0, 0,"Instance_UI", obj_popup_tutorial);
				show_debug_message("Estado atual: Tutorial");
			}
			
			
		break;
		
		case game_State.Transition:
			// Bloco intermediário que vai controlar a transição entre o tutorial e o gameplay, para não criar gambiarra de tempo
			transition_timer += delta_time / 1000000;
			
			if (transition_timer >= transition_duration) {
				show_debug_message("Estado atual: Transição");
				transition_timer = 0;
				game_state = game_State.Playing;
			}
		break;
		
		case game_State.Playing:
		show_debug_message("Estado atual: Jogando");
			if (answer_result != undefined) {
				if (answer_result) {
					update_combo(true);
					show_debug_message("Correto");
					current_base = scr_next_base(base);
					current_base_feedback = current_base;
					feedback_timer = 0;
				} else {
					show_debug_message("Errado");
					//game_state = game_State.Game_over
					
					repairs--;
					update_combo(false);
					answer_result = undefined;
						if (repairs <= 0) {
						game_state = game_State.Game_over;
					}
				}
			answer_result = undefined;
			}
		
		break;
		
		case game_State.Game_over:
			game_state = game_State.Tutorial;
			timer = 0;
			repairs = 2;
			_score = 0;
			combo_streak = 0;
			timer_combo = max_timer;
		break;
		
		default:
			// não sei exatamente por que, mas vai que né ¯\ _ (ツ) _ /¯ 
		
		break;
		
	}
}