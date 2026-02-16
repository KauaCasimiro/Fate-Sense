base = ["A", "T", "G", "C"];
randomize();
current_base = scr_next_base(base)

timer = 0;

// Variavéis para o combo
_score  = 0;
combo_streak = 0;
max_timer = 5;
timer_combo = max_timer;


update_combo = function(right) {
	scr_combo(right);
}

check_answer = function(answer) {
	var correct = scr_check_answer(current_base, answer);
	
	if (correct) {
		update_combo(correct);
		show_debug_message("Correto");
		current_base = scr_next_base(base);
	} else {
		show_debug_message("Errado");
	}
	
	return correct;
}


