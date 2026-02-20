var gw = display_get_gui_width();
var gh = display_get_gui_height();

_x = gw * 0.5; // centro da tela de acordo com a largura do display
_y = gh * 0.30; // centro da tela de acordo com a altura do display

var target_width = gw * 0.91;

popup_scale = target_width / sprite_get_width(spr_tutorial);

draw_sprite_ext(spr_tutorial, 0, _x, _y, popup_scale, popup_scale, 0, c_white, 1);

popup_width = sprite_get_width(spr_tutorial) * popup_scale;
popup_height = sprite_get_height(spr_tutorial) * popup_scale;
popup_bottom = _y + popup_height * 0.5;
popup_top = _y - popup_height * 0.5;

button_scale = 8;
button_width = sprite_get_width(spr_button_start_tutorial) * button_scale;
button_height = sprite_get_height(spr_button_start_tutorial) * button_scale;
button_x = _x * 0.65;
var padding = 20;
button_y = popup_bottom - padding - button_height * 1.6;

if (button_state == 0) {
	frame = 0;
} else {
	frame = floor(button_anim_frame);
}

draw_sprite_ext(spr_button_start_tutorial, frame, button_x, button_y, button_scale, button_scale, 0, c_white, 1);

