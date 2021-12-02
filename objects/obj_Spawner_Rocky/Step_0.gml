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
	var spawnedEnemy = instance_create_depth(x,y,depth,obj_Rocky);
	spawnedEnemy.hasSpawner = true;
	spawnedEnemy.spawner = id;
	spawnedEnemy.spawnerRange = (spawnerRange * 2);
	spawnedEnemy.paletteIndex = paletteIndex;
	spawnedEnemy.decel = decel;
	spawnedEnemy.movespeed = movespeed;
	spawnedEnemy.jumpspeed = jumpspeed;
	spawnedEnemy.gravNormal = gravNormal;
	spawnedEnemy.gravLimitNormal = gravLimitNormal;
	spawnedEnemy.character = character;
	switch (character)
	{
		//Normal
		
		case 0:
		spawnedEnemy.sprIdle = spr_Rocky_Normal_Idle;
		spawnedEnemy.sprWalk = spr_Rocky_Normal_Walk;
		spawnedEnemy.sprJump = spr_Rocky_Normal_Jump;
		spawnedEnemy.sprHurtGround = spr_Rocky_Normal_HurtGround;
		spawnedEnemy.sprHurtAir = spr_Rocky_Normal_HurtAir;
		spawnedEnemy.sprHurt = spawnedEnemy.sprHurtGround;
		break;
		
		//KSSU
		
		case 1:
		spawnedEnemy.sprIdle = spr_Rocky_KSSU_Idle;
		spawnedEnemy.sprWalk = spr_Rocky_KSSU_Walk;
		spawnedEnemy.sprJump = spr_Rocky_KSSU_Jump;
		spawnedEnemy.sprHurtGround = spr_Rocky_KSSU_HurtGround;
		spawnedEnemy.sprHurtAir = spr_Rocky_KSSU_HurtAir;
		spawnedEnemy.sprHurt = spawnedEnemy.sprHurtGround;
		break;
	}
	spawnedEnemy.sprite_index = spawnedEnemy.sprIdle;
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
	spawnedEnemy.parasolObject = spawnedEnemy;
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
	spawnedEnemy.attackTimerMax = attackTimerMax;
	spawnedEnemy.attackTimer = attackTimer;
	spawnTimer = -1;
}