// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetPlayer(p){
	show_debug_message("ressing");
	p.x = random_range(32, room_width - 32);
	p.y = room_height;
	var dir = random_range(60, 120);
	var spawnSpeed = 15;
	p.hspeed = lengthdir_x(spawnSpeed, dir);
	p.vspeed = lengthdir_y(spawnSpeed, dir);
	p.x_vel = 0;
	p.y_vel = 0;
	p.isFalling = false;
	p.isJumping = true;
	
}