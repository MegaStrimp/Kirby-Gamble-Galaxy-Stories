///@description Main

if (!global.pause)
{
	//Activate
	
	if ((!active) and ((distance_to_object(obj_Player)) <= 200))
	{
		active = true;
		with (obj_Camera)
		{
			objectFollowing = other.id;
		}
		instance_create_depth(x + spawnX,y + spawnY,depth,spawnBoss);
	}
	
	//Destroy
	
	hasEnemy = true;
	with (obj_Enemy) if (isMiniBoss) other.hasEnemy = true;
	
	if ((!hasEnemy) and (!instance_exists(obj_Miniboss_Death))) instance_destroy();
}