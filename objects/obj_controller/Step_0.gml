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
	
		if (session_current >= session_total) {
			global.game_state = game_State.Game_over;
			break;
		}


        // =====================================================
        // SETUP DA RODADA
        // =====================================================
        if (current_round == undefined && !in_feedback) {
            current_round = scr_generate_question(session_deck, session_index);
            input_processed = false;
        }


        round_timer += dt;


        // =====================================================
        // INPUT PROCESSING (UMA VEZ POR INPUT)
        // =====================================================
        if (pending_input != undefined && !input_processed && !in_feedback) {

		    var result = scr_check_answer(current_round, pending_input);

		    var combo_result = scr_combo(result, combo);

		    combo = combo_result.combo_streak;
			combo_active = combo_result.combo_active;
		    _score += combo_result.score_increment;
			
			if (combo > max_combo) {
				max_combo = combo;
			}
				
		    //timer_combo = combo_result.timer_combo;

		    last_result = result;

		    // ativa estado de feedback
		    in_feedback = true;
		    feedback_timer = 0;

		    // =========================
		    // SFX
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
        /*if (input_processed) {
            current_round = undefined;
            pending_input = undefined;
            input_processed = false;
        }*/

    break;


    case game_State.Game_over:
        if (!instance_exists(obj_popup_end)) {
            instance_create_layer(0, 0, "Instance_UI", obj_popup_end);
        }
    break;
}


// =====================================================
// FEEDBACK STATE (RODA TODO FRAME)
// =====================================================
if (in_feedback) {
	feedback_timer += dt;

	if (feedback_timer >= feedback_duration) {
		
		scr_cooldown_next_round();
		
		current_round = undefined;
		pending_input = undefined;
		input_processed = false;
		in_feedback = false;
		
		session_index += 1;
		session_current += 1;
	}
}