var dt = delta_time / 1000000;


// =====================================================
// STATE MACHINE
// =====================================================

switch (global.game_state) {

    case game_State.Tutorial:
        if (!instance_exists(obj_popup_tutorial)) {
            instance_create_layer(0, 0, "Instance_UI", obj_popup_tutorial);
        }
    break;


    case game_State.Transition:
        transition_timer += dt;

        if (transition_timer >= transition_duration) {
            transition_timer = 0;
            global.game_state = game_State.Playing;
        }
    break;


    case game_State.Playing:


        // =====================================================
        // SETUP DA RODADA
        // =====================================================
        if (current_round == undefined) {
            current_round = scr_generate_question();
            input_processed = false;
        }


        round_timer += dt;


        // =====================================================
        // INPUT PROCESSING (UMA VEZ POR INPUT)
        // =====================================================
        if (pending_input != undefined && !input_processed) {

            var result = scr_check_answer(current_round, pending_input);

            var combo_result = scr_combo(result, combo, timer_combo, max_timer);

            combo = combo_result.combo_streak;
            _score += combo_result.score_increment;
            timer_combo = combo_result.timer_combo;


            // =========================
            // FEEDBACK DE RESULTADO
            // =========================
            if (result) {

                with (obj_audio_manager) {
                    play_sfx(sfx_bnt_game);
                }

            } else {

                _lives--;

                with (obj_audio_manager) {
                    play_sfx(sfx_bnt_game_wrong);
                }

                if (_lives <= 0) {
                    global.game_state = game_State.Game_over;
                }
            }


            input_processed = true;
        }


        // =====================================================
        // RESET DA RODADA
        // =====================================================
        if (input_processed) {
            current_round = undefined;
            pending_input = undefined;
            input_processed = false;
        }


        // =====================================================
        // TIMER DE COMBO (ESTADO CONTÍNUO)
        // =====================================================
        if (combo > 0) {
            timer_combo -= dt;

            if (timer_combo <= 0) {
                combo = 0;
                timer_combo = 0;
            }
        }

    break;


    case game_State.Game_over:
        if (!instance_exists(obj_popup_end)) {
            instance_create_layer(0, 0, "Instance_UI", obj_popup_end);
        }
    break;
}


// =====================================================
// FEEDBACK TIMER (UI TEMPORAL)
// =====================================================

if (pending_input != undefined) {
    feedback_timer += dt;

    if (feedback_timer >= feedback_duration) {
        pending_input = undefined;
        feedback_timer = 0;
    }
}