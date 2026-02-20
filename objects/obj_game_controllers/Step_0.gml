scr_flow_game();

if (game_state != game_State.Playing) {
    show_debug_message("⚠ TIMER FORA DO PLAYING: " + string(timer));
}


if (scr_game_is_playing()) {
	timer += delta_time/1000000
}


/*show_debug_message("DEBUG | timer_combo: " + string(timer_combo) + 
                   " | combo_streak: " + string(combo_streak));
*/