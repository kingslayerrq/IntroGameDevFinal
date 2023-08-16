/// @description Insert description here
// You can write your code in this editor

if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   var shakeOrigX = camera_get_view_x(cam);
   var shakeOrigY = camera_get_view_y(cam);
   camera_set_view_pos(cam, clamp(shakeOrigX + _xval, 0, room_width - camera_get_view_width(cam)), 
	clamp(shakeOrigX + _yval, 0, room_height - camera_get_view_height(cam))); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], shakeOrigX, shakeOrigY); 
         shake = false; 
      } 
   } 
}






