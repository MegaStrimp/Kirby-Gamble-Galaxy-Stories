///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Juckle_Normal_Idle;
sprReady = spr_Juckle_Normal_Ready;
sprAttack = spr_Juckle_Normal_Attack;
sprReload = spr_Juckle_Normal_Reload;
sprHurt = spr_Juckle_Normal_Hurt;

//Other Variables

paletteIndex = spr_Juckle_Normal_Palette_SpinningCutter;
hp = 12;
dmg = 1;
ability = playerAbilities.cutter;
points = 400;
attack = false;
attackDir = 0;

//Timers

attackTimerMax = 90;
attackTimer = attackTimerMax;