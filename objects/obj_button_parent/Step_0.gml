var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// =========================
// BOX
// =========================
var box_left   = x - 100;
var box_right  = x + 100;
var box_top    = y - 50;
var box_bottom = y + 50;

// =========================
// HOVER DETECTION
// =========================
var inside = point_in_rectangle(mx, my, box_left, box_top, box_right, box_bottom);

// Debug entrada / saída
if (inside && !was_inside) {
    show_debug_message("Entrou na box [" + string(option_index) + "]");
}

if (!inside && was_inside) {
    show_debug_message("Saiu da box [" + string(option_index) + "]");
}

was_inside = inside;


// =========================
// STATE MACHINE
// =========================
switch (state) { 
    case "idle":

        if (device_mouse_check_button_pressed(0, mb_left)) {
            image_speed = 0;
            image_index = 0;

            if (inside) {
                state = "animating";
                image_index = 0;
                image_speed = 2;
                
                game_controller.pending_input = option_index;

                show_debug_message("Clicou na opção: " + string(option_index));
            }
        }

    break;
    
    case "animating":
        if (image_index >= image_number - 1) {
            image_speed = 0;
            image_index = 0;
            state = "idle";
        }
    break;
}