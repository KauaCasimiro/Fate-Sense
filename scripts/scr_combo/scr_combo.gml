function scr_combo(right){
	if (right) {
		if (timer_combo > 0 && combo_streak >= 1) {
			//Acerto dentro do tempo e da sequência
			show_debug_message("Acertou dentro do tempo e da sequência: " + string(_score))
			score_increment = 1.25;
			combo_streak ++;
		} else {
			//Acerto fora do tempo
			show_debug_message("Acertou fora do tempo ou da sequência: " + string(_score))
			score_increment = 1;
			combo_streak = 1;
		}
		_score += score_increment;
		
		timer_combo = max_timer;
	} else {
			show_debug_message("Errou e não pontuou: " + string(_score))
			combo_streak = 0;
			timer_combo = 0;
	}
	
	if (combo_streak > max_combo) {
		max_combo = combo_streak;
	}
}