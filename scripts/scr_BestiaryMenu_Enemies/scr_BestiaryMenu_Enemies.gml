///@description Trophies

function scr_BestiaryMenu_Enemies()
{
	/*
	0 - Id
	1 - Name
	2 - Description
	3 - Unlocked
	4 - Unlock Method
	5 - Game
	6 - Power Level
	7 - Background
	8 - Icon
	9 - Index
	10 - Skins Max
	
	[Cosmetics]
	bestiaryCosmeticsArray[enemy index][skin index][palette sprite]
	0 - Skin
	1 - Palette
	2 - Animation
	*/
	
	if (ds_exists(bestiaryArray,ds_type_grid)) ds_grid_destroy(bestiaryArray);
	bestiaryCosmeticsArray = -1;
	bestiaryAnimationsArray = -1;
	
	bestiaryArray = ds_grid_create(99,20);
	ds_grid_clear(bestiaryArray,-1);
	
	var i = 0;
	var skinIndex = 0;
	var paletteIndex = 0;
	var animIndex = 0;
	
	#region Waddle Dee
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Waddle Dee.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Waddle Dee.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWaddleDeeUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.waddleDee;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Run;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Slide;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Parasol;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BlueberryPie;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SeenAGhost;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Hypothermic;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_MidnightForest;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_CelestialGlow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_InvertedGold;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_CherryBomb;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Corruption;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_NightVision;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_UpsetStomach;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_FadedWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_InvisibleSpray;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Snowball;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_KeyDee;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BurntToACrisp;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_ImpendingDoom;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Ultra;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SherbetSurprise;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_CottonCandy;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_GamerDee;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Crimson;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_TropicalOcean;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Mulberry;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_GrandDee;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SunKissed;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_VitaminDeeMilk;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SunkenSea;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_GhostlyGhoul;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Throwback50s;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_Roaring20s;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_ExtremeContrast;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BubbleGum;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_ParkaDee;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_HalloweenSpirit;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_NPCOrange1;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_NPCOrange2;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_NPCOrange3;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_NPCOrange4;
	#endregion
	
	#region Egg
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Egg_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Egg_Palette_EggedOn;
	paletteIndex += 1;
	#endregion
	
	#region Gold
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Gold_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Gold_Palette_HiddenTreasure;
	paletteIndex += 1;
	#endregion
	
	#region Alien
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Alien_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_WaddleDee_Alien_Palette_Graylien;
	paletteIndex += 1;
	#endregion
	
	#region Bandit
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Run;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Slide;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Parasol;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDee][skinIndex][animIndex] = spr_WaddleDee_Bandit_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDee][skinIndex][paletteIndex] = spr_1Up;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Waddle Doo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Waddle Doo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Waddle Doo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWaddleDooUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Beam;
	bestiaryArray[# i,9] = bestiaryEnemies.waddleDoo;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_RunTurn;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Slide;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Normal_Death;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Uranium;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_IvoryEgg;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Kirby;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_TrueBlue;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Lilac;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_AquaDepths;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Ocean;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_MintyBreeze;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_FilthyRich;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_CowardlyBrother;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_LetsaGo;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Choco;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Bloodshot;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_RipeTomato;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_BeamOfLight;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Aluminum;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_HelperToHero;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_AngelicGold;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_FrozenTundra;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_PinkStar;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_Brick;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_CorruptedTwilight;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_PalePurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Normal_Palette_DarkFlux;
	paletteIndex += 1;
	#endregion
	
	#region Bandit
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_RunTurn;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Slide;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Swing;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_ClimbUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_ClimbDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.waddleDoo][skinIndex][animIndex] = spr_WaddleDoo_Bandit_Death;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.waddleDoo][skinIndex][paletteIndex] = spr_WaddleDoo_Bandit_Palette_GreenThief;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Bronto Burt
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Bronto Burt.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Bronto Burt.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBrontoBurtUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.brontoBurt;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Fly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Idle_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Ready_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Walk_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Fly_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_HurtFly;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Acidic;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Alien;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Black;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Green;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Light;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Pumpkin;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Purple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_UraniumGreen;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_UraniumPurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Cosmic;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Avalanche;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_CreamyPink;
	paletteIndex += 1;
	#endregion
	
	#region Alien
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Fly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Idle_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Ready_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Walk_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_Fly_Joy;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Normal_HurtFly;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Acidic;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Alien;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Black;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Green;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Light;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Pumpkin;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Purple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_UraniumGreen;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_UraniumPurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Cosmic;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_Avalanche;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Normal_Palette_CreamyPink;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Twizzy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Twizzy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Twizzy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesTwizzyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.twizzy;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.twizzy][skinIndex][animIndex] = spr_Twizzy_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_FlyingYolk;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Tookey
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Tookey.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Tookey.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesTookeyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.tookey;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.tookey][skinIndex][animIndex] = spr_Tookey_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.tookey][skinIndex][paletteIndex] = spr_Tookey_Normal_Palette_FlyingWhite;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Sir Kibble
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Sir Kibble.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Sir Kibble.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesSirKibbleUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Cutter;
	bestiaryArray[# i,9] = bestiaryEnemies.sirKibble;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Yellow;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Gordo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Gordo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Gordo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesGordoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 4;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.gordo;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.gordo][skinIndex][animIndex] = spr_Gordo_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_ThornyBackside;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Blood Gordo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Blood Gordo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Blood Gordo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBloodGordoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 4;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.bloodGordo;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bloodGordo][skinIndex][paletteIndex] = spr_BloodGordo_Normal_Palette_BloodyThorns;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Shotzo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Shotzo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Shotzo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesShotzoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 3;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.shotzo;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.shotzo][skinIndex][animIndex] = spr_Shotzo_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.shotzo][skinIndex][paletteIndex] = spr_Shotzo_Normal_Palette_SteelArmada;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Mystic Doo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Mystic Doo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Mystic Doo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesMysticDooUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_MysticBeam;
	bestiaryArray[# i,9] = bestiaryEnemies.mysticDoo;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Bouncy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Bouncy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Bouncy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBouncyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL2;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.bouncy;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_HoppingPink;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	#region Searches
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Searches.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Searches.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesSearchesUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_RtDL;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Crash;
	bestiaryArray[# i,9] = bestiaryEnemies.searches;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.searches][skinIndex][animIndex] = spr_Searches_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.searches][skinIndex][paletteIndex] = spr_Searches_Normal_Palette_BombshellGray;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,10] = skinIndex;
	i += 1;
	#endregion
	
	bestiaryMax = i;
	pageMax = floor(bestiaryMax / 12);
	if ((bestiaryMax % 12) == 0) pageMax -= 1;
}