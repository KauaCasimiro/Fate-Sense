randomize();

scr_cooldown_tracker_init();
scr_init_cards();

enum game_State {
    Tutorial,
    Transition,
    Playing,
    Game_over
}

global.game_state = game_State.Tutorial

transition_timer = 0;
transition_duration = 4;

feedback_timer = 0;
feedback_duration = 2.0;

round_timer = 0;

current_round = undefined;
pending_input = undefined;
input_processed = undefined;

_score = 0;
combo = 0;
combo_active = false;
max_combo = 0;
_lives = 2;

max_timer = 5;

game_started = false;
tutorial_done = false;

in_feedback = false;

session_index = 0;
session_total = 5;
session_current = 0;
session_deck = scr_session_build_deck(session_total);

center_card_sprite = spr_button_back;
center_card_scale_x = 1;
center_card_flipping = false;
center_card_revealed = false;

global.run_state = {
	time: 0,
	_score: 0,
	correct: 0,
	wrong: 0,
	combo_max: 0
};