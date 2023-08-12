// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setStarEmitter(pX, pY){
	
	var emitter = part_emitter_create(global.PSystem);
	part_emitter_region(global.PSystem, emitter, pX -sprite_width/2,  pX + sprite_width/2, pY - 20, pY + 20, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(global.PSystem, emitter, global.PTStar,  6 + irandom(2));
	//part_emitter_stream(global.PSystem, emitter, global.PTCloud, 5);
	

	
}