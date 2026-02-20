if (game_state == game_State.Transition) {
	var seconds_left = ceil(transition_duration - transition_timer) - 1;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_main);
	
	var text_to_show;
	
	if (seconds_left > 0) {
		text_to_show = string(seconds_left); 
	} else {
		text_to_show = "LINKAR!";
	}
	draw_text(display_get_gui_width() * 0.5, display_get_gui_height() * 0.5, text_to_show);
	
}

if (!scr_game_is_playing()) {
	exit;
}

var gw = display_get_gui_width();
var gh = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_hud);

draw_text(gw/2.1, gh/2.53, current_base);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(fnt_combo);
draw_text(40, 40, "Tempo: " + string(timer, 0, 1));
draw_text(700, 10, "Score: " + string(_score));
draw_text(700, 100, "Combo: " + string(combo_streak));
draw_text(700, 200, "Timer: " + string(timer_combo, 0, 1));

var start_x = display_get_gui_width() * 0.1 - 40;
var y_pos = 150;
var spacing = 80;
scale_enzyme = 0.2

// Enzima 1
if (repairs >= 1) {
	draw_sprite_ext(spr_enzyme, 0, start_x, y_pos, scale_enzyme, scale_enzyme, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_enzyme, 2, start_x, y_pos, scale_enzyme, scale_enzyme, 0, c_white, 1);
}
	
// Enzima 2
if (repairs >= 2) {
	draw_sprite_ext(spr_enzyme, 1, start_x + spacing, y_pos, scale_enzyme, scale_enzyme, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_enzyme, 3, start_x + spacing, y_pos, scale_enzyme, scale_enzyme, 0, c_white, 1);
}