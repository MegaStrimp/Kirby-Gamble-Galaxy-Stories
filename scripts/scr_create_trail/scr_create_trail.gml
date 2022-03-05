/// @description scr_create_trail(sprite, index, num_steps, alpha, fade, pinch_end)
/// @param sprite
/// @param  index
/// @param  num_steps
/// @param  alpha
/// @param  fade
/// @param  pinch_end
/// @param  trail_depth
function scr_create_trail(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	//sprite:           sprite to draw  (The sprite must be selected as 'Used for 3D' in the Sprite editor.)
	//index:            sprite image index to draw
	//num_steps:        number of steps that the trail will follow the object
	//alpha             transparancy of trail
	//fade:             0 = no fade,  1 = fade trail at end
	//pinch_end:        0 = no pinch, 1 = pinch end of trail to a point

	//returns index of trail instance

	var sprite = argument0;
	var index = argument1;
	var num_steps = argument2;
	var alpha = argument3;
	var fade = argument4;
	var pinch_end = argument5;
	var trail_depth = argument6;

	var trail = instance_create_depth(x,y,trail_depth,obj_trail);

	trail.follow = id;
	trail.sprite = sprite;
	trail.index = index;
	trail.image_x_offset = 0;
	trail.image_y_offset = 0.5;
	trail.x_scale = 1;
	trail.y_scale = 1;
	trail.precision = 4;
	trail.alpha = alpha;
	trail.fade = fade;
	trail.pinch_end = pinch_end;

	trail.num_steps = num_steps;
	trail.trail_colour = c_white;
	trail.no_show_distance = 0;
	trail.x_offset = 0;

	trail.path = path_add();
	path_set_closed(trail.path,false);
	path_set_kind(trail.path,1);


	path_add_point(trail.path,x,y,100);

	return trail;
    



}
