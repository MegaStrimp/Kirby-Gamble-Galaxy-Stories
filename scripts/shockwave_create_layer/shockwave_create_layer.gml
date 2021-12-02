/// @function						shockwave_create_layer(x, y, layer, view, width, max_radius, speed, segments, push, [update], [colour], [additive]);
function shockwave_create_layer() {

	/// @description                    Creates the "shockwave" effect object that is used to distort the screen around a point and returns its ID.

	/// @param {integer}    x           The x position to create the effect in the room.
	/// @param {integer}    y           The y position to create the effect in the room.
	/// @param {real}		layer_id	The layer to create the effect on
	/// @param {integer}    view        The view to use (-1 for no view).
	/// @param {real}       width       The width (in pixels) of the wave effect.
	/// @param {real}       max_radius  The maximum radius (in pixels) of the wave effect.
	/// @param {real}       speed       The expansion speed (pixels per step) of the wave effect.
	/// @param {integer}    segments	The number of segments to use in the wave (should be a number that divides 360 evenly, eg: 18, 12, etc... 
	///									but doesn't have to be, although other values may give visual oddities)
	/// @param {real}       push        This is the "push" value on the distortion (how much it should distort) and can be positive or negative.
	///									Using a positive value will distort OUTwards while a negative value will distort INwards.
	/// @param {bool}       [update]	[OPTIONAL - can be ommitted] This will udpate the suface every step if set to true, and only once if set to false 
	///									(setting to false is faster, but if the view moves a lot or quickly then it probably should be set to true). Default is false.
	/// @param {real}       [colour]    [OPTIONAL - can be ommitted] The colour to blend with the shockwave effect. Default is c_white.
	/// @param {bool}       [additive]  [OPTIONAL - can be ommitted] Enable or disable (true/false) additive blending. Default is false.

	// Check the instance layer actually exists
	if layer_exists(argument[2])
	{
	// Create the shockwave effect instance
	var _i = instance_create_layer(argument[0], argument[1], argument[2], obj_Shockwave);
	// Set instance variables
	with (_i)
		{
		wave_view = argument[3];
		wave_width = argument[4];
		wave_max_radius = argument[5];
		wave_speed = argument[6];
		wave_segment = argument[7];
		wave_push = argument[8];
		// Check for optional arguments
		if argument_count > 9
			{
			wave_update = argument[9];
			if argument_count > 10
				{
				wave_blend = argument[10];
				if argument_count > 11
					{
					wave_additive = argument[11];
					}
				}
			}
		wave_alpha = 1 / (wave_max_radius / wave_speed);
		}
	}
	else
	{
	// Layer error
	show_debug_message("Shockwave: Instance Layer For Effect Doesn't Exist!");
	var _i = noone;
	}

	// Return the ID of the effect instance created (or the keyword "noone" if there was an error)
	return _i;



}
