/// @description Insert description here
// You can write your code in this editor

if (showText){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed_color(room_width/2, camera_get_view_y(view_camera[0]), "New Round!", 5, 5, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	//show_debug_message("new rond");
	
}
if (showEnding){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed_color(room_width/2, camera_get_view_y(view_camera[0]) - 30, "Game Over", 5, 5, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	draw_text_transformed_color(room_width/2, camera_get_view_y(view_camera[0]) + 30, "Press Space to Restart", 2, 2, image_angle, c_orange, c_orange, c_maroon, c_maroon,1);
	//show_debug_message("game over");
}	



remainTimeX = room_width/2;
remainTimeY = 50;
remainTime = round((global.gameDuration - global.gameOngoing)/room_speed);
draw_set_halign(fa_middle);
draw_text_transformed_color(remainTimeX, remainTimeY, remainTime, 5, 5, image_angle, c_black, c_black, c_white, c_white,1);

