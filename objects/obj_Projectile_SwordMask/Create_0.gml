///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprNormal = spr_Projectile_SwordMask1;
sprDash = spr_Projectile_SwordMask2;
sprAir = spr_Projectile_SwordMaskAir;
sprSpin = spr_Projectile_SwordMaskSpin;
sprCombo = spr_Projectile_SwordMask1;

//Other Variables

character = 0;
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyOutsideView = false;
canBeReflected = false;
owner = id;
enemy = false;
isDirectHit = true;

groundedDestroy=false;

sprite=playerAttacks.swordNormal;


deleteTimer=0;