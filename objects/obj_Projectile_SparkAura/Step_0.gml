///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Destroy
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	else
	{
		if (!owner.sparkMaxCharge) instance_destroy();
	}
	
	//Touch Enemy
	
	if (place_meeting(x,y,obj_Enemy))
	{
		var collidedEnemy = instance_place(x,y,obj_Enemy);
		if ((collidedEnemy.hurtable) and (collidedEnemy.hurt)) owner.sparkCharge -= 2;
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Animation
	
	image_speed = 1;
	image_alpha = .75;
}
else
{
	image_speed = 0;
}