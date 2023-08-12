// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setEmitter(cloudX, cloudY, size = 1){
	var offsetX;
	switch(size){
		case 1:
			offsetX = 16;
			break;
		case 2:
			offsetX = 32;
			break;
		case 3:
			offsetX = 80;
			break;
		default:
			break;
	}
	
	var emitter = part_emitter_create(global.PSystem);
	part_emitter_region(global.PSystem, emitter, cloudX - offsetX,  cloudX + offsetX, cloudY - 20, cloudY + 20, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.PSystem, emitter, global.PTCloud, size * 4 + irandom(4));
	//part_emitter_stream(global.PSystem, emitter, global.PTCloud, 5);
	

	
}