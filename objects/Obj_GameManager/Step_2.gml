/// @description Insert description here
// You can write your code in this editor
var p1 = instance_find(Obj_Player1, 0);
var p2 = instance_find(Obj_Player2, 0);
//targetList = ds_list_create();
//targetList[|0] = p1;
//targetList[|1] = p2;



//var camera_h = 512;

//var halfViewHeight = camera_get_view_height(view_camera[0])/2;
//if (p1 != noone and p2 != noone){
	
//	if (p1.y < room_height  and p2.y < room_height){
//		camera_h = (p1.y + p2.y)/2;
//	}
//	else if (p1.y < room_height and p2.y >= room_height){
//		camera_h = p1.y;
//	}
//	else if (p1.y >= room_height and p2.y < room_height){
//		camera_h = p2.y;
//	}
//}
//else{
//	camera_h = 512;
//}
//camera_set_view_pos(view_camera[0], 0, lerp(camera_get_view_y(view_camera[0]), min(camera_h - halfViewHeight, 512) , transitionSpeed));

if (p1 != noone and p2 != noone){
	if(p1.y <= room_height and p2.y <= room_height){
		//with offset
		var leftBound = min(p1.bbox_left, p2.bbox_left) - offsetWidth;
		var rightBound = max(p1.bbox_right, p2.bbox_right) + offsetWidth;
		var topBound = min(p1.bbox_top, p2.bbox_top) - offsetHeight;
		var botBound = max(p1.bbox_bottom, p2.bbox_bottom) + offsetHeight;
	}
	else if(p1.y <= room_height and p2.y > room_height){
		var leftBound = p1.x - 384;
		var rightBound = p1.x + 384;
		var topBound = p1.y - 256;
		var botBound = p1.y + 256
	}
	else if(p2.y <= room_height and p1.y > room_height){
		var leftBound = p2.x - 384;
		var rightBound = p2.x + 384;
		var topBound = p2.y - 256;
		var botBound = p2.y + 256;
	}
	else{
		var leftBound = 0;
		var rightBound = room_width;
		var topBound = 0;
		var botBound = room_height;
	}
	//basic width&&height
	var widthDist = min(rightBound - leftBound, room_width);
	var heightDist = min(botBound - topBound, room_height);

	var aspWHeight = widthDist * (1/aspectRatio);   //width as base
	var aspHWidth = heightDist * aspectRatio;       //height as base

	//width as base
	if(aspWHeight >= heightDist){
		var targetXPos =  clamp((leftBound + rightBound) * 0.5 - widthDist * 0.5, 0, room_width -  widthDist);
		var targetYPos = clamp((topBound + botBound) * 0.5 - aspWHeight * 0.5, 0, room_height - aspWHeight);
		camera_set_view_size(cam, lerp(camera_get_view_width(cam), widthDist, transitionSpeed), 
			lerp(camera_get_view_height(cam), aspWHeight, transitionSpeed));
		camera_set_view_pos(cam, lerp(camera_get_view_x(cam), targetXPos, transitionSpeed), 
			lerp(camera_get_view_y(cam), targetYPos , transitionSpeed));
	//show_debug_message(camera_get_view_x(cam));
	//show_debug_message(camera_get_view_y(cam));
	}
	//use height as base
	else{
		var targetXPos = clamp((leftBound + rightBound) * 0.5 -aspHWidth * 0.5, 0, room_width - aspHWidth );
		var targetYPos = clamp((topBound + botBound) * 0.5 - heightDist * 0.5, 0, room_height - heightDist);
		camera_set_view_size(cam, lerp(camera_get_view_width(cam), aspHWidth, transitionSpeed), 
			lerp(camera_get_view_height(cam), heightDist, transitionSpeed));
		camera_set_view_pos(cam, lerp(camera_get_view_x(cam), targetXPos, transitionSpeed), 
			lerp(camera_get_view_y(cam), targetYPos, transitionSpeed));
	}
}

//if (ds_list_size(targetList)>=1 and targetList[|0] != noone){
//	var newX = array_get( getCenter(targetList), 0);
//	var newY = array_get( getCenter(targetList), 1);
//	var hDist = array_get(getCenter(targetList), 2);
//	var vDist = array_get(getCenter(targetList), 3);
//	var newWidth = clamp(hDist, minCamWidth, room_width);
//	var newHeight = clamp(vDist, minCamHeight, room_height);
//	camera_set_view_pos(view_camera[0], lerp(camera_get_view_y(view_camera[0]), newX + 20, transitionSpeed), lerp(camera_get_view_y(view_camera[0]), newY + 20, transitionSpeed));
//	camera_set_view_size(view_camera[0], lerp(camera_get_view_width(view_camera[0]), newWidth, 0.5), lerp(camera_get_view_height(view_camera[0]), newHeight, 0.5));
//	view_wport[0] = lerp(camera_get_view_width(view_camera[0]), newWidth, 0.5);
//	view_hport[0] =  lerp(camera_get_view_height(view_camera[0]), newHeight, 0.5);
	
//}

//if (p1 != noone && p2 != noone) {
//    // Calculate the bounding box that includes both players
//    var leftX = max(0, min(p1.x, p2.x));
//    var rightX = min(room_width, max(p1.x, p2.x));
//    var topY = max(0, min(p1.y, p2.y));
//    var bottomY =min(room_height, max(p1.y, p2.y));

//    // Calculate the width and height of the bounding box
//    var width = rightX - leftX;
//    var height = bottomY - topY;

//    // Calculate the center of the bounding box
//    var centerX = leftX + width / 2;
//    var centerY = topY + height / 2;

//    // Calculate the aspect ratio of the bounding box
//    var aspectRatio = width / height;

//    // Choose the larger dimension to set the camera size
//    if (aspectRatio > display_get_width() / display_get_height()) {
//		camera_set_view_size(view_camera[0], width, width * display_get_height() / display_get_width());
//		//view_set_wport(0, width);
//		//view_set_hport(0, width * display_get_height() / display_get_width());
		
//        //view_set_wport(0, lerp(view_wport[0], width, 0.2));
//        //view_set_hport(0, lerp(view_hport[0], width * display_get_height() / display_get_width(), 0.2));
//    } else {
//		camera_set_view_size(view_camera[0], height * display_get_width() / display_get_height(), height);
//		//view_set_hport(0, height);
//		//view_set_wport(0, height * display_get_width() / display_get_height());
		
//        //view_set_hport(0, lerp(view_hport[0], height, 0.2));
//        //view_set_wport(0, lerp(view_wport[0], height * display_get_width() / display_get_height(), 0.2));
//    }
//	// Set the camera position and size based on the bounding box
//    camera_set_view_pos(view_camera[0], centerX - view_wport[0] / 2, centerY - view_hport[0] / 2);
//    //camera_set_view_size(view_camera[0], width, height);

//    // Set the camera position
//	//view_set_xport(0, centerX - view_wport[0]/ 2);
//	//view_set_yport(0,  centerY - view_hport[0]/ 2);
//    //view_set_xport(0, lerp(view_xport[0], centerX - view_wport[0]/ 2, 0.2));
//    //view_set_yport(0, lerp(view_yport[0], centerY - view_hport[0]/ 2, 0.2));
//}


