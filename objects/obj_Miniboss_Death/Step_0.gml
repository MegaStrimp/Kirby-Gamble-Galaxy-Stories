///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (destroyTimer <= (destroyTimerMax / 3)) shakeX = 1;
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		inhalePower += 1;
		if (inhalePower > inhalePowerMax) inhalePower = inhalePowerMax;
		shakeX = 2;
	}
	else
	{
		inhalePower = 0;
	}
	if (inhalePower >= inhalePowerMax) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		death = true;
		destroyTimer = -1;
	}
	
	//Animation
	
	invincibleFlash = 1 + (destroyTimer % 3);
	
	switch (ownerIndex)
	{
		case "obj_PoppyBrosSr":
		mask_index = spr_PoppyBrosSr_Normal_Death;
		if (place_meeting(x,y + 1,collisionY))
		{
			sprite_index = spr_PoppyBrosSr_Normal_Death;
		}
		else
		{
			sprite_index = spr_PoppyBrosSr_Normal_Hurt;
		}
		break;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}