///@description Begin Step

#region Pointers
switch (player)
{
	case 0:
	var playerCharacter = global.characterP1;
	var playerFamiliar = global.familiarP1;
	break;
	
	case 1:
	var playerCharacter = global.characterP2;
	var playerFamiliar = global.familiarP2;
	break;
	
	case 2:
	var playerCharacter = global.characterP3;
	var playerFamiliar = global.familiarP3;
	break;
	
	case 3:
	var playerCharacter = global.characterP3;
	var playerFamiliar = global.familiarP4;
	break;
}
#endregion

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	#region Spawn Familiar
	if ((playerFamiliar != -1) and ((playerFamiliar == "Gamble") + (playerCharacter = playerCharacters.gamble) != 2))
	{
		var followerObject = instance_create_depth(x + (30 * -dir),y - 15,depth,obj_Familiar);
		followerObject.owner = id;
		followerObject.character = playerFamiliar;
	}
	#endregion
	
	#region Spawn Other Players
	if ((global.hasCoop > 0) and (instance_number(obj_Player) == 1))
	{
		for (var i = 0; i < global.hasCoop; i++)
		{
			var hasCoopPointer = global.hasP1;
			switch (i)
			{
				case 1:
				hasCoopPointer = global.hasP2;
				break;
				
				case 2:
				hasCoopPointer = global.hasP3;
				break;
				
				case 3:
				hasCoopPointer = global.hasP4;
				break;
			}
			
			var xx = x;
			var targetXOffset = (24 * (i + 1));
			if (!place_meeting(x - targetXOffset,y,obj_ParentWall))
			{
				xx = x - targetXOffset;
			}
			else if (!place_meeting(x + targetXOffset,y,obj_ParentWall))
			{
				xx = x + targetXOffset;
			}
			
			var newPlayer = instance_create_depth(xx,y,depth,obj_Player);
			newPlayer.player = i + 1;
		}
		player = 0;
	}
	#endregion
	setupTimer = -1;
}
#endregion

#region Character Setup Timer
if (characterSetupTimer > 0)
{
	characterSetupTimer -= 1;
}
else if (characterSetupTimer == 0)
{
	#region Reset Variables
	switch (player)
	{
		case 0:
		global.isHelperP1 = false;
		break;
		
		case 1:
		global.isHelperP2 = false;
		break;
		
		case 2:
		global.isHelperP3 = false;
		break;
		
		case 3:
		global.isHelperP4 = false;
		break;
	}
	#endregion
	
	#region Character Setup
	switch (playerCharacter)
	{
		#region Kirby
		case playerCharacters.kirby:
		scr_Player_CharacterSetup_Kirby(id);
		break;
		#endregion
		
		#region Gamble
		case playerCharacters.gamble:
		scr_Player_CharacterSetup_Gamble(id);
		break;
		#endregion
		
		#region Gooey
		case playerCharacters.gooey:
		scr_Player_CharacterSetup_Gooey(id);
		break;
		#endregion
		
		#region Helper - Waddle Dee
		case playerCharacters.waddleDee:
		scr_Player_CharacterSetup_Helper_WaddleDee(id);
		break;
		#endregion
		
		#region Helper - Waddle Doo
		case playerCharacters.waddleDoo:
		scr_Player_CharacterSetup_Helper_WaddleDoo(id);
		break;
		#endregion
		
		#region Helper - Bronto Burt
		case playerCharacters.brontoBurt:
		scr_Player_CharacterSetup_Helper_BrontoBurt(id);
		break;
		#endregion
		
		#region Helper - Twizzy
		case playerCharacters.twizzy:
		scr_Player_CharacterSetup_Helper_Twizzy(id);
		break;
		#endregion
		
		#region Helper - Tookey
		case playerCharacters.tookey:
		scr_Player_CharacterSetup_Helper_Tookey(id);
		break;
		#endregion
		
		#region Helper - Sir Kibble
		case playerCharacters.sirKibble:
		scr_Player_CharacterSetup_Helper_SirKibble(id);
		break;
		#endregion
		
		#region Helper - Bouncy
		case playerCharacters.bouncy:
		scr_Player_CharacterSetup_Helper_Bouncy(id);
		break;
		#endregion
		
		#region Helper - Gordo
		case playerCharacters.gordo:
		scr_Player_CharacterSetup_Helper_Gordo(id);
		break;
		#endregion
		
		#region Helper - Blood Gordo
		case playerCharacters.bloodGordo:
		scr_Player_CharacterSetup_Helper_BloodGordo(id);
		break;
		#endregion
	}
	#endregion
	
	#region Set Palette Index
	switch (player)
	{
		case 0:
		paletteIndex = global.sprayPaintP1;
		break;
		
		case 1:
		paletteIndex = global.sprayPaintP2;
		break;
		
		case 2:
		paletteIndex = global.sprayPaintP3;
		break;
		
		case 3:
		paletteIndex = global.sprayPaintP4;
		break;
	}
	#endregion
	
	#region Awaiting For The New Moon Cheat
	if (global.cheatAwaitingForTheNewMoonEquipped)
	{
		gravNormal = gravNormal / 4;
		gravStone = gravStone / 4;
		gravWheel = gravWheel / 4;
		grav = grav / 4;
		gravFloat = gravFloat / 2;
		gravFireDash = gravFireDash / 2;
		gravLimitNormal = gravLimitNormal / 2;
		gravLimitFloat = gravLimitFloat / 2;
		gravLimitBeamAir = gravLimitBeamAir / 2;
		gravLimitStone = gravLimitStone / 2;
		gravLimitFireDash = gravLimitFireDash / 2;
		gravLimitWheel = gravLimitWheel / 2;
		gravLimit = gravLimit / 2;
	}
	#endregion
	
	characterSetupTimer = -1;
}
#endregion

