/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
accel = 0.015;
movespeed = 0.5
actionState = 0;

mask_index = spr_16Square_Mask;

sprWalk = spr_Simirror_Normal_Walk;
sprAttack = spr_Simirror_Normal_Attack;
sprHurt = spr_Simirror_Normal_Hurt;

sndMirror = snd_EnemyIce;

paletteIndex = spr_Simirror_Normal_Palette_SimilarGreen;
ability = playerAbilities.mirror;
hp = 30;
dmg = 1;
first_hit = true;
appear = true;
reappear_x = 0;
reappear_y = 0;

timer = 180;
timerState = 0;
mirror_id = 0; //foresight