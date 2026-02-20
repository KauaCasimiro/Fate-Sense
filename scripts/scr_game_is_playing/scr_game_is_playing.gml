// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_is_playing(){
	var controller = instance_find(obj_game_controllers, 0);
		if (controller != noone) {
			return (controller.game_state == game_State.Playing);
		} else {
			return false;
		}
}