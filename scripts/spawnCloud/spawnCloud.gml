// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnCloud(){
	var tries = 0;
	var view_left = camera_get_view_x(view_camera[0]);
	var view_top = camera_get_view_y(view_camera[0]);
	var view_width = camera_get_view_width(view_camera[0]);
	var view_height = camera_get_view_height(view_camera[0]);
	var randomX = random_range(view_left, view_left + view_width);
	var randomY = max(random_range(view_top, view_top + view_height - 50), 220);
	//var cloudInstance = instance_create_layer(randomX, randomY, "Instances", Obj_Cloud);
	var collision = collision_rectangle(randomX - 80, randomY - 40, randomX + 80, randomY + 40, Obj_Cloud, false, true);
	while (tries < 3000 and collision != noone){
		randomX = random_range(view_left, view_left + view_width);
		randomY = max(random_range(view_top, view_top + view_height - 50), 220);
		tries++;
	}
	if (tries <= 3000){
		instance_create_layer(randomX, randomY, "Instances", Obj_Cloud);
		Obj_GameManager.frames_since_lastcloud = 0;
	}
}