///@description Main

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_CollectibleChest_Normal_Idle;
		sprShine = spr_CollectibleChest_Normal_Shine;
		sprEffect = spr_CollectibleChest_Normal_Effect;
		sprTextureMask = spr_CollectibleChest_Normal_TextureMask;
		sprTexture = spr_CollectibleChest_Normal_Texture;
		break;
		#endregion
	}
	setupTimer = -1;
}
#endregion

if (!global.pause)
{
	switch (subState)
	{
		#region Overworld
		case 0:
		#region Shake
		if (place_meeting(x,y,obj_InhaleMask))
		{
			shake = 1;
		}
		else
		{
			shake = 0;
		}
		#endregion
	
		#region Movement
		vsp += (accel * walkDirY);
		if ((abs(vsp) >= jumpspeed)) walkDirY *= -1;
	
		yy += vsp;
		#endregion
	
		#region Collect
		with (obj_Player)
		{
			if (place_meeting(x,y,other))
			{
				other.x = x;
				other.y = y - 16;
				other.depth = depth - 2;
				other.subState = 1;
				other.stateTimer = other.stateTimerMax;
			}
		}
		#endregion
	
		#region Move Timer
		if (moveTimer > 0)
		{
			moveTimer -= 1;
		}
		else if (moveTimer == 0)
		{
			yy += 1 * moveDir;
			if (abs(yy) == yyMax) moveDir *= -1;
			moveTimer = moveTimerMax;
		}
		#endregion
	
		#region Shine Timer
		if (shineTimer > 0)
		{
			shineTimer -= 1;
		}
		else if (shineTimer == 0)
		{
			var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_SmallSparkle_White;
			particle.vsp = -.5;
			particle.destroyAfterAnimation = true;
			shineTimer = shineTimerMax;
		}
		#endregion
		break;
		#endregion
	
		#region On Player
		case 1:
		#region Effect Angle
		effectAngle += 3;
		if (effectAngle >= 360) effectAngle -= 360;
		#endregion
	
		#region State Timer
		if (stateTimer > 0)
		{
			stateTimer -= 1;
		}
		else if (stateTimer == 0)
		{
			subState = 2;
			stateTimer = -1;
		}
		#endregion
		break;
		#endregion
	}
}