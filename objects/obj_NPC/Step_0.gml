///@description Main

if (!global.pause) and (!global.cutscene)
{
	#region Activate
	closeToPlayer = false;
	if ((!active) and (canBeActivated))
	{
		with (obj_Player)
		{
			if (distance_to_object(other) <= 24)
			{
				other.closeToPlayer = true;
				if ((keyUpPressed) and (!attack) and (!hurt))
				{
					var npcDirX = 1;
					if (other.x > x) npcDirX = -1;
					if (other.canTurn) other.dirX = npcDirX;
					dir = -npcDirX;
					global.currentNPC = other.id;
					other.active = true;
				}
			}
		}
	}
	#endregion
	
	#region Inhale
	if (place_meeting(x,y,obj_InhaleMask))
	{
		beingInhaled = true;
		shakeX = 2;
	}
	else
	{
		beingInhaled = false;
		shakeX = 0;
	}
	#endregion
	
	#region Notif Animation
	notifIndex += sprite_get_speed(sprNotif) / 60;
	if (notifIndex >= sprite_get_number(sprNotif)) notifIndex -= sprite_get_number(sprNotif);
	#endregion
}

#region Attributes
image_xscale = scale * dirX;
image_yscale = scale * dirY;
#endregion