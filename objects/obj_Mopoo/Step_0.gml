///@description Main

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Movement
	
	path_speed = spd * walkDirX;

	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		sprite_index = sprBody;
	}
	
	faceIndex += sprite_get_speed(sprFace) / 60;
	if (faceIndex >= sprite_get_number(sprFace)) faceIndex -= sprite_get_number(sprFace);
}
else
{
	path_speed = 0;
	image_speed = 0;
}