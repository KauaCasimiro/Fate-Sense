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

draw_text(40, 40, "Tempo: " + string(controller.round_timer, 0, 1));
draw_text(40, 100, "Score: " + string(controller._score));
draw_text(40, 160, "Combo: " + string(controller.combo));
draw_text(40, 220, "Timer Combo: " + string(controller.timer_combo, 0, 1));


// =====================================================
// VIDAS (versão simples por enquanto)
// =====================================================
draw_text(40, 280, "Vidas: " + string(controller._lives));