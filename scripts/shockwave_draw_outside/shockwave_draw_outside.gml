/// @function			shockwave_draw_outside();
/// @description        Draw only the OUTSIDE of the shockwave effect
function shockwave_draw_outside() {

	// This script should be used as a replacement for the normal "shockwave_draw" script in 
	// the DRAW event of the "obj_Shockwave" effect object.

	// Check for the texture surface and create as required
	if !surface_exists(wave_surf)
	{
	// No texture surface so create it
	var _num = 0;
	while (!surface_exists(wave_surf))
		{
		if wave_view != -1
		    {
			// A view has been apecified so create the surface the size of it
			var ww = camera_get_view_width(view_camera[wave_view]);
			var hh = camera_get_view_height(view_camera[wave_view]);
		    wave_surf = surface_create(ww, hh);
		    }
		else
		    {
			// No view has been specified so create the surface the size of the room
		    wave_surf = surface_create(room_width, room_height);
		    }
		// Check to make sure the surface was created and show an error if it repeatedly fails
		if _num++ > 25
			{
			show_debug_message("Shockwave: Couldn't Create Effect Surface! Destroying Instance...");
			instance_destroy();
			exit; // Exit the draw event to prevent errors
			}
		}
	// Set wave texture variables
	wave_surf_t = surface_get_texture(wave_surf);
	wave_surf_w = surface_get_width(wave_surf);
	wave_surf_h = surface_get_height(wave_surf);
	// Copy the application surface to the texture surface
	surface_set_target(wave_surf);
	draw_surface_stretched(application_surface, 0, 0, wave_surf_w, wave_surf_h);
	surface_reset_target();
	// show_debug_message("Shockwave: Effect Surface Created!");
	}
	else
	{
	// Texture surface exists, so update the shockwave effect if required
	if wave_update
	    {
	    surface_set_target(wave_surf);
	    draw_surface_stretched(application_surface, 0, 0, wave_surf_w, wave_surf_h);
	    surface_reset_target();
	    }

	// Check effect radius and continue or destroy as necessary
	wave_radius += wave_speed;
	if (wave_radius > wave_max_radius)
	    {
	    instance_destroy();
	    exit;
	    }

	// Setup local vars for drawing the primitives that the effect uses
	// Note that we pre-calculate as much as possible before running the 
	// main draw loop so that the loop has to do as little as possible.
	var _xx, _yy, _cosx, _siny, _wave_dir;
	var _wave_ang = 360 / wave_segment;								// The angle size of each "segment" of the wave effect
	var _wave_offset_inside = max(wave_radius - wave_width, 0);		// Calculate the offset from the edge of the wave inwards
	var _wave_offset_outside = wave_radius + wave_width;			// Calculate the offset from the edge of the wave outwards
	var _wave_multi = 0;											// Prepare the "counter" variable that will increment as we create vertices
	var _wave_tex_x = 1 / wave_surf_w;								// Calculate the pixel ratio for the texture (value between 0 - 1) on the x axis
	var _wave_tex_y = 1 / wave_surf_h;								// Calculate the pixel ratio for the texture (value between 0 - 1) on the y axis

	// Check for the view being active and if it is store its position
	// We'll use this later when calculating the texture position.
	if wave_view > -1
		{
		var _vx = camera_get_view_x(view_camera[wave_view]);
		var _vy = camera_get_view_y(view_camera[wave_view]);
		}
	else
		{
		var _vx = 0;
		var _vy = 0;
		}

	// Start drawing to the vertex buffer
	vertex_begin(wave_vb_outside, wave_vf);

	// Run a loop to create each vertice of the primitive that will draw the shockwave
	repeat (wave_segment + 1)
	    {
	    _wave_dir = _wave_multi * _wave_ang;			// Get the current drawing angle
		_cosx = dcos(_wave_dir);						// Precaculate x component for position (this saves using lengthdir_x everywhere in the code)
		_siny = -(dsin(_wave_dir));						// Precaculate y component for position (this saves using lengthdir_y everywhere in the code)
		_xx = x + (_cosx * wave_radius);				// Get the x position of the vertice for the radius of the wave
		_yy = y + (_siny * wave_radius);				// Get the y position of the vertice for the radius of the wave
		// Add radius vertices for both outer and inner rings
		vertex_position(wave_vb_outside, _xx, _yy);
		_xx = _xx - _vx + (_cosx *  -wave_push);		// Get the x texture position
		_yy = _yy - _vy + (_siny * -wave_push);			// Get the y texture position
		// Add texture coordinates to the vertices
		vertex_texcoord(wave_vb_outside, _wave_tex_x * _xx , _wave_tex_y * _yy);
		// Add colour data to the vertices
		vertex_colour(wave_vb_outside, wave_blend, image_alpha);
	
		// Draw the outer vertices (same as above but using the offset value to offset it outwards from the wave radius)
		_xx = x + (_cosx * _wave_offset_outside);
		_yy = y + (_siny * _wave_offset_outside);
		vertex_position(wave_vb_outside, _xx, _yy);
		vertex_texcoord(wave_vb_outside, _wave_tex_x * (_xx - _vx) , _wave_tex_y * (_yy - _vy));
		vertex_colour(wave_vb_outside, wave_blend, 0);
	
	    ++_wave_multi;
	    }

	// End the defining of the vertex buffers
	vertex_end(wave_vb_outside);

	// Check for additive blending (this can be removed if you never use additive blending)
	if wave_additive
		{
		gpu_set_blendmode(bm_add);
		}

	// Draw the primitives in the buffers
	vertex_submit(wave_vb_outside, pr_trianglestrip, wave_surf_t);

	// Reset additive if enabled (this can be removed if you never use additive blending)
	if wave_additive
		{
		gpu_set_blendmode(bm_normal);
		}
	
	// Set total alpha (the wave will fade as it gets bigger)
	image_alpha -= wave_alpha;
	}



}
