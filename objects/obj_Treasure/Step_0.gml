///@description Main

if (!global.pause)
{
	//Gravity
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Destroy
	
	if (place_meeting(x,y,obj_Player))
	{
		if (audio_is_playing(snd_TreasureFound)) audio_stop_sound(snd_TreasureFound);
		audio_play_sound(snd_TreasureFound,0,false);
		scr_Notif(treasureCategory);
		#region Notification
		if ((!global.treasureGot) or (global.extraTutorials))
		{
			global.treasureGot = true;
			global.tutorialNotif = true;
			global.cutscene = true;
			global.pause = true;
			if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
			
			var array = 0;
			var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
			dialogue.owner = id;
			dialogue.text[array] = "You found a treasure!";
			dialogue.sprTextbox[array] = spr_Hud_Dialogue_Textbox_Tutorial;
			dialogue.sprBackground[array] = -1;
			dialogue.sprPortrait[array] = -1;
			dialogue.textSound[array] = snd_ButtonYes;
			array += 1;
			dialogue.text[array] = @"Check the [Collections Menu] to track your collectibles and
treasures!";
			dialogue.sprTextbox[array] = spr_Hud_Dialogue_Textbox_Tutorial;
			dialogue.sprBackground[array] = -1;
			dialogue.sprPortrait[array] = -1;
			dialogue.textSound[array] = snd_ButtonYes;
			dialogue.textSpeed = 30;
			dialogue.endTutorialNotif = true;
			dialogue.pausable = false;
		}
		#endregion
		if (!global.gambleMaykr) global.points += points;
		instance_destroy();
	}
	
	//Slopes
	
	if (hasXCollision)
	{
		if ((!place_meeting(x + hsp,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
		{
		    yplus = 0;
		    while ((!place_meeting(x + hsp,y + yplus,collisionX) and yplus <= abs(hsp)))
			{
				yplus += 1;
			}
		    y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (hasXCollision)
	{
		if place_meeting(x + hsp,y,collisionX)
		{
		    yplus = 0;
		    while ((place_meeting(x + hsp,y - yplus,collisionX)) and (yplus <= abs(1 * hsp)))
			{
				yplus += 1;
			}
		    if place_meeting(x + hsp,y - yplus,collisionX)
		    {
		        while (!place_meeting(x + (sign(hsp) / 10),y,collisionX))
				{
					x += (sign(hsp) / 10);
				}
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
	}
	
	x += hsp;
	
	//Vertical Collision
	
	if (hasYCollision)
	{
		if (place_meeting(x,y + vsp,collisionY))
		{
		    while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
		    { 
		        y += (sign(vsp) / 10);
		    }
		    vsp = 0;
		}
	}
	
	y += vsp;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}