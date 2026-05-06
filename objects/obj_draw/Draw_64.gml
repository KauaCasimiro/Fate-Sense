var controller = instance_find(obj_controller, 0);
if (controller == noone) exit;

var gw = display_get_gui_width();
var gh = display_get_gui_height();


// =====================================================
// TRANSITION (contador)
// =====================================================
if (global.game_state == game_State.Transition) {

    var seconds_left = ceil(controller.transition_duration - controller.transition_timer) - 1;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_main);

    var text_to_show;

    if (seconds_left > 0) {
        text_to_show = string(seconds_left);
    } else {
        text_to_show = "Game";
    }

    draw_text(gw * 0.5, gh * 0.5, text_to_show);
    exit; // não desenha resto
}


// =====================================================
// SE NÃO ESTIVER JOGANDO, NÃO DESENHA HUD
// =====================================================
if (global.game_state != game_State.Playing) {
    exit;
}


// =====================================================
// PROMPT (centro da tela)
// =====================================================
if (controller.current_round != undefined) {

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_hud);

    var prompt_text = controller.current_round.prompt;

    draw_text(gw * 0.5, gh * 0.3, prompt_text);
}


// =====================================================
// HUD (tempo / score / combo)
// =====================================================
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_combo);

draw_text(40, 40, "Sessão: " + string(controller.session_current + 1) + " / " + string(controller.session_total));
draw_text(40, 100, "Score: " + string(controller._score));
draw_text(40, 160, "Combo: ");
if (controller.combo_active) {
	draw_set_color(c_yellow);
	draw_text(200, 160, string(controller.combo) + "x" );
	draw_set_color(c_white)
}


// =====================================================
// VIDAS (versão simples por enquanto)
// =====================================================
draw_text(40, 280, "Vidas: " + string(controller._lives));