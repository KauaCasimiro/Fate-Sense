enum game_State {
	Tutorial,
	Transition,
	Playing,
	Game_over
}

if (!variable_global_exists("tutorial_done")) {
	global.tutorial_done = false;
}

game_state = global.tutorial_done ? game_State.Playing : game_State.Tutorial;

transition_timer = 0;
transition_duration = 4;

base = ["A", "T", "G", "C"];
randomize();
current_base = scr_next_base(base)

timer = 0;
answer_result = undefined;

enzymes = 2;
repairs = 2;

// Variavéis para o combo
_score  = 0;
combo_streak = 0;
max_timer = 5;
timer_combo = max_timer;


update_combo = function(right) {
	scr_combo(right);
}

check_answer = function(answer) {
	answer_result = scr_check_answer(current_base, answer);	
}


