///@description Trophies

function scr_Trophies()
{
	/*
	0 - Sprite
	1 - Name
	2 - Description
	3 - Unlocked
	4 - Unlock Method
	5 - Trophy Type
	6 - Amount
	7 - Required Amount
	
	Trophy Types
	------------
	0 - Clear
	1 - Speedrun
	2 - Master
	3 - Defeat
	*/
	
	if (ds_exists(trophyArray,ds_type_grid)) ds_grid_destroy(trophyArray);
	
	trophyArray = ds_grid_create(26,8);
	ds_grid_clear(trophyArray,-1);
	
	var i = 0;
	
	#region Master Cutter Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterCutter;
	trophyArray[# i,1] = str("Trophies.Master Cutter Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Cutter Ability.Description");
	trophyArray[# i,3] = (global.cutterAbilityKills >= global.cutterAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Cutter Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.cutterAbilityKills;
	trophyArray[# i,7] = global.cutterAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Beam Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterBeam;
	trophyArray[# i,1] = str("Trophies.Master Beam Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Beam Ability.Description");
	trophyArray[# i,3] = (global.beamAbilityKills >= global.beamAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Beam Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.beamAbilityKills;
	trophyArray[# i,7] = global.beamAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Mystic Beam Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterMysticBeam;
	trophyArray[# i,1] = str("Trophies.Master Mystic Beam Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Mystic Beam Ability.Description");
	trophyArray[# i,3] = (global.mysticBeamAbilityKills >= global.mysticBeamAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Mystic Beam Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.mysticBeamAbilityKills;
	trophyArray[# i,7] = global.mysticBeamAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Stone Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterStone;
	trophyArray[# i,1] = str("Trophies.Master Stone Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Stone Ability.Description");
	trophyArray[# i,3] = (global.stoneAbilityKills >= global.stoneAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Stone Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.stoneAbilityKills;
	trophyArray[# i,7] = global.stoneAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Ufo Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterUfo;
	trophyArray[# i,1] = str("Trophies.Master Ufo Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Ufo Ability.Description");
	trophyArray[# i,3] = (global.ufoAbilityKills >= global.ufoAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Ufo Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.ufoAbilityKills;
	trophyArray[# i,7] = global.ufoAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Mirror Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterMirror;
	trophyArray[# i,1] = str("Trophies.Master Mirror Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Mirror Ability.Description");
	trophyArray[# i,3] = (global.mirrorAbilityKills >= global.mirrorAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Mirror Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.mirrorAbilityKills;
	trophyArray[# i,7] = global.mirrorAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Ninja Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterNinja;
	trophyArray[# i,1] = str("Trophies.Master Ninja Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Ninja Ability.Description");
	trophyArray[# i,3] = (global.ninjaAbilityKills >= global.ninjaAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Ninja Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.ninjaAbilityKills;
	trophyArray[# i,7] = global.ninjaAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Bomb Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterBomb;
	trophyArray[# i,1] = str("Trophies.Master Bomb Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Bomb Ability.Description");
	trophyArray[# i,3] = (global.bombAbilityKills >= global.bombAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Bomb Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.bombAbilityKills;
	trophyArray[# i,7] = global.bombAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Fire Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterFire;
	trophyArray[# i,1] = str("Trophies.Master Fire Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Fire Ability.Description");
	trophyArray[# i,3] = (global.fireAbilityKills >= global.fireAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Fire Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.fireAbilityKills;
	trophyArray[# i,7] = global.fireAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Mystic Fire Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterMysticFire;
	trophyArray[# i,1] = str("Trophies.Master Mystic Fire Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Mystic Fire Ability.Description");
	trophyArray[# i,3] = (global.mysticFireAbilityKills >= global.mysticFireAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Mystic Fire Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.mysticFireAbilityKills;
	trophyArray[# i,7] = global.mysticFireAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Ice Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterIce;
	trophyArray[# i,1] = str("Trophies.Master Ice Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Ice Ability.Description");
	trophyArray[# i,3] = (global.iceAbilityKills >= global.iceAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Ice Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.iceAbilityKills;
	trophyArray[# i,7] = global.iceAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Spark Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterSpark;
	trophyArray[# i,1] = str("Trophies.Master Spark Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Spark Ability.Description");
	trophyArray[# i,3] = (global.sparkAbilityKills >= global.sparkAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Spark Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.sparkAbilityKills;
	trophyArray[# i,7] = global.sparkAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Yoyo Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterYoyo;
	trophyArray[# i,1] = str("Trophies.Master Yoyo Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Yoyo Ability.Description");
	trophyArray[# i,3] = (global.yoyoAbilityKills >= global.yoyoAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Yoyo Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.yoyoAbilityKills;
	trophyArray[# i,7] = global.yoyoAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Wheel Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterWheel;
	trophyArray[# i,1] = str("Trophies.Master Wheel Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Wheel Ability.Description");
	trophyArray[# i,3] = (global.wheelAbilityKills >= global.wheelAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Wheel Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.wheelAbilityKills;
	trophyArray[# i,7] = global.wheelAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Artist Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterArtist;
	trophyArray[# i,1] = str("Trophies.Master Artist Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Artist Ability.Description");
	trophyArray[# i,3] = (global.artistAbilityKills >= global.artistAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Artist Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.artistAbilityKills;
	trophyArray[# i,7] = global.artistAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Fighter Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterFighter;
	trophyArray[# i,1] = str("Trophies.Master Fighter Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Fighter Ability.Description");
	trophyArray[# i,3] = (global.fighterAbilityKills >= global.fighterAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Fighter Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.fighterAbilityKills;
	trophyArray[# i,7] = global.fighterAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Suplex Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterSuplex;
	trophyArray[# i,1] = str("Trophies.Master Suplex Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Suplex Ability.Description");
	trophyArray[# i,3] = (global.suplexAbilityKills >= global.suplexAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Suplex Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.suplexAbilityKills;
	trophyArray[# i,7] = global.suplexAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Wing Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterWing;
	trophyArray[# i,1] = str("Trophies.Master Wing Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Wing Ability.Description");
	trophyArray[# i,3] = (global.wingAbilityKills >= global.wingAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Wing Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.wingAbilityKills;
	trophyArray[# i,7] = global.wingAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Jet Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterJet;
	trophyArray[# i,1] = str("Trophies.Master Jet Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Jet Ability.Description");
	trophyArray[# i,3] = (global.jetAbilityKills >= global.jetAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Jet Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.jetAbilityKills;
	trophyArray[# i,7] = global.jetAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Sword Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterSword;
	trophyArray[# i,1] = str("Trophies.Master Sword Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Sword Ability.Description");
	trophyArray[# i,3] = (global.swordAbilityKills >= global.swordAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Sword Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.swordAbilityKills;
	trophyArray[# i,7] = global.swordAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Parasol Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterParasol;
	trophyArray[# i,1] = str("Trophies.Master Parasol Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Parasol Ability.Description");
	trophyArray[# i,3] = (global.parasolAbilityKills >= global.parasolAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Parasol Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.parasolAbilityKills;
	trophyArray[# i,7] = global.parasolAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Hammer Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterHammer;
	trophyArray[# i,1] = str("Trophies.Master Hammer Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Hammer Ability.Description");
	trophyArray[# i,3] = (global.hammerAbilityKills >= global.hammerAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Hammer Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.hammerAbilityKills;
	trophyArray[# i,7] = global.hammerAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Bell Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterBell;
	trophyArray[# i,1] = str("Trophies.Master Bell Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Bell Ability.Description");
	trophyArray[# i,3] = (global.bellAbilityKills >= global.bellAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Bell Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.bellAbilityKills;
	trophyArray[# i,7] = global.bellAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Water Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterWater;
	trophyArray[# i,1] = str("Trophies.Master Water Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Water Ability.Description");
	trophyArray[# i,3] = (global.waterAbilityKills >= global.waterAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Water Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.waterAbilityKills;
	trophyArray[# i,7] = global.waterAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Hi-Jump Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterHiJump;
	trophyArray[# i,1] = str("Trophies.Master Hi-Jump Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Hi-Jump Ability.Description");
	trophyArray[# i,3] = (global.hiJumpAbilityKills >= global.hiJumpAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Hi-Jump Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.hiJumpAbilityKills;
	trophyArray[# i,7] = global.hiJumpAbilityKillsTarget;
	i += 1;
	#endregion
	
	#region Master Gear Ability
	trophyArray[# i,0] = spr_Menu_Trophies_Icon_MasterGear;
	trophyArray[# i,1] = str("Trophies.Master Gear Ability.Title");
	trophyArray[# i,2] = str("Trophies.Master Gear Ability.Description");
	trophyArray[# i,3] = (global.gearAbilityKills >= global.gearAbilityKillsTarget);
	trophyArray[# i,4] = str("Trophies.Master Gear Ability.Unlock Method");
	trophyArray[# i,5] = 2;
	trophyArray[# i,6] = global.gearAbilityKills;
	trophyArray[# i,7] = global.gearAbilityKillsTarget;
	i += 1;
	#endregion
	
	trophiesMax = i;
	pageMax = floor(trophiesMax / 12);
	if ((trophiesMax % 12) == 0) pageMax -= 1;
}