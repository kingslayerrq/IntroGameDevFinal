/// @description Insert description here
// You can write your code in this editor

frames_since_lastgrowth++;

if (Obj_RoundManager.gameStart){
	if (size < maxCloudSize and frames_since_lastgrowth >= frames_between_growth){
	
		size++;
		growCloud(size);
	//show_debug_message(sprite_index);
	}
}

if (destroy){
	if (image_index >= sprite_get_number(sprite_index) - 1) {
		show_debug_message("destroying");
		instance_destroy(self);
	}
}
//update sprite with size
//switch(size){
//	case 1:
//		sprite_index = Spr_Cloud_Debris_Small;
//		break;
//	case 2:
//		sprite_index = Spr_Cloud_Debris_Medium;
		
//		break;
//	case 3:
//		sprite_index = Spr_Cloud_Debris_Large;

//		break;
//	default:
//		break;
//}
