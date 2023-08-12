// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroyCloud(cloud){
	switch(cloud.size){
	case 1:
		show_debug_message("one");
		sprite_index = Spr_Cloud_Small_Destroy;
		image_speed = 0.15;
		break;
	case 2:
		show_debug_message("two");
		sprite_index = Spr_Cloud_Medium_Destroy;
		image_speed = 0.15;
		break;
	case 3:
		show_debug_message("three");
		sprite_index = Spr_Cloud_Large_Destroy;
		image_speed = 0.15;
		break;
	default:
		break;
	}
	cloud.destroy = true;
	
		
}