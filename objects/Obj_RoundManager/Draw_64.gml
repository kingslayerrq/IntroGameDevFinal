/// @description Insert description here
// You can write your code in this editor

if (showText){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "New Round!", 5, 5, image_angle, victoryColorP1, victoryColorP1, victoryColorP2, victoryColorP2,1);
	//show_debug_message("new rond");
	
}
if (showEnding){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	//draw_text_transformed_color(room_width/2, camera_get_view_y(view_camera[0]) - 30, "Game Over", 5, 5, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	//draw_text_transformed_color(room_width/2, camera_get_view_y(view_camera[0]) + 30, "Press Space to Restart", 2, 2, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	if(Obj_ScoreManager.winner == ""){
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "TIE!!!", 5, 5, image_angle, victoryColorP1, victoryColorP1, victoryColorP2, victoryColorP2,1);
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 + 30, "Press Space to Restart", 2, 2, image_angle, victoryColorP1, victoryColorP1, victoryColorP2, victoryColorP2,1);
	}
	else if(Obj_ScoreManager.winner == "p1"){
		
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "Player1 Won!!!", 5, 5, image_angle, victoryColorP1, victoryColorP1, victoryColorP1, victoryColorP1,1);
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 + 30, "Press Space to Restart", 2, 2, image_angle, victoryColorP1, victoryColorP1, victoryColorP1, victoryColorP1,1);
	}
	else{
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "Player2 Won!!!", 5, 5, image_angle, victoryColorP2, victoryColorP2, victoryColorP2, victoryColorP2,1);
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 + 30, "Press Space to Restart", 2, 2, image_angle, victoryColorP2, victoryColorP2, victoryColorP2, victoryColorP2,1);
	}
	//draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2 + 30, "Press Space to Restart", 2, 2, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	//show_debug_message("game over");
}	



remainTimeX = display_get_gui_width()/2;
remainTimeY = 50;
remainTime = round((global.gameDuration - global.gameOngoing)/room_speed);
draw_set_halign(fa_middle);
draw_text_transformed_color(remainTimeX, remainTimeY, remainTime, 5, 5, image_angle, c_black, c_black, c_white, c_white,1);

