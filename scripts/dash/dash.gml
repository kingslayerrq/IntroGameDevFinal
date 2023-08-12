// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dash(player, dir){
	show_debug_message("dashing");
	if(!audio_is_playing(snd_dash)){
		audio_play_sound(snd_dash, 5, false);
	}
	var origX = player.x;
	var targetX = origX + dir * 80;
	player.x = lerp(player.x, targetX, 0.5);
}