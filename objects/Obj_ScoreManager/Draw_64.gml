/// @description Insert description here
// You can write your code in this editor
var p1 = instance_find(Obj_Player1, 0);
var p2 = instance_find(Obj_Player2, 0);
p1ScoreX = 10;
p1ScoreY = 30;

if(p1 != noone){
	//p1Score = Obj_Player1.curScore;
	p1ScoreRecorder = p1Score;
	draw_set_halign(fa_left);
	draw_text_transformed_color(p1ScoreX, p1ScoreY, p1Score, 3, 3, image_angle, c_green, c_green, c_white, c_white,1);
}
else{
	draw_set_halign(fa_left);
	draw_text_transformed_color(p1ScoreX, p1ScoreY, p1ScoreRecorder, 3, 3, image_angle, c_green, c_green, c_white, c_white,1);
}

p2ScoreX = display_get_gui_width() - 10;
p2ScoreY = 30;

if(p2 != noone){
	//p2Score = Obj_Player2.curScore;
	p2ScoreRecorder = p2Score;
	draw_set_halign(fa_right);
	draw_text_transformed_color(p2ScoreX, p2ScoreY, p2Score, 3, 3, image_angle, c_red, c_red, c_white, c_white,1);
}
else{
	draw_set_halign(fa_right);
	draw_text_transformed_color(p2ScoreX, p2ScoreY, p2ScoreRecorder, 3, 3, image_angle, c_red, c_red, c_white, c_white,1);
}

if (p1ScoreRecorder > p2ScoreRecorder){
	winner = "p1";
}
else if(p2ScoreRecorder > p1ScoreRecorder){
	winner = "p2";
}
else{
	winner = "";
}