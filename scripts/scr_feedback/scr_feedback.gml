function scr_feedback(){
    
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    
    //HOVER
    
    var inside = point_in_rectangle(mx, my, x - 120, y - 160, x + 120, y + 160);
    
    var target_hover = 0;
    
    if (inside) {
        target_hover = 1;
    }
    
    hover_lerp = lerp(hover_lerp, target_hover, 0.15);
    
    //CLICK PULSE
    
    click_pulse = lerp (click_pulse, 0, 0.2);
    
    //RESULT FEEDBACK
    
    var controller = instance_find(obj_controller, 0);
    
   if (controller.current_round == undefined) {
    exit;
}
    
 if (controller.in_feedback) {

        if (option_index == controller.pending_input) {

            var is_correct =
                (option_index == controller.current_round.correct_index);

            // =============================================
            // ACERTO
            // =============================================
            if (is_correct) {

                feedback_color = merge_color(
                    feedback_color,
                    c_lime,
                    0.25
                );

            }

            // =============================================
            // ERRO
            // =============================================
            else {

                feedback_color = merge_color(
                    feedback_color,
                    c_red,
                    0.25
                );

                shake_x = random_range(-4, 4);
                shake_y = random_range(-4, 4);
            }

        }

    }

    // =====================================================
    // RESET VISUAL
    // =====================================================

    else {

        feedback_color = merge_color(
            feedback_color,
            c_white,
            0.15
        );

        shake_x = lerp(shake_x, 0, 0.3);
        shake_y = lerp(shake_y, 0, 0.3);

        click_pulse = lerp(click_pulse, 0, 0.2);
    }
}