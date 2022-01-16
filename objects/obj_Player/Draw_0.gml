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

if ((blackAlphaBox) or (global.tutorialNotif))
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

var hatAnim = image_index;
if ((playerAbility == playerAbilities.fire) or (playerAbility == playerAbilities.mysticFire) or (playerAbility == playerAbilities.spark)) hatAnim = hatBackgroundImageIndex;

var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
var abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

var hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (waddleDooEyeFlash) draw_sprite_ext(sprWaddleDooFlashingEye,0,x - (1 * dir),y - 11,image_xscale,image_yscale,imageAngle,image_blend,image_alpha);
if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_reset();

var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

if ((hurt) and (invincibleFlash))
{
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,3,false);
	if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,.7);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_set(paletteIndex,3,false);
	draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,.7);
	if (waddleDooEyeFlash) draw_sprite_ext(sprWaddleDooFlashingEye,0,x - (1 * dir),y - 11,image_xscale,image_yscale,imageAngle,image_blend,.7);
	if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,.7);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_reset();
}

var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

var equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
var equipmentDir = image_xscale;
if (playerAbility == playerAbilities.ufo) equipmentDir = abs(image_xscale);
if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,image_index,x + drawShakeX,y + drawShakeY,equipmentDir * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);

if (carriedItem != "none")
{
	var handIndex = scr_Player_Hand(playerCharacter);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_set(paletteIndex,paletteFlash,false);
	if (handIndex != -1) draw_sprite_ext(handIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_reset();

	if ((hurt) and (invincibleFlash))
	{
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_set(paletteIndex,paletteFlash,false);
		if (handIndex != -1) draw_sprite_ext(handIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,.7);
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_reset();
	}
}

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

if ((attackNumber == "bombNormal") and (carriedItem != "none"))
{
	var bdir = (270 + (90 * dir)) + (bombDir * dir);
	if (bdir >= 360) bdir -= 360;
	if (bdir < 0) bdir += 360;
	draw_sprite(spr_Particle_Crosshair1,0, x + lengthdir_x(18,bdir),y + lengthdir_y(18,bdir));
}

//Helper Bar

if ((playerIsHelper) and (helperTimer != -1))
{
	draw_sprite(spr_Healthbar_Helper_Border,0,x - 7,y + 22);
	draw_sprite_ext(spr_Healthbar_Helper_Inner,0,x - 15,y + 20,1 - (helperTimer / helperTimerMax),image_yscale,image_angle,image_blend,image_alpha);
}

//Debug Text

draw_set_font(fnt_DebugConsole);
draw_set_color(c_black);
/*
draw_text(x,y - 12,string(runCancelTimer));