// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function growCloud(targetScale){
	var growthRate = 0.1;
	//if (image_xscale < targetScale){
	//	image_xscale += growthRate;
	//}
	if (targetScale == 2){
		sprite_index = Spr_Cloud_Medium;
	}
	else{
		sprite_index = Spr_Cloud_Large;
	}
	frames_since_lastgrowth = 0;
	//x -= (sprite_width / 2) * (image_xscale - 1);
	//y -= (sprite_height / 2) * (image_xscale - 1);
}