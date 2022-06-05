///@description Main

//Spawn Timer

var x1 = camera_get_view_x(gameView) - spawnerRange - (horLoop * horOffset);
var y1 = camera_get_view_y(gameView) - spawnerRange - (verLoop * verOffset);
var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;

var x1Max = camera_get_view_x(gameView) - (spawnerRange * 2) - (horLoop * horOffset);
var y1Max = camera_get_view_y(gameView) - (spawnerRange * 2) - (verLoop * verOffset);
var x2Max = camera_get_view_x(gameView) + camera_get_view_width(gameView) + (spawnerRange * 2);
var y2Max = camera_get_view_y(gameView) + camera_get_view_height(gameView) + (spawnerRange * 2);

/*FIX SCARFY EXPLOSION
*/
if ((spawn) and (!point_in_rectangle(x,y,x1,y1,x2,y2)) and (point_in_rectangle(x,y,x1Max,y1Max,x2Max,y2Max)))
{
	spawnTimer = 0;
    spawn = false;
}

if (spawnTimer > 0)
{
	spawnTimer -= 1;
}
else if (spawnTimer == 0)
{
	for (var i = 0; i < horLoop; i++)
	{
		for (var h = 0; h < verLoop; h++)
		{
			var spawnedEnemy = instance_create_depth(x + (horOffset * i),y + (verOffset * h),depth,obj_Scarfy);
			spawnedEnemy.hasSpawner = true;
			spawnedEnemy.spawner = id;
			spawnedEnemy.spawnerRange = (spawnerRange * 2);
			spawnedEnemy.paletteIndex = paletteIndex;
			spawnedEnemy.accel = accel;
			spawnedEnemy.movespeed = movespeed;
			spawnedEnemy.jumpspeed = jumpspeed;
			spawnedEnemy.gravNormal = gravNormal;
			spawnedEnemy.gravLimitNormal = gravLimitNormal;
			spawnedEnemy.character = character;
			switch (character)
			{
				//Normal
				
				case 0:
				spawnedEnemy.sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
				spawnedEnemy.sprCalmFly = spr_Scarfy_Normal_CalmFly;
				spawnedEnemy.sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
				spawnedEnemy.sprMadFly = spr_Scarfy_Normal_MadFly;
				spawnedEnemy.sprMadHurt = spr_Scarfy_Normal_MadHurt;
				spawnedEnemy.sprHurt = spawnedEnemy.sprCalmHurt;
				break;
			}
			spawnedEnemy.sprite_index = spawnedEnemy.sprCalmIdle;
			spawnedEnemy.state = state;
			spawnedEnemy.hp = hp;
			spawnedEnemy.dmg = dmg;
			spawnedEnemy.ability = ability;
			spawnedEnemy.points = points;
			spawnedEnemy.hurtable = hurtable;
			spawnedEnemy.hasGravity = hasGravity;
			spawnedEnemy.heavy = heavy;
			spawnedEnemy.inhaleXOffset = inhaleXOffset;
			spawnedEnemy.inhaleYOffset = inhaleYOffset;
			spawnedEnemy.parasol = parasol;
			spawnedEnemy.parasolObject = -1;
			spawnedEnemy.parasolX = parasolX;
			spawnedEnemy.parasolY = parasolY;
			spawnedEnemy.scale = scale;
			spawnedEnemy.dirX = dirX;
			spawnedEnemy.dirY = dirY;
			spawnedEnemy.walkDirX = walkDirX;
			spawnedEnemy.walkDirY = walkDirY;
			spawnedEnemy.imageAngle = imageAngle;
			spawnedEnemy.hasXCollision = hasXCollision;
			spawnedEnemy.hasYCollision = hasYCollision;
			spawnedEnemy.clampPositionX = clampPositionX;
			spawnedEnemy.clampPositionY = clampPositionY;
			spawnedEnemy.offScreenTurning = offScreenTurning;
			spawnedEnemy.collisionX = collisionX;
			spawnedEnemy.collisionY = collisionY;
			spawnedEnemy.hasXKnockback = hasXKnockback;
			spawnedEnemy.hasYKnockback = hasYKnockback;
			spawnedEnemy.deathOnBottom = deathOnBottom;
			spawnedEnemy.objectOnDeath = objectOnDeath;
			spawnedEnemy.objectOnDeathObj = objectOnDeathObj;
			spawnedEnemy.groundFailsafe = groundFailsafe;
			spawnedEnemy.particleTimer = particleTimer;
			spawnedEnemy.particleTimerMax = particleTimerMax;
			spawnedEnemy.attackTimerMax = attackTimerMax;
			spawnedEnemy.attackTimer = attackTimer;
			spawnedEnemy.canTurnXTimerMax = canTurnXTimerMax;
			spawnedEnemy.canTurnYTimerMax = canTurnYTimerMax;
		}
	}
	spawnTimer = -1;
}