#region Upgrade Setup Timer
if (upgradeSetupTimer > 0)
{
	upgradeSetupTimer -= 1;
}
else if (upgradeSetupTimer == 0)
{
	cutterMotorCutterUpgrade = global.cutterMotorCutterUpgradeEquipped;
	cutterPropellerWingUpgrade = global.cutterPropellerWingUpgradeEquipped;
	cutterSpectralCutterUpgrade = global.cutterSpectralCutterUpgradeEquipped;
	beamGoldenFlareUpgrade = global.beamGoldenFlareUpgradeEquipped;
	mysticBeamVortexInAJarUpgrade = global.mysticBeamVortexInAJarUpgradeEquipped;
	stoneRockCandyUpgrade = global.stoneRockCandyUpgradeEquipped;
	stoneComboCobaltUpgrade = global.stoneComboCobaltUpgradeEquipped;
	bombLightShellsUpgrade = global.bombLightShellsUpgradeEquipped;
	bombEyeBombUpgrade = global.bombEyeBombUpgradeEquipped;
	bombStickyBombUpgrade = global.bombStickyBombUpgradeEquipped;
	bombMagmaBombUpgrade = global.bombMagmaBombUpgradeEquipped;
	bombExplosivePowderUpgrade = global.bombExplosivePowderUpgradeEquipped;
	fireMagicCharcoalUpgrade = global.fireMagicCharcoalUpgradeEquipped;
	iceEmptyConeUpgrade = global.iceEmptyConeUpgradeEquipped;
	sparkBrightPluggUpgrade = global.sparkBrightPluggUpgradeEquipped;
	waterEggSoilUpgrade = global.waterEggSoilUpgradeEquipped;
	
	upgradeSetupTimer = -1;
}
#endregion

#region Powerups
#region Variables
switch (player)
{
	case 0:
	hasInvinCandy = (global.invinCandyTimerP1 != -1);
	hasMintLeaf = (global.mintLeafTimerP1 != -1);
	break;
	
	case 1:
	hasInvinCandy = (global.invinCandyTimerP2 != -1);
	hasMintLeaf = (global.mintLeafTimerP2 != -1);
	break;
	
	case 2:
	hasInvinCandy = (global.invinCandyTimerP3 != -1);
	hasMintLeaf = (global.mintLeafTimerP3 != -1);
	break;
	
	case 3:
	hasInvinCandy = (global.invinCandyTimerP4 != -1);
	hasMintLeaf = (global.mintLeafTimerP4 != -1);
	break;
}
#endregion

#region Invin Candy
if (hasInvinCandy)
{
	if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
	if (invinCandyParticleTimer == -1) invinCandyParticleTimer = invinCandyParticleTimerMax;
	if (!instance_exists(invinCandyMask))
	{
		invinCandyMask = instance_create_depth(x,y,depth,obj_Projectile_InvinCandyMask);
		invinCandyMask.owner = id;
		invinCandyMask.dmg = 50;
		invinCandyMask.image_xscale = image_xscale;
		invinCandyMask.image_yscale = image_yscale;
	}
}
#endregion

#region Mint Leaf
if (hasMintLeaf)
{
	if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
	if (mintLeafParticleTimer == -1) mintLeafParticleTimer = mintLeafParticleTimerMax;
	
	if (state != playerStates.float)
	{
		attackTimer = 0;
		hurt = false;
		jumpspeed = jumpspeedFloat;
		vsp = -jumpspeed;
		float = false;
		image_index = 0;
		state = playerStates.float;
	}
}
#endregion
#endregion