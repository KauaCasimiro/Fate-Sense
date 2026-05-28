function scr_reset_run(){
		// =========================
	// GAMEPLAY
	// =========================
	global.run_stats = {
		time: 0,
		_score: 0,
		correct: 0,
		wrong: 0,
		combo_max: 0
	};

	// =========================
	// CONTROLLER
	// =========================
	with (obj_controller) {

		_score = 0;

		combo = 0;
		max_combo = 0;

		_lives = 3;

		session_current = 0;
		session_index = 0;

		current_round = undefined;
		pending_input = undefined;

		input_processed = false;
		in_feedback = false;

		feedback_timer = 0;
		round_timer = 0;

		last_result = false;

		global.game_state = game_State.Transition;
	}
}