///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (!instance_exists(owner)) instance_destroy();
	
	if ((enemy) or (!owner.duck) or (owner.mirrorShieldHp <= 0))
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	//Sprite Timer
	
	if (spriteTimer > 0)
	{
		spriteTimer -= 1;
	}
	else if (spriteTimer == 0)
	{
		if (sprite_index == sprRing)
		{
			sprite_index = sprShield;
		}
		else
		{
			sprite_index = sprRing;
		}
		spriteTimer = spriteTimerMax;
	}
}
else
{
	image_speed = 0;
}