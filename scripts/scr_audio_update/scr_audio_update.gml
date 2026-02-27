function scr_audio_update(){
	var new_music = -1;
	
	if (room == rm_menu) {
		new_music = snd_menu;
	} else {
		switch (global.game_state) {
			case game_State.Playing:
				new_music = snd_game;
			break;
			
			case game_State.Tutorial:
				new_music = snd_tutorial;
			break;
			
			case game_State.Transition:
				new_music = snd_transition;
			break;
			
			case game_State.Game_over:
				new_music = snd_game_over;
			break;
		}
	}
	
	if (current_music != new_music) {
		
		if (current_music_id != -1) {
            audio_sound_gain(current_music_id, 0, fade_time);
        }
		
		current_music = new_music;
		
		if (current_music != -1) {
			current_music_id = audio_play_sound(current_music, 1, true);
			audio_sound_gain(current_music_id, 0, 0);
			
			audio_sound_gain(current_music_id, 1, fade_time);
		}
		
	}
	
	
}