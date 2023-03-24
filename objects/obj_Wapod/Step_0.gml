///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprPot;
	
	//Spawn Timer
	
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		var ghost = instance_create_depth(x,y - sprite_get_height(sprPot),depth,obj_WapodGhost);
		ghost.sprSpawn = sprGhostSpawn;
		ghost.sprIdle = sprGhostIdle;
		ghost.sprHurt = sprGhostHurt;
		ghost.sprite_index = ghost.sprSpawn;
		spawnTimer = spawnTimerMax;
	}
}
else
{
	image_speed = 0;
}