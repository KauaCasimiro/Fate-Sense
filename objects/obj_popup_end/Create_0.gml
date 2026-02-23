button_state = 0;
button_anim_speed = 1;

mouse_was_inside = false;
mouse_was_inside_ext = false;

var controller = instance_find(obj_game_controllers, 0);

if (controller != noone) {
	var results = controller.get_run_results();
	final_time = results.time;
	final_score = results._score_;
	final_combo = results.combo;
}