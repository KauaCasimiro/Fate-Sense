function scr_get_run_stats(){
	return {
		time: global.run_state.time,
		_score: global.run_state._score,
		correct: global.run_state.correct,
		wrong: global.run_state.wrong,
		combo_max: global.run_state.combo_max
	};
}