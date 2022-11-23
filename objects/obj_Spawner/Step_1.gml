///@description Begin Step

isDebug = false;

with (obj_DebugMode)
{
	if (visible) other.isDebug = true;
}

visible = isDebug;
image_alpha = .5;
image_blend = c_yellow;

//Debug Delete

if (isDebug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}