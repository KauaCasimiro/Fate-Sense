menu = [
	{
		sprite: spr_button_start_menu, 
		_function: function() {
			with(obj_audio_manager) {
			play_sfx(sfx_bnt_ui);
		}
			room_goto(rm_game);
		},
		
		
		
	},
	{
		sprite: spr_button_exit,
		_function: function() {
			with(obj_audio_manager) {
			play_sfx(sfx_bnt_ui);
		}
			game_end();
		}
	}
];

button_scale = 8;
spacing = 100