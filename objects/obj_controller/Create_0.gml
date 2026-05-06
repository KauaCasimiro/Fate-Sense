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
feedback_duration = 0.5

round_timer = 0;

current_round = undefined;
pending_input = undefined;
input_processed = undefined;

_score = 0;
combo = 0;
max_combo = 0;
_lives = 2;

max_timer = 5;
timer_combo = 0;

game_started = false;
tutorial_done = false;

randomize();

scr_cooldown_tracker_init();
scr_init_cards();