/// @description Insert description here
// You can write your code in this editor

//count cloud
var cloudCount = instance_number(Obj_Cloud);
//var playerCount = instance_number(Obj_Player);
frames_since_lastcloud ++;


if (Obj_RoundManager.gameStart){
	if((frames_since_lastcloud >= frames_between_cloud or cloudCount < 20) and cloudCount < maxCloudCount){
		spawnCloud();
	}
}
//if(instance_number(Obj_Player1) == 0){
//	var sx1 = random_range(32, room_width - 32);
//	var sy1 = room_height + 48;
//	var p1 = instance_create_layer(sx1, sy1, "Instances", Obj_Player1);
//	p1.x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
//	p1.y_vel = -18;
//	p1.r_x = 0;
//	p1.r_y = 0;
//	p1.isKnockedOut = false;
//	if(!audio_is_playing(snd_reset)){
//		audio_play_sound(snd_reset, 3, false);
//	}
//}
//if(instance_number(Obj_Player2) == 0){
//	var sx2 = random_range(32, room_width - 32);
//	var sy2 = room_height + 48;
//	var p2 = instance_create_layer(sx2, sy2, "Instances", Obj_Player2);
//	p2.x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
//	p2.y_vel = -18;
//	p2.r_x = 0;
//	p2.r_y = 0;
//	p2.isKnockedOut = false;
//	if(!audio_is_playing(snd_reset)){
//		audio_play_sound(snd_reset, 3, false);
//	}
//}
//show_debug_message(Obj_Player1.y);
var sx1 = random_range(32, room_width - 32);
var sy1 = room_height + 48;
var sx2 = random_range(32, room_width - 32);
var sy2 = room_height + 48;

if(global.initOngoing == global.initTime){
	var p1 = instance_create_layer(sx1, sy1, "Instances", Obj_Player1);
	
	p1.x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
	p1.y_vel = -18;
	p1.r_x = 0;
	p1.r_y = 0;
	p1.isKnockedOut = false;
	if(!audio_is_playing(snd_reset)){
		audio_play_sound(snd_reset, 3, false);
	}
	var p2 = instance_create_layer(sx2, sy2, "Instances", Obj_Player2);
	p2.x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
	p2.y_vel = -18;
	p2.r_x = 0;
	p2.r_y = 0;
	p2.isKnockedOut = false;
	if(!audio_is_playing(snd_reset)){
		audio_play_sound(snd_reset, 3, false);
	}
	Obj_RoundManager.playerSpawned = true;
}











	
			



