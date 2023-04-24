///@description Main

with (obj_Player)
{
	if (place_meeting(x,y,other))
	{
		var oldTime = global.globalSpeedMult;
		
		if (oldTime != other.timeMult)
		{
			global.globalSpeedMult = other.timeMult;
			show_debug_message("boing boing - global time changed from " + string(oldTime) + " to " + string(other.timeMult) + "!");
			
			hsp *= global.globalSpeedMult;
			vsp *= global.globalSpeedMult;
		}
	}
}