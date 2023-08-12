/// @description Insert description here
// You can write your code in this editor
grav = 0.3;

//speed = 2;
image_xscale = 1;
restitution = 3;
accel = 1;
x_vel = 0;
y_vel = 0;
r_x = 0;
r_y = 0;

respawn_time_reset = 100;
respawn_timer = 0;

isFalling = false;
isFacingRight = true;
isJumping = true;
isKnockedOut = false;
isDescending = false;

dashTimer = 0;
dashDir = 0;
dashThreshold = 350;
lastLkey = 0;
lastRkey = 0;
lastDescKey = 0;
descThreshold = 300;