///@description Main

if (!global.pause)
{
	//Create Kirby Timer
			
	if (createKirbyTimer > 0)
	{
		createKirbyTimer -= 1;
	}
	else if (createKirbyTimer == 0)
	{
		if (state == 0)
        {
            var mirrorKirby = instance_create_depth(x,y,depth,obj_Projectile_MirrorPlayer);
            mirrorKirby.owner = owner;
            mirrorKirby.player = owner.player;
			mirrorKirby.dmg = kirby_MirrorDash_Damage;
			mirrorKirby.destroyableByWall = false;
			mirrorKirby.destroyableByEnemy = false;
			mirrorKirby.destroyableByObject = false;
            if (dir == 1) var mirrorDir = 0;
            if (dir == -1) var mirrorDir = 180;
            if (amountMax == 5) mirrorKirby.direction = (90 * angleMul) + ((360 / amountMax) * amount) + mirrorDir;
            else mirrorKirby.direction = ((360/amountMax) * amount) + mirrorDir;
            mirrorKirby.state = 1;
            mirrorKirby.image_xscale = dir;
			mirrorKirby.spriteIndex = spriteIndex;
			mirrorKirby.paletteIndex = paletteIndex;
			if ((((owner.player == 0) and (global.characterP1 == playerCharacters.kirby)) or ((owner.player == 1) and (global.characterP2 == playerCharacters.kirby))) and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped)) mirrorKirby.paletteIndex = spr_Kirby_Normal_Palette_Mirror;
			mirrorKirby.hatIndex = hatIndex;
			mirrorKirby.hatShadowIndex = hatShadowIndex;
			mirrorKirby.hatPaletteIndex = hatPaletteIndex;
            amount += 1;
            if (amount == 2) mirrorKirby.lastReflection = true;
            if (amount < amountMax)
            {
                createKirbyTimer = 4;
            }
            else
            {
                instance_destroy();
            }
        }
        if (state == 1)
        {
            var mirrorKirby = instance_create_depth(x,y - (24 * amount),depth,obj_Projectile_MirrorPlayer);
            mirrorKirby.owner = owner;
            mirrorKirby.player = owner.player;
			mirrorKirby.dmg = kirby_MirrorUpDown_Damage;
			scr_Attack_SetKnockback(mirrorKirby,kirby_MirrorUpDown_Strength,kirby_MirrorUpDown_HitStopAffectSource,kirby_MirrorUpDown_HitStopAffectPlayer,kirby_MirrorUpDown_HitStopAffectTarget,kirby_MirrorUpDown_HitStopLength,kirby_MirrorUpDown_HitStopShakeStrength);
            mirrorKirby.state = 2;
			mirrorKirby.destroyableByWall = false;
			mirrorKirby.destroyableByEnemy = false;
			mirrorKirby.destroyableByObject = false;
            mirrorKirby.image_xscale = dir;
			mirrorKirby.spriteIndex = spriteIndex;
			mirrorKirby.paletteIndex = paletteIndex;
			if ((((owner.player == 0) and (global.characterP1 == playerCharacters.kirby))
			or ((owner.player == 1) and (global.characterP2 == playerCharacters.kirby))
			or ((owner.player == 2) and (global.characterP3 == playerCharacters.kirby))
			or ((owner.player == 3) and (global.characterP4 == playerCharacters.kirby)))
			and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped)) mirrorKirby.paletteIndex = spr_Kirby_Normal_Palette_Mirror;
			mirrorKirby.hatIndex = hatIndex;
			mirrorKirby.hatShadowIndex = hatShadowIndex;
			mirrorKirby.hatPaletteIndex = hatPaletteIndex;
            amount += 1;
            if (amount == 2) mirrorKirby.lastReflection = true;
            if (amount < amountMax)
            {
                createKirbyTimer = 3;
            }
            else
            {
                instance_destroy();
            }
        }
	}
}