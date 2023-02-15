///@description Draw GUI

//States

switch (state)
{
	case 0:
	if ((fade == 1) and (alpha == 1))
	{
		if (skipCutscene)
		{
			if (instance_exists(obj_CutsceneControl)) instance_destroy(obj_CutsceneControl);
			if (instance_exists(obj_Dialogue)) instance_destroy(obj_Dialogue);
		}
		global.roomPrevious = room;
	    switch (targetRoom)
		{
			default:
			room_goto(targetRoom);
			break;
			
			case "restart":
			game_restart();
			break;
			
			case "doomsday":
			break;
			
			case -1:
			break;
		}
		delay += 1;
	    if (delay >= delayMax) fade = -1;
	}
	
	//Destroy
	
	if ((alpha == 0) and (fade == -1))
	{
	    instance_destroy();
	}
	
	//Draw Rectangle
	
	if (((pausable) and (!global.pause)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);
	
	draw_set_color(color);
	draw_set_alpha(alpha);
	draw_rectangle(0,0,480,270,0);
	switch (targetRoom)
	{
		case "doomsday":
		draw_set_font(fnt_AlienSolidBig);
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(240,135,"DOOMSDAY");
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		break;
	}
	draw_set_alpha(1);
	break;
	
	case 1:
	if ((fade == 1) and (state1Width >= (camera_get_view_width(gameView) / 2) + 10))
	{
		global.roomPrevious = room;
		switch (targetRoom)
		{
			default:
			room_goto(targetRoom);
			break;
			
			case "restart":
			game_restart();
			break;
		}
	    fade = -1;
	}
	
	//Destroy
	
	if ((alpha == 0) and (fade == -1))
	{
	    instance_destroy();
	}
	
	//Draw Rectangle
	
	if (((pausable) and (!global.pause)) or (!pausable))
	{
		if (fade == -1) alpha = clamp(alpha + (fade * alphaSpd),0,1);
		state1Height = lerp(state1Height,(camera_get_view_height(gameView) / 2) + 10,.1);
		if (state1Height >= (camera_get_view_height(gameView) / 2)) state1Width = lerp(state1Width,(camera_get_view_width(gameView) / 2) + 20,.05);
	}
	
	draw_set_color(color);
	draw_set_alpha(alpha);
	draw_rectangle((240 / 2) + state1Width,(135 / 2) + state1Height,(240 / 2) - state1Width,(135 / 2) - state1Height,0);
	draw_set_alpha(1);
	break;
}