/// @description Insert description here
// You can write your code in this editor

var p1 = instance_find(Obj_Player1, 0);
var p2 = instance_find(Obj_Player2, 0);

if (global.gameOngoing >= global.gameDuration){
	gameStart = false;
	
	showEnding = true;
	
	instance_destroy(p1);
	instance_destroy(p2);
	if (keyboard_check(vk_space)){
		room_restart();
	}
}
if (showText){
	if (global.initOngoing <= global.initTime){
		
		global.initOngoing++;
	}
	else{
		showText = false;
		//global.initOngoing = 0;
		gameStart = true;
	}
}

if (gameStart){
	global.gameOngoing++;
	if(!audio_is_playing(snd_bgm)){
		audio_play_sound(snd_bgm, 5, true);
	}
}


	



