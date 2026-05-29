draw_self();

var controller = instance_find(obj_controller, 0);

if (controller == noone) exit;
if (controller.current_round == undefined) exit;

// =========================
// PEGAR OPTION
// =========================
var option = controller.current_round.options[option_index];

// =========================
// DEFINIR COR DA BOX
// =========================
var box_color = c_black;

// DEBUG: pinta o correto de rosa
if (option_index == controller.current_round.correct_index) {
    box_color = make_color_rgb(255, 0, 150); // rosa
}

// FEEDBACK DE CLICK (verde/vermelho)
if (controller.pending_input != undefined) {

    if (option_index == controller.pending_input) {
        
        var is_correct = (option_index == controller.current_round.correct_index);

        if (is_correct) {
            box_color = c_green;
        } else {
            box_color = c_red;
        }
    }
}

#region
// =========================
// DESENHAR BOX
// =========================
//draw_set_color(box_color);
//draw_rectangle(x - 100, y - 50, x + 100, y + 50, false);
#endregion

draw_set_color(box_color);

var final_scale =  2.5 + hover_lerp * 0.2 + click_pulse;

draw_roundrect_ext(x - 90, y - 90, x + 90, y + 90, 12, 12, false);

if (is_struct(option) && variable_struct_exists(option, "sprite")) {
	draw_sprite_ext(option.sprite, 0, x + shake_x, y - 20 + shake_y - hover_lerp * 10, final_scale, final_scale, hover_lerp * 2, feedback_color, 1);
}

// =========================
// TEXTO
// =========================
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_hud);

var text = "[" + string(option_index) + "]";

if (is_struct(option) && variable_struct_exists(option, "name")) {
    //text += " " + string(option.name);
	draw_text(x, y + 70, text);
}

