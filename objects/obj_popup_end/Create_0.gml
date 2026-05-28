button_state = 0;
button_anim_speed = 1;

mouse_was_inside = false;
mouse_was_inside_ext = false;

selected_index = -1;

options = [
	{
		sprite: spr_button_start_tutorial,
		action: function() {
			with(obj_audio_manager) {
			play_sfx(sfx_bnt_ui);
		}
			scr_reset_run();
		}
	},
	
	{
		sprite: spr_button_exit,
		action: function () {
			with(obj_audio_manager) {
			play_sfx(sfx_bnt_ui);
		}
			game_end();
		}
	}
];

var results = scr_get_run_stats();

final_time = results.time;
final_score = results._score;
final_combo = results.combo_max;
final_correct = results.correct;
final_wrong = results.wrong;