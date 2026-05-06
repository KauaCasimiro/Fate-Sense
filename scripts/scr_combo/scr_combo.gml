function scr_combo(right, combo_streak) {

    var result = {
        combo_streak: combo_streak,
        score_increment: 0,
		combo_active: false
    };

    if (right) {

        result.combo_streak += 1;
		
		result.score_increment = 100;
		
		if (result.combo_streak >= 2) {
			
			result.combo_active = true;
			
			var bonus = (result.combo_streak - 2) * 25;
			
			result.score_increment += bonus;
		}

    } else {

        result.combo_streak = 0;
        result.score_increment = 0;
    }

    return result;
}