function scr_combo(right, combo_streak, timer_combo, max_timer) {

    var result = {
        combo_streak: combo_streak,
        score_increment: 0,
        timer_combo: timer_combo
    };

    if (right) {

        if (timer_combo > 0 && combo_streak >= 1) {
            result.score_increment = 1.25;
            result.combo_streak = combo_streak + 1;
        } else {
            result.score_increment = 1;
            result.combo_streak = 1;
        }

        result.timer_combo = max_timer;

    } else {
        result.combo_streak = 0;
        result.timer_combo = 0;
        result.score_increment = 0;
    }

    return result;
}