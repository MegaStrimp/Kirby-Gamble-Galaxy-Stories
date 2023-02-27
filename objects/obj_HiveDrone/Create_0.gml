///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_HiveDrone_Normal_Idle;
sprAttack = spr_HiveDrone_Normal_Attack;
sprDrop = spr_HiveDrone_Normal_Drop;
sprHurt = spr_HiveDrone_Normal_Hurt;
sprWings = spr_HiveDrone_Normal_Wings;

//Other Variables

paletteIndex = spr_HiveDrone_Normal_Palette_GoldHoneycomb;
hp = 18;
dmg = baseEnemyContactDamage;
points = 750;
wingIndex = 0;
wingSpd = 0;

//Timers

explodeTimer = -1;
explodeTimerMax = 90;