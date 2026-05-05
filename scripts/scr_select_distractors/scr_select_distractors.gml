function scr_select_distractors(correct_card) {

    var pool = scr_get_pool_cards(correct_card);
    var result_list = [];

    // 1. BUILD (calcular score de cada candidato)
    for (var i = 0; i < array_length(pool); i++) {

        var candidate = pool[i];
        var _score = 0;

        // TAGS
        for (var j = 0; j < array_length(correct_card.tags); j++) {
            for (var l = 0; l < array_length(candidate.tags); l++) {
                if (correct_card.tags[j] == candidate.tags[l]) {
                    _score += 2.0;
                }
            }
        }

        // THEMES
        for (var k = 0; k < array_length(correct_card.themes); k++) {
            for (var t = 0; t < array_length(candidate.themes); t++) {
                if (correct_card.themes[k] == candidate.themes[t]) {
                    _score += 1.0;
                }
            }
        }

        // COOLDOWN
        _score -= scr_cooldown_get_penalty(candidate);

        // NOISE
        _score += random_range(-0.2, 0.2);

        // salvar par (carta + score)
        array_push(result_list, {
            card: candidate,
            __score: _score
        });
    }

    // 2. SORT (fora do loop)
    array_sort(result_list, function(a, b) {
        return b.__score - a.__score;
    });

    // 3. SELEÇÃO DOS DISTRATORES (TOP 3)
    var distractors = [];

    for (var i = 0; i < 3; i++) {
        array_push(distractors, result_list[i].card);
    }

    return distractors;
}