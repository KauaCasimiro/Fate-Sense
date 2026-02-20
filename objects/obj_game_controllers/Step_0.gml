scr_flow_game();

if (game_state != game_State.Playing) {
    show_debug_message("⚠ TIMER FORA DO PLAYING: " + string(timer));
}


if (scr_game_is_playing()) {
	timer += delta_time/1000000;
}

// Timer para a transição da base automática
if (current_base_displayed != current_base_target) {
    base_transition_timer += delta_time / 1000000;

    if (base_transition_timer >= base_transition_duration) {
        current_base_displayed = current_base_target;
        base_transition_timer = 0;
    }
}

// Timer separado para o feedback do jogador

if(last_base != undefined) {
	feedback_timer += delta_time/1000000;
	if (feedback_timer >= feedback_duration) {
		last_base = undefined;
		feedback_timer = 0;
	}
}



/*show_debug_message("DEBUG | timer_combo: " + string(timer_combo) + 
                   " | combo_streak: " + string(combo_streak));
*/