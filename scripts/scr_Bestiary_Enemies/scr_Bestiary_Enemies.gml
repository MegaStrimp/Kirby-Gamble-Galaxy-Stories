///@description Bestiary - Enemies

function scr_Bestiary_Enemies()
{
	var i = 0;
	var h = 0;
	
	#region Waddle Dee
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Waddle Dee"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_waddleDee,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_waddleDee,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_WaddleDee_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesWaddleDeeUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Waddle Doo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Waddle Doo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_waddleDoo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_waddleDoo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_WaddleDoo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.beam; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesWaddleDooUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Bronto Burt
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Bronto Burt"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_brontoBurt,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_brontoBurt,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_BrontoBurt_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBrontoBurtUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Twizzy
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Twizzy"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_twizzy,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_twizzy,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Twizzy_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesTwizzyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Tookey
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Tookey"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_tookey,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_tookey,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Tookey_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesTookeyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Sir Kibble
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Sir Kibble"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_sirKibble,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_sirKibble,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_SirKibble_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.cutter; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesSirKibbleUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Gordo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Gordo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_gordo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_gordo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Gordo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesGordoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Blood Gordo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Blood  Gordo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bloodGordo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bloodGordo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_BloodGordo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBloodGordoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Shotzo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Shotzo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_shotzo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_shotzo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Shotzo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesShotzoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Mystic Doo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Mystic Doo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_mysticDoo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_mysticDoo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_MysticDoo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.mysticBeam; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesMysticDooUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Bouncy
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Bouncy"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bouncy,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bouncy,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Bouncy_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBouncyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Mr Boogie
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Mr Boogie"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_mrBoogie,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_mrBoogie,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_MrBoogie_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesMrBoogieUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Search
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Search"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_search,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_search,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Search_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.crash; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesSearchUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Hive Drone
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Hive Drone"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_hiveDrone,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_hiveDrone,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_HiveDrone_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesHiveDroneUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Wapod
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Wapod"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_wapod,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_wapod,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Wapod_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesWapodUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Flamebelch
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Flamebelch"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_flamebelch,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_flamebelch,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Flamebelch_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.mysticFire; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesFlamebelchUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Cappy
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Cappy"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_cappy,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_cappy,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Cappy_Normal_ShroomIdle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesCappyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Broom Hatter
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Broom Hatter"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_broomHatter,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_broomHatter,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_BroomHatter_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBroomHatterUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Coconut
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Coconut"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_coconut,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_coconut,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Coconut_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesCoconutUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Noddy
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Noddy"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_noddy,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_noddy,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Noddy_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.sleep; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesNoddyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Blado
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Blado"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_blado,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_blado,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Blado_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBladoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Scarfy
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Scarfy"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_scarfy,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_scarfy,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Scarfy_Normal_CalmIdle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.crash; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesScarfyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Rocky
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Rocky"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_rocky,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_rocky,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Rocky_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.stone; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesRockyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Grizzo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Grizzo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_grizzo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_grizzo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Grizzo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesGrizzoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Jungle Bomb
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Jungle Bomb"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_jungleBomb,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_jungleBomb,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_JungleBomb_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.bomb; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesJungleBombUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Glunk
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Glunk"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_glunk,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_glunk,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Glunk_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesGlunkUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Kabu
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Kabu"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_kabu,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_kabu,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Kabu_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesKabuUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Burning Leo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Burning Leo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_burningLeo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_burningLeo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_BurningLeo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.fire; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBurningLeoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Tomatoo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Tomatoo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_tomatoo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_tomatoo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Tomatoo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesTomatooUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Onion
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "'Onion'"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_onion,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_onion,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Onion_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesOnionUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Anemonee
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Anemonee"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_anemonee,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_anemonee,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Anemonee_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesAnemoneeUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Gim
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Gim"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_gim,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_gim,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Gim_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.yoyo; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesGimUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Poppy Bros Jr.
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Poppy Bros Jr."; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_poppyBrosJr,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_poppyBrosJr,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_PoppyBrosJr_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.bomb; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesPoppyBrosJrUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Bobo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Bobo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bobo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bobo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Bobo_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.fire; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBoboUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Foley
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Foley"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_foley,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_foley,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Foley_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.bomb; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesFoleyUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Nidoo
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Nidoo"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_nidoo,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_nidoo,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Nidoo_Normal_Ready; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesNidooUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Como
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Como"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_como,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_como,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Como_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.none; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesComoUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Cairn
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Cairn"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_cairn,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_cairn,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Cairn_Normal_Bottom; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.stone; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesCairnUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Bomber
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Bomber"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bomber,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_bomber,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Bomber_Normal_Idle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.crash; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesBomberUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	i += 1;
	h = 0;
	
	#region Simirror
	entries[i][h] = "Enemy"; //Type
	h += 1;
	entries[i][h] = "Simirror"; //Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_simirror,stringAttributes.title,0,global.language); //Display Name
	h += 1;
	entries[i][h] = scr_Localization(stringAttributes.enemy_simirror,stringAttributes.description,0,global.language); //Description
	h += 1;
	entries[i][h] = spr_Cappy_Normal_ShroomIdle; //Portrait Sprite
	h += 1;
	entries[i][h] = 2; //Portrait Scale
	h += 1;
	entries[i][h] = playerAbilities.mirror; //Ability
	h += 1;
	entries[i][h] = global.bestiaryEnemiesSimirrorUnlocked; //Unlocked
	h += 1;
	entries[i][h] = 0; //Offset
	h += 1;
	entries[i][h] = 0; //Offset Lerp
	#endregion
	h = 0;
	
	arrayLength += i;
}