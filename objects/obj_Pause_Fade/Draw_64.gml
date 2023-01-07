///@description Draw GUI

if (alpha == 1)
{
	if (removePause)
	{
		if (instance_exists(obj_Pause_Control))
		{
			obj_Pause_Control.gamePaused = false;
		    obj_Pause_Control.deactivated = true;
		}
		//if (instance_exists(obj_Setup)) obj_Setup.renderable = true;
	    fade = -1;
	}
	else
	{
		if (instance_exists(obj_Pause_Control))
	    {
	        obj_Pause_Control.visible = true;
	        obj_Pause_Control.gamePaused = true;
	    }
		//if (instance_exists(obj_Setup)) obj_Setup.renderable = false;
	    fade = -1;
	}
}

//Destroy

if ((alpha == 0) and (fade == -1))
{
    instance_destroy();
}

//Draw Rectangle

alpha = clamp(alpha + (fade * alphaSpd),0,1);

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0,0,camera_get_view_width(gameView),camera_get_view_height(gameView),0);
draw_set_alpha(1);