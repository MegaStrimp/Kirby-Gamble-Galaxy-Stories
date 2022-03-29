///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprIdleBlue = spr_Projectile_SparkNormal_Normal_Idle_Blue;
sprRingBlue = spr_Projectile_SparkNormal_Normal_Ring_Blue;
sprStarBlue = spr_Projectile_SparkNormal_Normal_Star_Blue;
sprIdleGreen = spr_Projectile_SparkNormal_Normal_Idle_Green;
sprRingGreen = spr_Projectile_SparkNormal_Normal_Ring_Green;
sprStarGreen = spr_Projectile_SparkNormal_Normal_Star_Green;

sprIdle = sprIdleBlue;
sprRing = sprRingBlue;
sprStar = sprStarBlue;

//Other Variables

damageType = damageTypes.spark;
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = false;
hurtsEnemy = true;
hurtsBoss = true;
hurtsProjectile = false;
destroyOutsideView = false;
canBeReflected = false;
owner = id;
enemy = false;
starAngle = random_range(0,359);
snd = audio_play_sound(snd_Spark6,0,false);

//Timers

spriteChangeTimerMax = 6;
spriteChangeTimer = spriteChangeTimerMax;
particleTimerMax = 12;
particleTimer = particleTimerMax + irandom_range(-8,-4);