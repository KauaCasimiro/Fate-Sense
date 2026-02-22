menu = [
	{
		sprite: spr_button_start_menu, 
		_function: function() {
			room_goto(rm_game);
		}
	},
	{
		sprite: spr_button_exit,
		_function: function() {
			game_end();
		}
	}
];

button_scale = 8;
spacing = 100