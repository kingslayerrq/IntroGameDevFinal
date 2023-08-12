/// @description Insert description here
// You can write your code in this editor



event_inherited();
if (!isKnockedOut){
	if (keyboard_check(vk_left)){
		x_vel -= accel;
		isFacingRight = false;
	}
	if(keyboard_check(vk_right)){
		x_vel += accel;
		isFacingRight = true;
	}
}