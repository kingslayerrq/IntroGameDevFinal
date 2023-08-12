/// @description Insert description here
// You can write your code in this editor

//p1Score = Obj_Player1.curScore;
//p2Score = Obj_Player2.curScore;
var p1 = instance_find(Obj_Player1, 0);
var p2 = instance_find(Obj_Player2, 0);

var p1ScoreCurFrame = 0;
var p2ScoreCurFrame = 0;

if( p1!= noone and p2 != noone){
	
	if(instance_exists(Obj_Cloud)){
		
		with(Obj_Cloud){
			if (image_blend == p1.myColor){
				//show_debug_message("p1");
				p1ScoreCurFrame++;
				
			}
			else if(image_blend == p2.myColor){
				p2ScoreCurFrame++;
			}
			else{
				continue;
			}
		}
	}	
}
//show_debug_message(p1ScoreCurFrame);

p1Score = p1ScoreCurFrame;
p2Score = p2ScoreCurFrame;