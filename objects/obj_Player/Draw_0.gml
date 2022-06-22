///@description Draw

//Variables

var playerAbility = global.abilityP1;
if (player == 1) playerAbility = global.abilityP2;

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

var playerIsHelper = global.isHelperP1;
if (player == 1) playerIsHelper = global.isHelperP2;

var drawShakeX = irandom_range(-shakeX,shakeX);
var drawShakeY = irandom_range(-shakeY,shakeY);

//Black Alpha Box

if ((player == 0) and ((blackAlphaBox) or (global.tutorial)))
{
	draw_set_alpha(.25);
	draw_set_color(c_black);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	draw_set_alpha(1);
}

//Draw Self

var paletteFlash = 1;
if (invincibleFlash) paletteFlash = 2;
if (death)
{
	if (state == playerStates.death)
	{
		paletteFlash = 1;
	}
	else
	{
		paletteFlash = 2;
	}
}

if (carriedItem != carriedItems.none)
{
	var handIndex = scr_Player_Hand(playerCharacter);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndex,paletteFlash,false);
	if (handIndex != -1) draw_sprite_ext(handIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();

	if ((hurt) and (invincibleFlash))
	{
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndex,paletteFlash,false);
		if (handIndex != -1) draw_sprite_ext(handIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7);
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();
	}
}

var hatAnim = image_index;
if ((playerAbility == playerAbilities.fire) or (playerAbility == playerAbilities.mysticFire) or (playerAbility == playerAbilities.spark) or (playerAbility == playerAbilities.water)) hatAnim = hatBackgroundImageIndex;

var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
if (hatBackgroundIndex != -1) hatBackgroundImageIndexSpd = sprite_get_speed(hatBackgroundIndex) / 60;
var abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

var hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
if (waddleDooEyeFlash) draw_sprite_ext(sprWaddleDooFlashingEye,0,x - (1 * dir),y - 11,image_xscale,image_yscale,imageAngle + stoneAngle,image_blend,image_alpha);
if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();

#region Mask
/*
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
var maskSprite = asset_get_index(sprite_get_name(sprite_index) + "_Mask");
if (maskSprite != -1) draw_sprite_ext(maskSprite,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite(spr_Texture_Flux,0,x + drawShakeX,y + drawShakeY);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
*/
#endregion

var hatAnim = image_index;
var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
if ((playerAbility == playerAbilities.water) and (hatFrontIndex == spr_Kirby_HatFront_Water_Modern_Idle)) hatAnim = hatFrontImageIndex;
if (hatFrontIndex != -1) hatFrontImageIndexSpd = sprite_get_speed(hatFrontIndex) / 60;
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

if ((hurt) and (invincibleFlash))
{
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,3,false);
	if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndex,3,false);
	draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7);
	if (waddleDooEyeFlash) draw_sprite_ext(sprWaddleDooFlashingEye,0,x - (1 * dir),y - 11,image_xscale,image_yscale,imageAngle + stoneAngle,image_blend,.7);
	if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();
}

var equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
var equipmentDir = image_xscale;
if (playerAbility == playerAbilities.ufo) equipmentDir = abs(image_xscale);
if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,image_index,x + drawShakeX,y + drawShakeY,equipmentDir * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,image_alpha);

//Shake

if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}

//Mirror Charge Bar

if ((playerAbility == playerAbilities.mirror) and (mirrorShieldHp <= 0))
{
	draw_sprite(spr_Healthbar_Shield_Border,0,x - 7,y - 32);
	draw_sprite_ext(spr_Healthbar_Shield_Inner,0,x - 15,y - 34,1 - (mirrorShieldTimer / mirrorShieldTimerMax),image_yscale,image_angle,image_blend,image_alpha);
}

//Bomb Crosshair

if ((attackNumber == playerAttacks.bombNormal) and (carriedItem != carriedItems.none))
{
	var bdir = (270 + (90 * dir)) + (bombDir * dir);
	if (bdir >= 360) bdir -= 360;
	if (bdir < 0) bdir += 360;
	draw_sprite(spr_Particle_Crosshair1,0, x + lengthdir_x(18,bdir),y + lengthdir_y(18,bdir));
}

//Key Crosshair

if ((attackNumber == playerAttacks.keyNormal) and (carriedItem != carriedItems.none))
{
	var bdir = (270 + (90 * dir)) + (bombDir * dir);
	if (bdir >= 360) bdir -= 360;
	if (bdir < 0) bdir += 360;
	draw_sprite_ext(spr_Particle_Crosshair2,0,x + (2 * dir),y,image_xscale,image_yscale,bombDir * dir,image_blend,image_alpha);
}

//Helper Bar

if ((playerIsHelper) and (helperTimer != -1))
{
	draw_sprite(spr_Healthbar_Helper_Border,0,x - 7,y + 22);
	draw_sprite_ext(spr_Healthbar_Helper_Inner,0,x - 15,y + 20,1 - (helperTimer / helperTimerMax),image_yscale,image_angle,image_blend,image_alpha);
}

//Debug Text

/*
draw_set_font(fnt_DebugConsole);
draw_set_color(c_black);
draw_text(x,y - 12,string(global.hatPaletteBeamKSSUP1));
draw_text(x,y - 24,string(abilityHatPaints.beam_kssu_bitcrushed));