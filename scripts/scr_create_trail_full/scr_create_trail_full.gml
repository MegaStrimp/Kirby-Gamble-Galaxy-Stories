/// @description scr_create_trail_full(sprite, index, num_steps, image_x_offset, image_y_offset, x_scale, y_scale, precision, alpha, fade, pinch_end, trail_colour, no_show_distance)
/// @param sprite
/// @param  index
/// @param  num_steps
/// @param  image_x_offset
/// @param  image_y_offset
/// @param  x_scale
/// @param  y_scale
/// @param  precision
/// @param  alpha
/// @param  fade
/// @param  pinch_end
/// @param  trail_colour
/// @param  no_show_distance
/// @param  trail_depth
function scr_create_trail_full(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13) {

	//sprite:           sprite to draw  (The sprite must be selected as 'Used for 3D' in the Sprite editor.)
	//index:            sprite image index to draw
	//num_steps:        number of steps that the trail will follow the object
	//image_x_offset:   Amount to offset the sprite image each step (so that the trail image appears to be moving). Number between -1 and 1.
	//image_y_offset:   Number between 0 and 1.     
	    //                      0 = top of sprite rides on the path.  
	    //                      1 = bottom of sprite rides on the path.
	    //                      0.5 = mid-sprite rides along the path 
	//x_scale:          Scale the sprite width along the length of the path
	    //                      If a '0' value is entered, then the scale of the sprite will be set to length of the path    
	//y_scale:          Scale the sprite height
	//precision:        Size or distance of each step in pixels 
	//alpha             transparancy of trail   (0 to 1)   Note: In addition, this is also affected by the value set by the 'draw_set_alpha()' function.
	//fade:             0 = no fade,  1 = fade trail at end
	//pinch_end:        0 = no pinch, 1 = pinch end of trail to a point
	//trail_colour:     Blend color to apply to trail
	//no_show_distance: Distance at the start of the trail to not show (in pixels)

	//returns index of trail instance

	var sprite = argument0;
	var index = argument1;
	var num_steps = argument2;
	var image_x_offset = argument3;
	var image_y_offset = argument4;
	var x_scale = argument5;
	var y_scale = argument6;
	var precision = argument7;
	var alpha = argument8;
	var fade = argument9;
	var pinch_end = argument10;
	var trail_colour = argument11;
	var no_show_distance = argument12;
	var trail_depth = argument13;


	var trail = instance_create_depth(x,y,trail_depth,obj_trail);

	trail.follow = id;
  

	trail.sprite = sprite;
	trail.index = index;
	trail.num_steps = num_steps;
	trail.image_x_offset = -image_x_offset;
	trail.image_y_offset = image_y_offset;
	trail.x_scale = x_scale;
	trail.y_scale = y_scale;
	trail.precision = precision;
	trail.alpha = alpha;
	trail.fade = fade;
	trail.pinch_end = pinch_end;
	trail.trail_colour = trail_colour;
	trail.no_show_distance = no_show_distance;


	trail.x_offset = 0;

	trail.path = path_add();
	path_set_closed(trail.path,false);
	path_set_kind(trail.path,1);

	path_add_point(trail.path,x,y,100)

	return trail;

    



}
