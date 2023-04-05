///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Yellow
		
		case 0:
		sprite_index = spr_PointStar_Yellow_Idle;
		pointStarPoints = 1;
		sfx = snd_PointStar_Low;
		break;
		
		//Green
		
		case 1:
		sprite_index = spr_PointStar_Green_Idle;
		pointStarPoints = 5;
		sfx = snd_PointStar_Medium;
		break;
		
		//Red
		
		case 2:
		sprite_index = spr_PointStar_Red_Idle;
		pointStarPoints = 10;
		sfx = snd_PointStar_Medium;
		break;
		
		//Blue
		
		case 3:
		sprite_index = spr_PointStar_Blue_Idle;
		pointStarPoints = 25;
		sfx = snd_PointStar_High;
		auraTimer = auraTimerMax;
		break;
	}
	if (followTarget) flashTimer = flashTimerMax;
	
	if ((ds_exists(global.collectibleTracker,ds_type_list)) and (ds_list_find_index(global.collectibleTracker,id))) instance_destroy();
	setupTimer = -1;
}
#endregion