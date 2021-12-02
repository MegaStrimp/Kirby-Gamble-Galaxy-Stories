///@description Begin Step

if (!windowSet)
{
	//Set Window Size
	
	window_set_size(viewWidth * scale,viewHeight * scale);
	
	//Resize Surface
	
	surface_resize(application_surface,viewWidth * scale,viewHeight * scale);
	//surface_resize(application_surface,viewWidth,viewHeight);
	
	//Window Center
	
	if (!window_get_fullscreen())
	{
	    window_center();
	}
	
	windowSet = true;
}