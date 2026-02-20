// Begin Step do obj_game_controller
var dt = delta_time / 1000000; // segundos reais

// atualiza timer global, se usar
//timer += dt;

// decrementa a janela de combo somente se o jogador estiver em sequência
if (combo_streak > 0) {
    timer_combo -= dt;
    if (timer_combo <= 0) {
        timer_combo = 0;
        combo_streak = 0;
        show_debug_message("Sequência de combo perdida");
    }
}

// debug temporário
//show_debug_message("BEGIN STEP DEBUG | timer_combo: " + string(timer_combo) + " | combo_streak: " + string(combo_streak));
