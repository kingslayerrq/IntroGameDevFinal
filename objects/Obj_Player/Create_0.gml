/// @description Insert description here
// You can write your code in this editor
grav = 0.33;

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
isDashing = false;

dashCD = 45;
dashCDTimer = 0;
dashDur = 8;
dashAccelMultiplier = 1.8;
dashDir = 0;
dashThreshold = 290;
lastLkey = 0;
lastRkey = 0;
lastDescKey = 0;
descThreshold = 280;


descendFXTimer = 0;
dashFadePT = part_type_create();

part_type_sprite(dashFadePT, sprite_index, false, false, false);
part_type_size(dashFadePT, 1, 1, 0, 0);
part_type_life(dashFadePT, 20, 20);
part_type_alpha3(dashFadePT, 0.8, 0.5, 0.1);
part_type_color1(dashFadePT, myColor);
part_type_blend(dashFadePT, true);



trailPT = part_type_create();
part_type_sprite(trailPT, trailSprite, false, false, false);
part_type_life(trailPT, 40, 40);
part_type_alpha3(trailPT, 1, 1, 0);
part_type_size(trailPT, 1, 3, 0, 0);
part_type_blend(trailPT, true);

alarm[0] = 4;
