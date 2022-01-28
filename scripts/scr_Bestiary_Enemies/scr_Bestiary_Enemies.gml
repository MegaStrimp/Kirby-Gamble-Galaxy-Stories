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
	entries[i][h] = @"The most common of Popstar residents. Many have chosen to work for King Dedede, some even choosing to wield spears or parasols."; //Description
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
	entries[i][h] = @"These creatures are known to shoot a beam out of their singular large eye. Grants the beam ability upon swallowing."; //Description
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
	entries[i][h] = "A flying foe who takes to the skies whenever someone gets near, and will try and ram into you when provoked."; //Description
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
	entries[i][h] = "A baby Tookey never seen far from its mother. They are known to ram into others for fun."; //Description
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
	entries[i][h] = "The adult variant of Twizzy that is always found near its chicks. It will ram into anyone who gets near its babies."; //Description
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
	entries[i][h] = "A knight of the bladed boomerang variety. By channeling his energy he can throw a larger blade. grants the cutter ability upon being swallowed."; //Description
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
	entries[i][h] = "An invincible ball of spikes, yowch! Can break ability stars upon contact."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = "These cannons are a staple of the halberd and castle dedede's Arsenals. Can come in single shot and 3 round burst flavors."; //Description
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
	entries[i][h] = "A waddle doo warped by the power of flux. By utilizing its new power it can create a beam barrier, which can also be launched forward."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = "One of the native residents of popstar, these shy creatures will shoot their mushroom caps into the air when approached, and will panic if their cap is stolen."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = "These palm tree fruits are packed with explosives to spread the seeds inside, but only fall when you run under, so watch out!"; //Description
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
	entries[i][h] = "An enemy who prefers sleeping over fighting, most commonly found near the fountain of dreams."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = "This deceiving enemy looks cute at first glance, but anger it and it will become rabid and explode after a few seconds. cannot be swallowed."; //Description
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
	entries[i][h] = "A sentient boulder that tries to crush threats with its body. grants the stone ability upon swallowing."; //Description
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
	entries[i][h] = "A large bear that lives in dense forests. it can use its claws to grab onto foes and scratch them, usually when provoked."; //Description
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
	entries[i][h] = "A small pineapple sapling. jungle bombs will puke up bombs at threats, up to 3."; //Description
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
	entries[i][h] = "An aquatic plant who will periodically shoot water out of its mouth , up to 5 projectiles at a time."; //Description
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
	entries[i][h] = "These ancient statues spin across the land, ramming into whoever is unfortunate enough to be in their path."; //Description
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
	entries[i][h] = "A hotheaded creature capable of many fire based attacks, such as shooting a flame ball."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = "Onion, contrary to its name, is a missile like carrot creature native to egg gardens. They like to hide in the soil and ambush people passing by."; //Description
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
	entries[i][h] = "An aquatic creature with long tendrils jutting from its head. It dances back and forth to the waves of the oceans they reside in."; //Description
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
	entries[i][h] = "Gim is a fanatic of all things yoyos, and is a master of wielding them. rumor has it their collection has over 50 different yoyos!"; //Description
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
	entries[i][h] = "A trouble making kid with an innate love for explosives. Nobody knows where they get all of those bombs from."; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	entries[i][h] = ""; //Description
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
	i += 1;
	h = 0;
	
	arrayLength += i;
}