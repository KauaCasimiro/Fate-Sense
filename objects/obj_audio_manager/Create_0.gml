current_music = -1;
current_music_id = -1; // ID real da instância do som
fade_time = 5; // 1 segundo (em milissegundos)

function play_sfx(_sound) {
    audio_play_sound(_sound, 2, false);
}