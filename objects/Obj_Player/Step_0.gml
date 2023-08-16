/// @description Insert description here
// You can write your code in this editor

//update x scale
//if(!isFacingRight){
//	image_xscale = -1;
//}
//else{
//	image_xscale = 1;
//}

//if (keyboard_check(left_key)){
//	hspeed = -speed;
//	isFacingRight = false;
//}

//if (keyboard_check(right_key)){
//	hspeed = speed;
//	isFacingRight = true;
//}

//var ySign = sign(vspeed);

//if(ySign == 1){
//	isFalling = true;
//	isJumping = false;
//}
//else{
//	isJumping = true;
//	isFalling = false;
//}


////knock out
//if (y >= room_height){
//	isKnockedOut = true;
//}

//if(isKnockedOut){
//	array_insert(Obj_GameManager.knockedOutPlayers, 0, self);
//}
//////////////////////////////



//slow down the x speed by 90%
x_vel *= 0.9;

//add gravity to the y velocity
y_vel += grav;

//if(isKnockedOut){
//	var ind = ds_list_find_index(Obj_GameManager.targetList, id);
//	ds_list_delete(Obj_GameManager.targetList, ind);
//}
//else if(!isKnockedOut and ds_list_find_index(Obj_GameManager.targetList, id) == -1){
//	ds_list_add(Obj_GameManager.targetList, id);
//}

//if respawn_timer is greater than 0
//AKA if respawn_timer is counting down
if (isKnockedOut){
	if(respawn_timer > 0){
		//decrease it by 1
		respawn_timer -= 1;
		//when respawn_timer reaches 0
		if(respawn_timer <= 0){
			
			if (!audio_is_playing(snd_reset)){
				audio_play_sound(snd_reset, 3, false);
			}
			x = random_range(32, room_width - 32);
			y = room_height + 48;
			//y_vel = 0;
			x_vel = (x-room_width * 0.5) * random_range(0.1, 0.2);
			y_vel = -20;
			r_x = 0;
			r_y = 0;
			isKnockedOut = false;
			isDescending = false;
			image_yscale = 1;
			
		}
	}
}


//add the current speed to the leftover speed from the last frame
r_x += x_vel;
r_y += y_vel;

//round that distance
//these are the pixels we need to move this frame
var to_move_x = round(r_x);
var to_move_y = round(r_y);

//remove the rounded amount so that we have some leftover speed
r_x -= to_move_x;
r_y -= to_move_y;

//find the distance between the two walls w/ some padding
var dist_to_r_wall = room_width - x -30;
var dist_to_l_wall = x - 30;

//find the y direction we're moving
var dir = sign(to_move_y);


//if we're past the right wall
if(to_move_x >= dist_to_r_wall){
	x = room_width - 31;
	x_vel = abs(x_vel) * -1;
	r_x = 0;
	//if we're past the left wall
} 
else if(to_move_x < -dist_to_l_wall){
	x = 31;
	x_vel = abs(x_vel);
	r_x = 0;
} 
else{
	x += to_move_x;
}


if(!isKnockedOut){
	while(to_move_y != 0){
		var colliding = false;
		var collide_with = noone;
		

		if(dir >= 0){
			
			//collide player
			collide_with = instance_place(x, y + dir, Obj_Player);
			if(collide_with != noone)
			{
				//if we aren't already overlapping with that instance
				//if(place_meeting(x, y , collide_with) == false)
				//{
					if(isDescending){
						if(collide_with.isKnockedOut != true and !collide_with.isDescending)
						{
							screenshake(25, 5, 0.3);
							y_vel = max(min(-10, -y_vel), -15);
							r_y = 0;
							show_debug_message("player");
							isDescending = false;
							colliding = true;
							collide_with.y_vel = max(0, collide_with.y_vel + 2);
							collide_with.image_yscale = -1;
							collide_with.isKnockedOut = true;
							with(Obj_Cloud){
								if (image_blend == collide_with.myColor){
									destroyCloud(self);
								}
							}
							if(!audio_is_playing(snd_die)){
								audio_play_sound(snd_die, 6, false);
							}
							setStarEmitter(x, y + dir);
						}
					}
				//}
			}
			else {

				collide_with = instance_place(x, y + dir, Obj_Cloud);
				if(collide_with != noone)
				{
					//curScore++;
					collide_with.image_blend = myColor;
					
					//instance_destroy(collide_with);
						
					//if we aren't already overlapping with that instance
					//if(place_meeting(x, y + 20, collide_with) == false)
					//{
					//	colliding = true;
					//}
					colliding = true;
				}
			}
		}
	
		//if we didn't collide with anything
		if(!colliding){
			//move one pixel
			y += dir;
			//remove that pixel from the distance we need to move this frame
			to_move_y -= dir;
		} 
		else{
			//if(isDescending){
			//	screenshake(10, 1, 0.4);
			//}
				if(!audio_is_playing(snd_bounce)){
					audio_play_sound(snd_bounce, 3, false);
				}
				isDescending = false;
				y = y + dir;
				y_vel = max(min(-10, -y_vel), -15);
				r_y = 0;
				break;
			
		}
	}
	//sprite update
	if (dir < 0){

		sprite_index = Spr_Jumping;
	}
	else{

		sprite_index = Spr_Falling;
	}
} 
else 
{

	y += to_move_y;
}

//if we reached the bottom of the room and the respawn timer is 0
if(y > room_height + 50 && respawn_timer == 0){
	var KOPlayerColor = myColor;
	isKnockedOut = true;
	with(Obj_Cloud){
		if (image_blend == KOPlayerColor){
			destroyCloud(self);
		}
	}
	
	if(!audio_is_playing(snd_ground)){
		audio_play_sound(snd_ground, 3, false);
	}
	setStarEmitter(x, room_height - 50);
	
	respawn_timer = respawn_time_reset;
	
}



//add acceleration to x speed based on input
if (!isKnockedOut and !isDescending){
	if(keyboard_check(ord(left_key))){
		
		x_vel -= accel;
		isFacingRight = false;
		
		
	}
	if(keyboard_check(ord(right_key))){
		
		x_vel += accel;
		isFacingRight = true;
		
	}
	
	if(keyboard_check_released(dashL)){
		var timeSinceLastKey = current_time - lastLkey;
		//show_debug_message(timeSinceLastKey);
		if (timeSinceLastKey <= dashThreshold){
			dashDir = -1;
			dash(id, dashDir);
			part_particles_create(global.PSystem, x, y, dashFadePT, 1);

			//show_debug_message("double dash");
		}
		else{
			//show_debug_message("normal dash");
		}
		
		lastLkey = current_time;
	}

	if(keyboard_check_released(dashR)){
		var timeSinceLastKey = current_time - lastRkey;
		//show_debug_message(timeSinceLastKey);
		if (timeSinceLastKey <= dashThreshold){
			
			dashDir = 1;
			dash(id, dashDir);

			part_particles_create(global.PSystem, x, y, dashFadePT, 1);

			//show_debug_message("double dash");
		}
		else{
			//show_debug_message("normal dash");
		}
		
		lastRkey = current_time;
	}
	if(keyboard_check_released(descendKey)){
		var timeSinceLastKey = current_time - lastDescKey;
		//show_debug_message(timeSinceLastKey);
		if (timeSinceLastKey <= descThreshold){
			
			descend(id);
			//show_debug_message("double dash");
		}
		else{
			
		}
		lastDescKey = current_time;
	}
	
}


if(isFacingRight){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}



