///@description Draw

//Draw Self

if (instance_exists(owner))
{
	switch (owner.object_index)
	{
		case obj_Player:
		
		switch (owner.player)
		{
			case 0:
			var playerAbility = global.abilityP1;
			var playerCharacter = global.characterP1;
			break;
			
			case 1:
			var playerAbility = global.abilityP2;
			var playerCharacter = global.characterP2;
			break;
			
			case 2:
			var playerAbility = global.abilityP3;
			var playerCharacter = global.characterP3;
			break;
			
			case 3:
			var playerAbility = global.abilityP4;
			var playerCharacter = global.characterP4;
			break;
		}
		
		var drawShakeX = irandom_range(-owner.shakeX,owner.shakeX);
		var drawShakeY = irandom_range(-owner.shakeY,owner.shakeY);
		
		var paletteFlash = 1;
		if (owner.invincibleFlash) paletteFlash = 2;
		if (owner.death)
		{
			if (owner.state == playerStates.death)
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
		
		with (owner)
		{
			other.hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
			other.abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
			other.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
			other.abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
			other.hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
			other.equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
		}
		
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
		if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
		
		if ((global.shaders) and (((owner.sprite_index != owner.sprStoneAttack1Common) and (owner.sprite_index != owner.sprStoneAttack1Uncommon) and (owner.sprite_index != owner.sprStoneAttack1Rare)) or (owner.sprite_index = (owner.sprStoneAttack1Common) and (owner.image_index = 0)))) pal_swap_set(paletteIndex,paletteFlash,false);
		draw_sprite_ext(owner.sprite_index,owner.image_index,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,owner.image_index,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		if ((global.shaders) and (((owner.sprite_index != owner.sprStoneAttack1Common) and (owner.sprite_index != owner.sprStoneAttack1Uncommon) and (owner.sprite_index != owner.sprStoneAttack1Rare)) or (owner.sprite_index = (owner.sprStoneAttack1Common) and (owner.image_index = 0)))) pal_swap_reset();
		
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
		if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,owner.image_index,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
		
		if ((owner.hurt) and (owner.invincibleFlash))
		{
			if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,3,false);
			if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,.7);
			if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
			
			if ((global.shaders) and (((owner.sprite_index != owner.sprStoneAttack1Common) and (owner.sprite_index != owner.sprStoneAttack1Uncommon) and (owner.sprite_index != owner.sprStoneAttack1Rare)) or (((sprite_index = spr_Kirby_Normal_Stone_Attack1_Common1) or (sprite_index = spr_Kirby_Normal_Stone_Attack1_Common2)) and (image_index = 0)) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common1) or (sprite_index = spr_Gooey_Normal_Stone_Attack_Common2))) pal_swap_set(paletteIndex,3,false);
			draw_sprite_ext(owner.sprite_index,owner.image_index,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,.7);
			if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,owner.image_index,x + drawShakeX,y + drawShakeY,owner.image_xscale * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,.7);
			if ((global.shaders) and (((owner.sprite_index != owner.sprStoneAttack1Common) and (owner.sprite_index != owner.sprStoneAttack1Uncommon) and (owner.sprite_index != owner.sprStoneAttack1Rare)) or (owner.sprite_index = (owner.sprStoneAttack1Common) and (owner.image_index = 0)))) pal_swap_reset();
		}
		
		/*var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
		var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
		if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
		if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
		if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();*/
		
		var equipmentDir = owner.image_xscale;
		if (playerAbility == playerAbilities.ufo) equipmentDir = abs(owner.image_xscale);
		if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,owner.image_index,x + drawShakeX,y + drawShakeY,equipmentDir * (1 + owner.scaleExX),owner.image_yscale * (1 + owner.scaleExY),owner.imageAngle,owner.image_blend,image_alpha);
		break;
		
		default:
		if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
		if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();
		break;
	}
}
