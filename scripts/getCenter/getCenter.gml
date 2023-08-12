// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getCenter(targets){
	if(ds_list_size(targets) < 1){
		return [0, 512, 0, 0];
	}
	if(ds_list_size(targets) == 1){
		return [targets[|0].x, targets[|0].y, 0, 0];
	}
	else{
		var leftBound = targets[|0].bbox_left;
		var rightBound = targets[|0].bbox_right;
		var topBound =  targets[|0].bbox_top;
		var botBound =  targets[|0].bbox_bottom;
		for (var i = 1; i < ds_list_size(targets); i++){
			if ( targets[|i].bbox_left <= leftBound) leftBound = targets[|i].bbox_left;
			if ( targets[|i].bbox_right >= rightBound) rightBound =  targets[|i].bbox_right;
			if ( targets[|i].bbox_top <= topBound) topBound =  targets[|i].bbox_top;
			if ( targets[|i].bbox_bottom >= botBound) botBound =  targets[|i].bbox_bottom;
		}
		return [(leftBound + rightBound)/2, (topBound + botBound)/2, rightBound - leftBound, botBound - topBound];
	}
}