function scr_create_card(_name, _meaning, _tags, _themes, _sprite){
	
	if (!is_array(_tags)) {
		show_debug_message("ERROR: tags isn't array");
	}
	
	if (!is_array(_themes)) {
		show_debug_message("ERROR: themes isn't array");
	}
	
	return {
		name: _name,
		meaning: _meaning,
		tags: _tags,
		themes: _themes,
		sprite: _sprite
	};
	
}