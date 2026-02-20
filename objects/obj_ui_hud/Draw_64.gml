if (!scr_game_is_playing()) {
	exit;
}

var gw = display_get_gui_width();
var gh = display_get_gui_height();

var center_x = gw * 0.5;
var center_y = gh * 0.42;

draw_sprite_ext(sprite_dna, 0, center_x, center_y, scale, scale, 0, c_white, 1);