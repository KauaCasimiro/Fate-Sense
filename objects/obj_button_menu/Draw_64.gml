for (var i = 0; i < array_length(menu); i++) {
	
	var spr = menu[i].sprite;
	
	var _x = 350;
	var _y = 1300 + (sprite_get_height(spr) * button_scale + spacing) * i;
	
	draw_sprite_ext(spr, 0, _x, _y, button_scale, button_scale, 0, c_white, 1);
}