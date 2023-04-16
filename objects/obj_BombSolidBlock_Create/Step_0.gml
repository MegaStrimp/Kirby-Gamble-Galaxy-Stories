///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BombSolidBlock_Normal_Idle;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		with (obj_ParentWall)
		{
			if ((!isTop) and (canExplode))
			{
				if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
			}
		}
		
		with (obj_BombSolidBlock_Invis)
		{
			if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
		}
		
		with (obj_BombSolidBlock_Create)
		{
			if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
		}
		
		scr_HitEffects_Wall(id,-1,wallHitEffects.starBlock_Free);
		
		var item = instance_create_layer(x,y,"Collision",obj_ParentWall);
		item.visible = true;
		item.sprite_index = spr_BombSolidBlock_Normal_Idle;
		item.topWallSprite = spr_BombSolidBlock_Normal_Top;
		instance_destroy();
		explodeTimer = -1;
	}
	
	//Animation
	
	sprite_index = sprIdle;
	image_alpha = .5;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}