///@description Main

//Spawn Timer

var x1 = camera_get_view_x(gameView) - spawnerRange;
var y1 = camera_get_view_y(gameView) - spawnerRange;
var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;

var x1Max = camera_get_view_x(gameView) - (spawnerRange * 2);
var y1Max = camera_get_view_y(gameView) - (spawnerRange * 2);
var x2Max = camera_get_view_x(gameView) + camera_get_view_width(gameView) + (spawnerRange * 2);
var y2Max = camera_get_view_y(gameView) + camera_get_view_height(gameView) + (spawnerRange * 2);

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
	var spawnedEnemy = instance_create_depth(x,y,depth,obj_Cappy);
	spawnedEnemy.hasSpawner = true;
	spawnedEnemy.spawner = id;
	spawnedEnemy.spawnerRange = (spawnerRange * 2);
	spawnedEnemy.paletteIndex = paletteIndex;
	spawnedEnemy.accel = accel;
	spawnedEnemy.decel = decel;
	spawnedEnemy.movespeed = movespeed;
	spawnedEnemy.jumpspeed = jumpspeed;
	spawnedEnemy.grav = grav;
	spawnedEnemy.gravNormal = gravNormal;
	spawnedEnemy.gravParasol = gravParasol;
	spawnedEnemy.gravLimit = gravLimit;
	spawnedEnemy.gravLimitNormal = gravLimitNormal;
	spawnedEnemy.gravLimitParasol = gravLimitParasol;
	spawnedEnemy.shroomLaunchSpd = shroomLaunchSpd;
	spawnedEnemy.character = character;
	switch (character)
	{
		//Normal
		
		case 0:
		spawnedEnemy.sprIdleL = spr_Cappy_Normal_IdleL;
		spawnedEnemy.sprIdleR = spr_Cappy_Normal_IdleR;
		spawnedEnemy.sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
		spawnedEnemy.sprHurtCapless = spr_Cappy_Normal_Hurt;
		spawnedEnemy.sprShroom = spr_Cappy_Normal_Shroom;
		break;
		
		//Robo
		
		case 1:
		spawnedEnemy.sprIdleL = spr_Cappy_Robo_IdleL;
		spawnedEnemy.sprIdleR = spr_Cappy_Robo_IdleR;
		spawnedEnemy.sprShroomIdle = spr_Cappy_Robo_ShroomIdle;
		spawnedEnemy.sprHurtCapless = spr_Cappy_Robo_Hurt;
		spawnedEnemy.sprShroom = spr_Cappy_Robo_Shroom;
		break;
	}
	spawnedEnemy.sprite_index = spawnedEnemy.sprIdleL;
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
	spawnedEnemy.attackStopTimer = attackStopTimer;
	spawnedEnemy.attackStopTimerMax = attackStopTimerMax;
	spawnedEnemy.attackTimer = attackTimer;
	spawnedEnemy.attackTimerMax = attackTimerMax;
	spawnTimer = -1;
}