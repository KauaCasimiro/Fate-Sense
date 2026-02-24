// Begin Step do obj_game_controller
var dt = delta_time / 1000000;

if (combo_streak > 0) {
    timer_combo -= dt;
    if (timer_combo <= 0) {
        timer_combo = 0;
        combo_streak = 0;
        show_debug_message("Sequência de combo perdida");
    }
}