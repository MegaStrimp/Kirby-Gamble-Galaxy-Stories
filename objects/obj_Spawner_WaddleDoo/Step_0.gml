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
	var spawnedEnemy = instance_create_depth(x,y,depth,obj_WaddleDoo);
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
	spawnedEnemy.character = character;
	switch (character)
	{
		//Normal
		
		case 0:
		spawnedEnemy.sprIdle = spr_WaddleDoo_Normal_Idle;
		spawnedEnemy.sprWalk = spr_WaddleDoo_Normal_Walk;
		spawnedEnemy.sprDuck = spr_WaddleDoo_Normal_Duck;
		spawnedEnemy.sprJump = spr_WaddleDoo_Normal_Jump;
		spawnedEnemy.sprFall = spr_WaddleDoo_Normal_Fall;
		spawnedEnemy.sprSwing = spr_WaddleDoo_Normal_Swing;
		spawnedEnemy.sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
		spawnedEnemy.sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
		spawnedEnemy.sprCharge = spr_WaddleDoo_Normal_Charge;
		spawnedEnemy.sprAttack = spr_WaddleDoo_Normal_Attack;
		spawnedEnemy.sprHurt = spr_WaddleDoo_Normal_Hurt;
		break;
		
		//Bandit
		
		case 1:
		spawnedEnemy.sprIdle = spr_WaddleDoo_Bandit_Idle;
		spawnedEnemy.sprWalk = spr_WaddleDoo_Bandit_Walk;
		spawnedEnemy.sprDuck = spr_WaddleDoo_Bandit_Duck;
		spawnedEnemy.sprJump = spr_WaddleDoo_Bandit_Jump;
		spawnedEnemy.sprFall = spr_WaddleDoo_Bandit_Fall;
		spawnedEnemy.sprSwing = spr_WaddleDoo_Bandit_Swing;
		spawnedEnemy.sprClimbUp = spr_WaddleDoo_Bandit_ClimbUp;
		spawnedEnemy.sprClimbDown = spr_WaddleDoo_Bandit_ClimbDown;
		spawnedEnemy.sprCharge = spr_WaddleDoo_Bandit_Charge;
		spawnedEnemy.sprAttack = spr_WaddleDoo_Bandit_Attack;
		spawnedEnemy.sprHurt = spr_WaddleDoo_Bandit_Hurt;
		break;
	}
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
	spawnedEnemy.walkDuckTimer = walkDuckTimer;
	spawnedEnemy.walkDuckTimerMax = walkDuckTimerMax;
	spawnedEnemy.jumpTimerMax = jumpTimerMax;
	spawnedEnemy.jumpTimer = jumpTimer;
	spawnedEnemy.attackTimerMax = attackTimerMax;
	spawnedEnemy.attackTimer = attackTimer;
	spawnTimer = -1;
}