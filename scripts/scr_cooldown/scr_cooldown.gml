function scr_cooldown_tracker_init(){
	global.cooldown_map = ds_map_create();
	global.current_round = 0;
}

function scr_cooldown_next_round(){
	global.current_round ++;
}

function scr_cooldown_register(card){
	global.cooldown_map[? card] = global.current_round;
}

function scr_cooldown_get_penalty(card){
	var last = ds_map_find_value(global.cooldown_map, card);
	
	if (is_undefined(last)) {
		return 0;
	}
	
	var diff = global.current_round - last;
	
	if (diff < 3) {
		return (3 - diff) * 0.5;
	}
	
	return 0;
}