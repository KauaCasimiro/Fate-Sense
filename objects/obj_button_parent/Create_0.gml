image_speed = 0;
image_index = 0;
game_controller = instance_find(obj_controller, 0);

option_index = 0;
state = "idle";

was_inside = false;

hover_lerp = 0;

click_pulse = 0;

feedback_color = c_white;

shake_x = 0;
shake_y = 0;