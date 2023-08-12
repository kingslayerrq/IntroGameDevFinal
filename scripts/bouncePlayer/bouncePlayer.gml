// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// bounce the player obj
function bouncePlayer(p){
	p.hspeed = -p.gravity * restitution;
	p.isJumping = true;
	p.isFalling = false;
}