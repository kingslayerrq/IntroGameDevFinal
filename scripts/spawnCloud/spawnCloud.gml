// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnCloud(){

	//var view_left = camera_get_view_x(view_camera[0]);
	//var view_top = camera_get_view_y(view_camera[0]);
	//var view_width = camera_get_view_width(view_camera[0]);
	//var view_height = camera_get_view_height(view_camera[0]);
	var randomX = random_range(0, room_width);
	var randomY = random_range(220, room_height - 64);
	
	var newCloud = instance_create_layer(randomX, randomY, "Instances", Obj_Cloud);
	with(newCloud){
		var tries = 0;
		while(tries< 3000 and  collision_rectangle(randomX - 200, randomY - 70, randomX + 200, randomY + 70, Obj_Solid, false, true) != noone){
			x = random_range(0, room_width);
			y = random_range(220, room_height - 64);
			tries++;
		}
		
		
	}
	Obj_GameManager.frames_since_lastcloud = 0;
	
	
	

	//var collision = collision_rectangle(randomX - 80, randomY - 40, randomX + 80, randomY + 40, Obj_Cloud, false, true);
	//while (tries < 3000 and collision != noone){
	//	randomX = random_range(view_left, view_left + view_width);
	//	randomY = max(random_range(view_top, view_top + view_height - 50), 220);
	//	tries++;
	//}
	//if (tries <= 3000){
	//	instance_create_layer(randomX, randomY, "Instances", Obj_Cloud);
	//	Obj_GameManager.frames_since_lastcloud = 0;
	//}
}