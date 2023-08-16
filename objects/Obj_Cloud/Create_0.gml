/// @description Insert description here
// You can write your code in this editor

size = 1;


sizeGen = random(5);

if(sizeGen >= 4) maxCloudSize = 3;
else if(sizeGen >=1) maxCloudSize = 2;
else maxCloudSize = 1;

frames_between_growth = random_range(0, 150);
frames_since_lastgrowth = 0;


destroy = false;




