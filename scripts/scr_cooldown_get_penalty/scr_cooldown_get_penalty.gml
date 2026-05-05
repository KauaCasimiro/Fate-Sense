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