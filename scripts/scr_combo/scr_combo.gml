function scr_combo(right){
	show_debug_message("SCR_COMBO call | right: " + string(right) + " | timer_combo_before: " + string(timer_combo,0,2));
	if (right) {
		if (timer_combo > 0 && combo_streak >= 1) {
			//Acerto dentro do tempo e dentro da sequência
			show_debug_message("Acertou dentro do tempo e da sequência: " + string(_score))
			score_increment =  1* 1.25;
			combo_streak ++;
			//timer_combo = max_timer;
		} else if (timer_combo <= 0 /*|| combo_streak < 2*/) {
			//Acerto fora do tempo
			show_debug_message("Acertou fora do tempo ou da sequência: " + string(_score))
			score_increment = 1;
			combo_streak = 1;
			//timer_combo = 0;
		} else {
			// Acerto dentro do tempo, mas abaixo da sequência
			show_debug_message("Acertou dentro do tempo, mas fora da sequência: " + string(_score))
			score_increment = 1;
			combo_streak ++;
			//timer_combo = max_timer;
			show_debug_message("SCR_COMBO after | timer_combo_reset_to: " + string(timer_combo,0,2));

		}
		_score += score_increment;
		
		timer_combo = max_timer;
	} else {
			show_debug_message("Errou e não pontuou: " + string(_score))
			/*if (combo_streak > 0) {
				timer_combo -= delta_time / 1000000;
				if (timer_combo <= 0) {
					combo_streak = 0;
					timer_combo = 0;
					show_debug_message("Sequência de combo perdida");
				}
			}*/	
	}
}