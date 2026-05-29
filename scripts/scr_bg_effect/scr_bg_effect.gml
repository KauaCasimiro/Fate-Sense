function scr_bg_effect(){
	var dt = delta_time / 1000000;

	bg_time += dt;

	// =========================
	// FLOAT
	// =========================
	bg_offset_x = sin(bg_time * 0.7) * 8;
	bg_offset_y = cos(bg_time * 0.5) * 5;

	// =========================
	// ROTATION
	// =========================
	bg_rotation = sin(bg_time * 0.4) * 0.8;
}