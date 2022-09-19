///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = 0.08;
movespeed = 1.65;
jumpspeed = 1.25;
gravNormal = 0.12;
gravLimitNormal = 2.85;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprWalk = spr_CapsuleJ2_Normal_Walk;
sprDashStart = spr_CapsuleJ2_Normal_DashStart;
sprHover1 = spr_CapsuleJ2_Normal_Hover1;
sprHover2 = spr_CapsuleJ2_Normal_Hover2;
sprJetDash = spr_CapsuleJ2_Normal_JetDash;
sprHurt = spr_CapsuleJ2_Normal_Hurt;

//Other Variables

paletteIndex = spr_CapsuleJ2_Normal_Palette_SpeedDemon;
hp = 16;
dmg = 1;
points = 200;
active = false;
tracking_obj = obj_Player;
coll_obj = obj_Wall;
verticalRange = 30;
jetFlameTime = 0;
trackingRange = 120;
hasLanded = false;
canRocketDash = false;
hoverDir = 1;
trackX = true;
trackY = true;
attackNumber = enemyAttacks.capsuleJ2_hovering;

//Timers

actionTimer = 80;