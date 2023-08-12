/// @description Insert description here
// You can write your code in this editor
global.PSystem = part_system_create_layer(layer, true);


global.PTCloud = part_type_create();
part_type_shape(global.PTCloud, pt_shape_pixel);
part_type_sprite(global.PTCloud, Spr_Cloud_Debris_All, false, false, true);
part_type_orientation(global.PTCloud, 0, 0, 0, 0, 0);


global.PTStar = part_type_create();
part_type_shape(global.PTStar, pt_shape_star);
part_type_sprite(global.PTStar, Spr_Star_All, false, false, true)
part_type_scale(global.PTStar, 0.8 + irandom(1), 0.8 + irandom(1));
part_type_direction(global.PTStar, 0, 359, 0, 0);
part_type_life(global.PTStar, room_speed/2, room_speed/2);


