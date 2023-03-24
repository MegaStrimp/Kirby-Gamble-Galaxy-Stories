///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

if (!childPause)
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
	if (inhalePower >= inhalePowerMax) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Invincible Timer
	
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleTimer = -1;
	}
	
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
	
	invincibleFlash = (destroyTimer % 3);
	
	switch (ownerIndex)
	{
		case obj_MiniBoss_PoppyBrosSr:
		mask_index = spr_PoppyBrosSr_Normal_Death;
		if (grounded)
		{
			sprite_index = spr_PoppyBrosSr_Normal_Death;
		}
		else
		{
			sprite_index = spr_PoppyBrosSr_Normal_Hurt;
		}
		break;
		
		case obj_MiniBoss_Wizzkid:
		mask_index = spr_Wizzkid_Normal_DeathGround;
		if (grounded)
		{
			sprite_index = spr_Wizzkid_Normal_DeathGround;
		}
		else
		{
			sprite_index = spr_Wizzkid_Normal_DeathAir;
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