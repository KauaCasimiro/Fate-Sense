function scr_cooldown_tracker_init(){
	global.cooldown_map = ds_map_create();
	global.current_round = 0;
}