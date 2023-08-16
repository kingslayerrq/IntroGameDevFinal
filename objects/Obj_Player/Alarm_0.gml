/// @description Insert description here
// You can write your code in this editor


var partAmount = irandom_range(1, 5);

repeat(partAmount){
	var lenL = random_range(3, 10);
	var lenR = random_range(-3, -8);
	var angle = random_range(-15, 15);
	var xDiffL = x + lengthdir_x(lenL, direction - 180 + angle);
	var yDiffL = y + lengthdir_y(lenL, direction - 180 + angle);
	var xDiffM = x + lengthdir_x(0, direction - 180 + angle);
	var yDiffM = y + lengthdir_y(0, direction - 180 + angle);
	var xDiffR = x + lengthdir_x(lenR, direction - 180 + angle);
	var yDiffR = y + lengthdir_y(lenR, direction - 180 + angle);
	
	part_type_orientation(trailPT, direction, direction, false, false, false);
	
	if (!isDescending){
		if(random(10) > 2) part_particles_create(global.PSystem, xDiffL, yDiffL, trailPT, 1);
		part_particles_create(global.PSystem, xDiffM, yDiffM, trailPT, 1);
		if(random(10) > 2) part_particles_create(global.PSystem, xDiffR, yDiffR, trailPT, 1);
	}
	else{
		part_particles_create(global.PSystem, xDiffL - irandom_range(10, 30), yDiffL, trailPT, 1);
		part_particles_create(global.PSystem, xDiffR + irandom_range(10, 30), yDiffR, trailPT, 1);
	}
}

var randTrigTime = irandom_range(1, 4);
alarm_set(0, randTrigTime);





