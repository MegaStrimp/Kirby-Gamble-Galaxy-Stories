///@description Draw

//Variables

switch (player)
{
	case 0:
	var playerAbility = global.abilityP1;
	var playerCharacter = global.characterP1;
	var playerIsHelper = global.isHelperP1;
	break;
	
	case 1:
	var playerAbility = global.abilityP2;
	var playerCharacter = global.characterP2;
	var playerIsHelper = global.isHelperP2;
	break;
	
	case 2:
	var playerAbility = global.abilityP3;
	var playerCharacter = global.characterP3;
	var playerIsHelper = global.isHelperP3;
	break;
	
	case 3:
	var playerAbility = global.abilityP4;
	var playerCharacter = global.characterP4;
	var playerIsHelper = global.isHelperP4;
	break;
}

var drawShakeX = irandom_range(-shakeX,shakeX);
var drawShakeY = irandom_range(-shakeY,shakeY);

var paletteIndexFinal = paletteIndex;

if ((playerCharacter == playerCharacters.kirby) and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped))
{
	switch (playerAbility)
	{
		case playerAbilities.beam:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Beam;
		break;
		
		case playerAbilities.stone:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Stone;
		break;
		
		case playerAbilities.mirror:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Mirror;
		break;
		
		case playerAbilities.ninja:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Ninja;
		break;
		
		case playerAbilities.fire:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Fire;
		break;
		
		case playerAbilities.ice:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Ice;
		break;
		
		case playerAbilities.spark:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Plasma;
		break;
		
		case playerAbilities.suplex:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Stone;
		break;
		
		case playerAbilities.mysticCutter:
		case playerAbilities.mysticBeam:
		case playerAbilities.mysticBeam2:
		case playerAbilities.mysticFire:
		case playerAbilities.mysticIce:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Mystic;
		break;
	}
}

//Invincibility Candy

if (hasInvinCandy)
{
	switch (playerCharacter)
	{
		case playerCharacters.kirby:
		paletteIndexFinal = spr_Kirby_Normal_Palette_Misc_CandyRainbow;
		break;
	}
}

//Black Alpha Box

if ((blackAlphaBox) or (global.tutorial))
{
	draw_set_alpha(.25);
	draw_set_color(c_black);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	draw_set_alpha(1);
}

//Mic Alpha Box

if (micFlash)
{
	draw_set_alpha(.5);
	draw_set_color(c_orange);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

//Draw Self

var paletteFlash = 1;
if (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))
{
	if (invincibleFlash)
	{
		paletteFlash = 2;
	
		if (
		((cAbility != playerAbilities.none) and (state = playerStates.carry) and (!spit))
		or ((playerAbility == playerAbilities.crash) and (!attack))
		or ((playerAbility == playerAbilities.mic) and (!attack))
		) paletteFlash = 4;
	}
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
}
var paletteFlashPlayer = paletteFlash;
if (hasInvinCandy) paletteFlashPlayer = 1 + floor((current_time / (1 + (invinCandyEnding * 2))) % 18);

if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
{
	for (var i = afterimageCount; i >= 0; i--)
	{
		var alphaPointer = 1;
		var xPointer = x;
		var yPointer = y;
		
		switch (i)
		{
			case 1:
			alphaPointer = .5;
			xPointer = xprevious1;
			yPointer = yprevious1;
			break;
			
			case 2:
			alphaPointer = .35;
			xPointer = xprevious2;
			yPointer = yprevious2;
			break;
			
			case 3:
			alphaPointer = .2;
			xPointer = xprevious3;
			yPointer = yprevious3;
			break;
		}
		
		var handIndex = scr_Player_Hand(playerCharacter);
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndexFinal,paletteFlashPlayer,false);
		if (handIndex != -1) draw_sprite_ext(handIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();
		
		if ((hurt) and (invincibleFlash))
		{
			if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndexFinal,paletteFlashPlayer,false);
			if (handIndex != -1) draw_sprite_ext(handIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7 * alphaPointer);
			if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();
		}
	}
}

var hatAnim = image_index;
if ((playerAbility == playerAbilities.fire) or (playerAbility == playerAbilities.mysticFire) or (playerAbility == playerAbilities.spark) or (playerAbility == playerAbilities.water)) hatAnim = hatBackgroundImageIndex;

for (var i = afterimageCount; i >= 0; i--)
{
	var alphaPointer = 1;
	var xPointer = x;
	var yPointer = y;
	
	switch (i)
	{
		case 1:
		alphaPointer = .5;
		xPointer = xprevious1;
		yPointer = yprevious1;
		break;
		
		case 2:
		alphaPointer = .35;
		xPointer = xprevious2;
		yPointer = yprevious2;
		break;
		
		case 3:
		alphaPointer = .2;
		xPointer = xprevious3;
		yPointer = yprevious3;
		break;
	}
	
	var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
	if (hatBackgroundIndex != -1) hatBackgroundImageIndexSpd = sprite_get_speed(hatBackgroundIndex) / 60;
	var abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
	if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	var hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
	if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndexFinal,paletteFlashPlayer,false);
	draw_sprite_ext(sprite_index,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
	if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
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
	
	var alphaPointer = 1;
	var xPointer = x;
	var yPointer = y;
	
	switch (i)
	{
		case 1:
		alphaPointer = .5;
		xPointer = xprevious1;
		yPointer = yprevious1;
		break;
		
		case 2:
		alphaPointer = .35;
		xPointer = xprevious2;
		yPointer = yprevious2;
		break;
		
		case 3:
		alphaPointer = .2;
		xPointer = xprevious3;
		yPointer = yprevious3;
		break;
	}
	
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
	if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
	if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	if ((hurt) and (invincibleFlash))
	{
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,3,false);
		if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7);
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndexFinal,3,false);
		draw_sprite_ext(sprite_index,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7 * alphaPointer);
		if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,.7 * alphaPointer);
		if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_reset();
	}
	
	var equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
	var equipmentDir = image_xscale;
	if (playerAbility == playerAbilities.ufo) equipmentDir = abs(image_xscale);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
	if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,image_index,xPointer + drawShakeX,yPointer + drawShakeY,equipmentDir * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle + stoneAngle,image_blend,alphaPointer);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
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

if (global.debugOverlay)
{
	draw_set_color(c_black);
	var i = 0;
	draw_text(x - 12,y - (12 * (i + 1)),"dialogye - " + string(hsp));
	i += 1;
	draw_text(x - 12,y - (12 * (i + 1)),"dir - " + string(obj_Camera.shakeY));
	i += 1;
}