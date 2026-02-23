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

base_map = ds_map_create();
ds_map_add(base_map, "A", spr_button_A);
ds_map_add(base_map, "T", spr_button_T);
ds_map_add(base_map, "G", spr_button_G);
ds_map_add(base_map, "C", spr_button_C);

base = ["A", "T", "G", "C"];

randomize();
current_base = scr_next_base(base);
current_base_displayed = current_base;
current_base_target = current_base;
current_base_feedback = undefined;
base_transition_timer = 0;
base_transition_duration = 0.5;

timer = 0;
answer_result = undefined;

enzymes = 2;
repairs = 2;

// Variavéis para o combo
_score  = 0;
combo_streak = 0;
max_combo = 0;
max_timer = 5;
timer_combo = max_timer;

function get_run_results() {
	return {
		time: timer,
		_score_: _score,
		combo: max_combo
	};
}

last_base = undefined;
feedback_timer = 0;
feedback_duration = 0.5

update_combo = function(right) {
	scr_combo(right);
}

check_answer = function(answer) {
	answer_result = scr_check_answer(current_base, answer);	
	last_base = answer;
	return answer_result;
}


