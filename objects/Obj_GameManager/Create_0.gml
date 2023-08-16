/// @description Insert description here
// You can write your code in this editor
frames_since_lastcloud = 0;
frames_between_cloud = 150;


maxCloudCount = 40;

cam = view_camera[0];
transitionSpeed = 0.2;
offsetWidth = 300;
offsetHeight = 250;
aspectRatio = 768/512;  //width over height




//var sx1 = random_range(32, room_width - 32);
//var sy1 = room_height + 48;
//if(global.initOngoing > global.initTime){
//	var p1 = instance_create_layer(sx1, sy1, "Instances", Obj_Player1);
//	show_debug_message("why");
//	p1.x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
//	p1.y_vel = -18;
//	p1.r_x = 0;
//	p1.r_y = 0;
//	p1.isKnockedOut = false;
//	if(!audio_is_playing(snd_reset)){
//		audio_play_sound(snd_reset, 3, false);
//	}
//}




//var sx2 = random_range(32, room_width - 32);
//var sy2 = room_height + 48;
//if(global.initOngoing > global.initTime){
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

