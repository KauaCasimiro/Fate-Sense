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
			with(obj_game_controllers) {
				global.game_state = game_State.Transition;
			}
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

var controller = instance_find(obj_game_controllers, 0);

if (controller != noone) {
	var results = controller.get_run_results();
	final_time = results.time;
	final_score = results._score_;
	final_combo = results.combo;
}