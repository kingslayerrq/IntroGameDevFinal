/// @description Insert description here
// You can write your code in this editor
var p1 = instance_find(Obj_Player1, 0);
var p2 = instance_find(Obj_Player2, 0);
var camera_h = 512;
var transitionSpeed = 0.1;
var halfViewHeight = camera_get_view_height(view_camera[0])/2;
if (p1 != noone and p2 != noone){
	
	if (p1.y < room_height  and p2.y < room_height){
		camera_h = (p1.y + p2.y)/2;
	}
	else if (p1.y < room_height and p2.y >= room_height){
		camera_h = p1.y;
	}
	else if (p1.y >= room_height and p2.y < room_height){
		camera_h = p2.y;
	}
}
else{
	camera_h = 512;
}
camera_set_view_pos(view_camera[0], 0, lerp(camera_get_view_y(view_camera[0]), camera_h - halfViewHeight, transitionSpeed));
	



