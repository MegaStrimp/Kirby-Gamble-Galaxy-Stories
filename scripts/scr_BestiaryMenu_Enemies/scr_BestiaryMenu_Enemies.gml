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
	10 - Scale
	11 - Skins Max
	
	[Cosmetics]
	bestiaryCosmeticsArray[enemy index][skin index][palette sprite]
	0 - Skin
	1 - Palette
	2 - Animation
	*/
	
	enum bestiaryEnemies
	{
		waddleDee,
		waddleDoo,
		brontoBurt,
		twizzy,
		tookey,
		sirKibble,
		gordo,
		bloodGordo,
		shotzo,
		mysticDoo,
		bouncy,
		searches,
		wapod,
		cappy,
		broomHatter,
		coconut,
		noddy,
		blado,
		scarfy,
		rocky,
		grizzo,
		jungleBomb,
		glunk,
		kabu,
		burningLeo,
		tomatoo,
		onion,
		anemonee,
		poppyBrosJr,
		bobo,
		foley,
		nidoo,
		como,
		cairn,
		bomber,
		simirror,
		gim,
		hothead,
		sparky,
		yolky,
		wheelie,
		pacloud,
		laserBall,
		jackle,
		kookler,
		ufo,
		bouncySis,
		flamer,
		chuckie,
		walky,
		mysticBlock,
		lovely,
		plasmaWisp,
		capsuleJ2,
		cerulean,
		wizzer,
		mopoo,
		golem
	}
	
	if (ds_exists(bestiaryArray,ds_type_grid)) ds_grid_destroy(bestiaryArray);
	bestiaryCosmeticsArray = -1;
	bestiaryAnimationsArray = -1;
	
	bestiaryArray = ds_grid_create(99,20);
	ds_grid_clear(bestiaryArray,-1);
	
	var i = 0;
	var skinIndex = 0;
	var paletteIndex = 0;
	var animIndex = 0;
	
	#region Templates
	/*
	SINGLE SKIN
	
	#region Enemy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Enemy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Enemy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesEnemyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.enemy;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Run;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BlueberryPie;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SeenAGhost;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	
	
	MULTI SKIN
	
	#region Enemy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Enemy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Enemy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesEnemyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.enemy;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Normal_Run;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BlueberryPie;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SeenAGhost;
	paletteIndex += 1;
	#endregion
	
	#region Egg
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Egg_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_WaddleDee_Egg_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.enemy][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Egg_Palette_EggedOn;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Egg_Palette_EggedOn;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.enemy][skinIndex][paletteIndex] = spr_WaddleDee_Egg_Palette_EggedOn;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	*/
	#endregion
	
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
	bestiaryArray[# i,10] = 2;
	
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
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
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
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
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
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_Fly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_1Up;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.brontoBurt][skinIndex][animIndex] = spr_BrontoBurt_Alien_HurtFly;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.brontoBurt][skinIndex][paletteIndex] = spr_BrontoBurt_Alien_Palette_Graylien;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.twizzy][skinIndex][animIndex] = spr_Twizzy_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.twizzy][skinIndex][animIndex] = spr_Twizzy_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.twizzy][skinIndex][animIndex] = spr_Twizzy_Normal_Fly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.twizzy][skinIndex][animIndex] = spr_Twizzy_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_FlyingYolk;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Blue;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Dove;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Green;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Orange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Red;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.twizzy][skinIndex][paletteIndex] = spr_Twizzy_Normal_Palette_Toothpaste;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.tookey][skinIndex][animIndex] = spr_Tookey_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tookey][skinIndex][animIndex] = spr_Tookey_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tookey][skinIndex][animIndex] = spr_Tookey_Normal_Fly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tookey][skinIndex][animIndex] = spr_Tookey_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.tookey][skinIndex][paletteIndex] = spr_Tookey_Normal_Palette_FlyingWhite;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.tookey][skinIndex][paletteIndex] = spr_Tookey_Normal_Palette_Grape;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Catch;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sirKibble][skinIndex][animIndex] = spr_SirKibble_Normal_HurtAir;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Yellow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Black;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_KnightlyPink;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Green;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Jade;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Stone;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Titanium;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.sirKibble][skinIndex][paletteIndex] = spr_SirKibble_Normal_Palette_Gold;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.gordo][skinIndex][animIndex] = spr_Gordo_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_ThornyBackside;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_DarkMetal;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Silver;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Golden;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Nuclear;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Crimson;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Orange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Crystal;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Lunar;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gordo][skinIndex][paletteIndex] = spr_Gordo_Normal_Palette_Vintage;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Angry;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Cautious;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Sleep;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bloodGordo][skinIndex][animIndex] = spr_BloodGordo_Normal_Triggered;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bloodGordo][skinIndex][paletteIndex] = spr_BloodGordo_Normal_Palette_BloodyThorns;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
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
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_FloatUp;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_FloatTrans;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_FloatDown;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Wave;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_WalkIdle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticDoo][skinIndex][animIndex] = spr_MysticDoo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_PalePurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_DarkFlux;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_DarkSide;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_NeutralWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_Puffball;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_IcyBlue;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticDoo][skinIndex][paletteIndex] = spr_MysticDoo_Normal_Palette_SwingTrap;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_HoppingPink;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_BerryBounce;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_AmberNChrome;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_AzureSpring;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_DeepSeaDive;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_EmeraldEscape;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_Exoskeleton;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_GoldsMold;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_GolfCourse;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_GrapeGetaway;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_HotSpring;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_LightlyBouncing;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_OceansBounce;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_RustedFlux;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Normal_Palette_TwistyTumble;
	paletteIndex += 1;
	#endregion
	
	#region Robo
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Robo_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Robo_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Robo_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncy][skinIndex][animIndex] = spr_Bouncy_Robo_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncy][skinIndex][paletteIndex] = spr_Bouncy_Robo_Palette_MechanicalGray;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
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
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.searches][skinIndex][animIndex] = spr_Searches_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.searches][skinIndex][animIndex] = spr_Searches_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.searches][skinIndex][animIndex] = spr_Searches_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.searches][skinIndex][paletteIndex] = spr_Searches_Normal_Palette_BombshellGray;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Wapod
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Wapod.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Wapod.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWapodUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL3;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.wapod;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.wapod][skinIndex][animIndex] = spr_Wapod_Normal_Pot;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wapod][skinIndex][animIndex] = spr_Wapod_Normal_Spawn;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wapod][skinIndex][animIndex] = spr_Wapod_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wapod][skinIndex][animIndex] = spr_Wapod_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.wapod][skinIndex][paletteIndex] = spr_Wapod_Normal_Palette_PhantomPastel;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wapod][skinIndex][paletteIndex] = spr_Wapod_Normal_Palette_ExtraFlux;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Cappy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Cappy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Cappy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesCappyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.cappy;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Normal_IdleL;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Normal_IdleR;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Normal_ShroomIdle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Normal_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Normal_Shroom;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Normal_Palette_RedCap;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Normal_Palette_GreenCap;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Normal_Palette_Lilac;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Normal_Palette_Shadow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Normal_Palette_Gold;
	paletteIndex += 1;
	#endregion
	
	#region Robo
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Robo_IdleL;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Robo_IdleR;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Robo_ShroomIdle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Robo_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cappy][skinIndex][animIndex] = spr_Cappy_Robo_Shroom;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.cappy][skinIndex][paletteIndex] = spr_Cappy_Robo_Palette_MechanicalHop;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Broom Hatter
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Broom Hatter.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Broom Hatter.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBroomHatterUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.broomHatter;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.broomHatter][skinIndex][animIndex] = spr_BroomHatter_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.broomHatter][skinIndex][animIndex] = spr_BroomHatter_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.broomHatter][skinIndex][animIndex] = spr_BroomHatter_Normal_Inhale;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.broomHatter][skinIndex][animIndex] = spr_BroomHatter_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.broomHatter][skinIndex][paletteIndex] = spr_BroomHatter_Normal_Palette_YellowBroom;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Coconut
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Coconut.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Coconut.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesCoconutUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.coconut;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.coconut][skinIndex][animIndex] = spr_Coconut_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.coconut][skinIndex][paletteIndex] = spr_Coconut_Normal_Palette_TropicalBrown;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Noddy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Noddy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Noddy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesNoddyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Sleep;
	bestiaryArray[# i,9] = bestiaryEnemies.noddy;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.noddy][skinIndex][animIndex] = spr_Noddy_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.noddy][skinIndex][animIndex] = spr_Noddy_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.noddy][skinIndex][animIndex] = spr_Noddy_Normal_Sleep;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.noddy][skinIndex][animIndex] = spr_Noddy_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.noddy][skinIndex][paletteIndex] = spr_Noddy_Normal_Palette_SleepyPink;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Blado
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Blado.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Blado.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBladoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_CC;
	bestiaryArray[# i,6] = 4;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.blado;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.blado][skinIndex][animIndex] = spr_Blado_Normal_Idle;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.blado][skinIndex][paletteIndex] = spr_Blado_Normal_Palette_BrownBlades;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Scarfy
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Scarfy.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Scarfy.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesScarfyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Crash;
	bestiaryArray[# i,9] = bestiaryEnemies.scarfy;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.scarfy][skinIndex][animIndex] = spr_Scarfy_Normal_CalmIdle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.scarfy][skinIndex][animIndex] = spr_Scarfy_Normal_CalmFly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.scarfy][skinIndex][animIndex] = spr_Scarfy_Normal_CalmHurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.scarfy][skinIndex][animIndex] = spr_Scarfy_Normal_MadFly;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.scarfy][skinIndex][animIndex] = spr_Scarfy_Normal_MadHurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.scarfy][skinIndex][paletteIndex] = spr_Scarfy_Normal_Palette_DeadlyOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.scarfy][skinIndex][paletteIndex] = spr_Scarfy_Normal_Palette_KeyGuard;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Rocky
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Rocky.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Rocky.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesRockyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.rocky;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_Normal_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_Normal_HurtAir;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.rocky][skinIndex][paletteIndex] = spr_Rocky_Normal_Palette_BrownRock;
	paletteIndex += 1;
	#endregion
	
	#region KSSU
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_KSSU_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_KSSU_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_KSSU_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_KSSU_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.rocky][skinIndex][animIndex] = spr_Rocky_KSSU_HurtAir;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.rocky][skinIndex][paletteIndex] = spr_Rocky_KSSU_Palette_BlueRock;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.rocky][skinIndex][paletteIndex] = spr_Rocky_KSSU_Palette_WetCement;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Grizzo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Grizzo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Grizzo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesGrizzoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.grizzo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.grizzo][skinIndex][animIndex] = spr_Grizzo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.grizzo][skinIndex][animIndex] = spr_Grizzo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.grizzo][skinIndex][animIndex] = spr_Grizzo_Normal_Dash;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.grizzo][skinIndex][animIndex] = spr_Grizzo_Normal_Sleep;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.grizzo][skinIndex][animIndex] = spr_Grizzo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_TanBear;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Tiger;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Suplex;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Polar;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Apple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Ocra;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Molten;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.grizzo][skinIndex][paletteIndex] = spr_Grizzo_Normal_Palette_Zombie;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Jungle Bomb
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Jungle Bomb.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Jungle Bomb.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesJungleBombUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 3;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.jungleBomb;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jungleBomb][skinIndex][animIndex] = spr_JungleBomb_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.jungleBomb][skinIndex][paletteIndex] = spr_JungleBomb_Normal_Palette_Pineapple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.jungleBomb][skinIndex][paletteIndex] = spr_JungleBomb_Normal_Palette_Strawberry;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Glunk
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Glunk.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Glunk.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesGlunkUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.glunk;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.glunk][skinIndex][animIndex] = spr_Glunk_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.glunk][skinIndex][animIndex] = spr_Glunk_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.glunk][skinIndex][paletteIndex] = spr_Glunk_Normal_Palette_Melon;
	paletteIndex += 1;
	#endregion
	
	#region Glunker
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.glunk][skinIndex][animIndex] = spr_Glunk_Glunker_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.glunk][skinIndex][animIndex] = spr_Glunk_Glunker_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.glunk][skinIndex][paletteIndex] = spr_Glunk_Glunker_Palette_WaterBoogie;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Kabu
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Kabu.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Kabu.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesKabuUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.kabu;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.kabu][skinIndex][animIndex] = spr_Kabu_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.kabu][skinIndex][animIndex] = spr_Kabu_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.kabu][skinIndex][animIndex] = spr_Kabu_Normal_Run;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.kabu][skinIndex][animIndex] = spr_Kabu_Normal_Duck;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.kabu][skinIndex][paletteIndex] = spr_Kabu_Normal_Palette_StoneYellow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.kabu][skinIndex][paletteIndex] = spr_Kabu_Normal_Palette_Ivory;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.kabu][skinIndex][paletteIndex] = spr_Kabu_Normal_Palette_Stonecold;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.kabu][skinIndex][paletteIndex] = spr_Kabu_Normal_Palette_Lilac;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.kabu][skinIndex][paletteIndex] = spr_Kabu_Normal_Palette_Zombie;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Burning Leo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Burning Leo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Burning Leo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBurningLeoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Fire;
	bestiaryArray[# i,9] = bestiaryEnemies.burningLeo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.burningLeo][skinIndex][animIndex] = spr_BurningLeo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_FlamingRed;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Ogre;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Metal;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Ivory;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Emeraldflame;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Blueflame;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.burningLeo][skinIndex][paletteIndex] = spr_BurningLeo_Normal_Palette_Shadowflame;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Tomatoo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Tomatoo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Tomatoo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesTomatooUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.tomatoo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_HeavyDuck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.tomatoo][skinIndex][animIndex] = spr_Tomatoo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.tomatoo][skinIndex][paletteIndex] = spr_Tomatoo_Normal_Palette_RedTomato;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.tomatoo][skinIndex][paletteIndex] = spr_Tomatoo_Normal_Palette_RipeTomato;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Onion
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Onion.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Onion.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesOnionUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.onion;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.onion][skinIndex][animIndex] = spr_Onion_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.onion][skinIndex][animIndex] = spr_Onion_Normal_Throw;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_OrangeCarrot;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_BrightOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_DarkOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_LightOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_PaleOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_SaturatedOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_BloodCarrot;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_ChilliPepper;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_DarkPlum;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_GoldenCarrot;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_LightOnion;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_NeonShroom;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.onion][skinIndex][paletteIndex] = spr_Onion_Normal_Palette_RottenOnion;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Anemonee
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Anemonee.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Anemonee.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesAnemoneeUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_EY;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.anemonee;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.anemonee][skinIndex][animIndex] = spr_Anemonee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.anemonee][skinIndex][animIndex] = spr_Anemonee_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.anemonee][skinIndex][paletteIndex] = spr_Anemonee_Normal_Palette_VioletYarn;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Poppy Bros Jr
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Poppy Bros Jr.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Poppy Bros Jr.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesPoppyBrosJrUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Bomb;
	bestiaryArray[# i,9] = bestiaryEnemies.poppyBrosJr;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.poppyBrosJr][skinIndex][animIndex] = spr_PoppyBrosJr_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.poppyBrosJr][skinIndex][animIndex] = spr_PoppyBrosJr_Normal_ThrowReady;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.poppyBrosJr][skinIndex][animIndex] = spr_PoppyBrosJr_Normal_Throw;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.poppyBrosJr][skinIndex][animIndex] = spr_PoppyBrosJr_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_BlueBomber;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_FancyYellow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_Shadow;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_Candy;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_Rose;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_PaleRedShoes;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.poppyBrosJr][skinIndex][paletteIndex] = spr_PoppyBrosJr_Normal_Palette_PaleGreenShoes;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Bobo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Bobo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Bobo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBoboUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL3;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Fire;
	bestiaryArray[# i,9] = bestiaryEnemies.bobo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	//HAS A SPECIAL CASE
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bobo][skinIndex][animIndex] = spr_Bobo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bobo][skinIndex][animIndex] = spr_Bobo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bobo][skinIndex][animIndex] = spr_Bobo_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bobo][skinIndex][animIndex] = spr_Bobo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bobo][skinIndex][paletteIndex] = spr_Bobo_Normal_Palette_FunnyFlame;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Foley
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Foley.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Foley.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesFoleyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_AM;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Bomb;
	bestiaryArray[# i,9] = bestiaryEnemies.foley;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Idle_ExplodeReady;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Idle_Explode;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Walk_ExplodeReady;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Walk_Explode;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Hurt_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Hurt_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.foley][skinIndex][animIndex] = spr_Foley_Normal_Leaf;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.foley][skinIndex][paletteIndex] = spr_Foley_Normal_Palette_ExplosiveCream;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.foley][skinIndex][paletteIndex] = spr_Foley_Normal_Palette_CascadeViolet;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Nidoo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Nidoo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Nidoo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesNidooUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL3;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.nidoo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.nidoo][skinIndex][animIndex] = spr_Nidoo_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.nidoo][skinIndex][animIndex] = spr_Nidoo_Normal_Shake;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.nidoo][skinIndex][animIndex] = spr_Nidoo_Normal_Release;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.nidoo][skinIndex][paletteIndex] = spr_Nidoo_Normal_Palette_ShadowGate;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Como
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Como.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Como.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesComoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL3;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.como;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.como][skinIndex][animIndex] = spr_Como_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.como][skinIndex][animIndex] = spr_Como_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.como][skinIndex][animIndex] = spr_Como_Normal_Hurt1;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.como][skinIndex][animIndex] = spr_Como_Normal_Hurt2;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.como][skinIndex][paletteIndex] = spr_Como_Normal_Palette_SpiderGold;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Cairn
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Cairn.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Cairn.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesCairnUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_64;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Stone;
	bestiaryArray[# i,9] = bestiaryEnemies.cairn;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.cairn][skinIndex][animIndex] = spr_Cairn_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cairn][skinIndex][animIndex] = spr_Cairn_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.cairn][skinIndex][paletteIndex] = spr_Cairn_Normal_Palette_HeavyRock;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.cairn][skinIndex][paletteIndex] = spr_Cairn_Normal_Palette_TropicalPebbles;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Bomber
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Bomber.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Bomber.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBomberUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 3;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Crash;
	bestiaryArray[# i,9] = bestiaryEnemies.bomber;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bomber][skinIndex][animIndex] = spr_Bomber_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bomber][skinIndex][animIndex] = spr_Bomber_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bomber][skinIndex][animIndex] = spr_Bomber_Normal_Teeter;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bomber][skinIndex][animIndex] = spr_Bomber_Normal_Explode;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bomber][skinIndex][animIndex] = spr_Bomber_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bomber][skinIndex][paletteIndex] = spr_Bomber_Normal_Palette_ExplodingSkull;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Simirror
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Simirror.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Simirror.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesSimirrorUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Mirror;
	bestiaryArray[# i,9] = bestiaryEnemies.simirror;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.simirror][skinIndex][animIndex] = spr_Simirror_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.simirror][skinIndex][animIndex] = spr_Simirror_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.simirror][skinIndex][animIndex] = spr_Simirror_Normal_Clone;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.simirror][skinIndex][animIndex] = spr_Simirror_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.simirror][skinIndex][paletteIndex] = spr_Simirror_Normal_Palette_MagicalOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.simirror][skinIndex][paletteIndex] = spr_Simirror_Normal_Palette_SimilarGreen;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Gim
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Gim.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Gim.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesGimUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Yoyo;
	bestiaryArray[# i,9] = bestiaryEnemies.gim;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Fall;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Prep;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.gim][skinIndex][animIndex] = spr_Gim_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.gim][skinIndex][paletteIndex] = spr_Gim_Normal_Palette_SpinningBrown;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gim][skinIndex][paletteIndex] = spr_Gim_Normal_Palette_YoyoRobo;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gim][skinIndex][paletteIndex] = spr_Gim_Normal_Palette_BotBlur;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.gim][skinIndex][paletteIndex] = spr_Gim_Normal_Palette_RedCap;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Hothead
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Hothead.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Hothead.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesHotheadUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Fire;
	bestiaryArray[# i,9] = bestiaryEnemies.hothead;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_HurtGround;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.hothead][skinIndex][animIndex] = spr_Hothead_Normal_HurtAir;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.hothead][skinIndex][paletteIndex] = spr_Hothead_Normal_Palette_DefaultFlames;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.hothead][skinIndex][paletteIndex] = spr_Hothead_Normal_Palette_WhispersOfTheMoon;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.hothead][skinIndex][paletteIndex] = spr_Hothead_Normal_Palette_RetroRed;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.hothead][skinIndex][paletteIndex] = spr_Hothead_Normal_Palette_BrownFlare;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Sparky
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Sparky.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Sparky.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesSparkyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Spark;
	bestiaryArray[# i,9] = bestiaryEnemies.sparky;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.sparky][skinIndex][animIndex] = spr_Sparky_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.sparky][skinIndex][paletteIndex] = spr_Sparky_Normal_Palette_LightningLime;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Yolky
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Yolky.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Yolky.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesYolkyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.yolky;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.yolky][skinIndex][animIndex] = spr_Yolky_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.yolky][skinIndex][animIndex] = spr_Yolky_Normal_Shoot;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.yolky][skinIndex][paletteIndex] = spr_Yolky_Normal_Palette_SunnySideUp;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.yolky][skinIndex][paletteIndex] = spr_Yolky_Normal_Palette_Aged;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.yolky][skinIndex][paletteIndex] = spr_Yolky_Normal_Palette_PinkSliced;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.yolky][skinIndex][paletteIndex] = spr_Yolky_Normal_Palette_CenturyEgg;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Wheelie
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Wheelie.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Wheelie.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWheelieUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Wheel;
	bestiaryArray[# i,9] = bestiaryEnemies.wheelie;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_Normal_Decel1;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_Normal_Decel2;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.wheelie][skinIndex][paletteIndex] = spr_Wheelie_Normal_Palette_Turbo;
	paletteIndex += 1;
	#endregion
	
	#region KSSU
	skinIndex += 1;
	
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_KSSU_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_KSSU_Decel1;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_KSSU_Decel2;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wheelie][skinIndex][animIndex] = spr_Wheelie_KSSU_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.wheelie][skinIndex][paletteIndex] = spr_Wheelie_KSSU_Palette_CarbonTire;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wheelie][skinIndex][paletteIndex] = spr_Wheelie_KSSU_Palette_RedEye;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wheelie][skinIndex][paletteIndex] = spr_Wheelie_KSSU_Palette_Nuclear;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Pacloud
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Pacloud.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Pacloud.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesPacloudUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_RtDL;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.pacloud;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_OpenMouth;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_CloseMouth;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_Chew;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_HurtNormal;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.pacloud][skinIndex][animIndex] = spr_Pacloud_Normal_HurtChew;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.pacloud][skinIndex][paletteIndex] = spr_Pacloud_Normal_Palette_PuffyCloud;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Laser Ball
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Laser Ball.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Laser Ball.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesLaserBallUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Beam;
	bestiaryArray[# i,9] = bestiaryEnemies.laserBall;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.laserBall][skinIndex][animIndex] = spr_LaserBall_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.laserBall][skinIndex][animIndex] = spr_LaserBall_Normal_Face;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.laserBall][skinIndex][animIndex] = spr_LaserBall_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.laserBall][skinIndex][animIndex] = spr_LaserBall_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.laserBall][skinIndex][paletteIndex] = spr_LaserBall_Normal_Palette_OrangeLaser;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Jackle
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Jackle.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Jackle.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesJackleUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_RtDL;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Cutter;
	bestiaryArray[# i,9] = bestiaryEnemies.jackle;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.jackle][skinIndex][animIndex] = spr_Jackle_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jackle][skinIndex][animIndex] = spr_Jackle_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jackle][skinIndex][animIndex] = spr_Jackle_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jackle][skinIndex][animIndex] = spr_Jackle_Normal_Reload;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.jackle][skinIndex][animIndex] = spr_Jackle_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.jackle][skinIndex][paletteIndex] = spr_Jackle_Normal_Palette_SpinningCutter;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Kookler
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Kookler.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Kookler.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesKooklerUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.kookler;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.kookler][skinIndex][animIndex] = spr_Kookler_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.kookler][skinIndex][animIndex] = spr_Kookler_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.kookler][skinIndex][paletteIndex] = spr_Kookler_Normal_Palette_BlueSpin;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.kookler][skinIndex][paletteIndex] = spr_Kookler_Normal_Palette_PinkWhiskers;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Ufo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Ufo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Ufo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesUfoUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.ufo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.ufo][skinIndex][animIndex] = spr_Ufo_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.ufo][skinIndex][animIndex] = spr_Ufo_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.ufo][skinIndex][animIndex] = spr_Ufo_Normal_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.ufo][skinIndex][animIndex] = spr_Ufo_Normal_Beam;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.ufo][skinIndex][paletteIndex] = spr_Ufo_Normal_Palette_Unearthly;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Bouncy Sis
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Bouncy Sis.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Bouncy Sis.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesBouncySisUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_RtDL;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.bouncySis;
	bestiaryArray[# i,10] = 1;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.bouncySis][skinIndex][animIndex] = spr_BouncySis_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncySis][skinIndex][animIndex] = spr_BouncySis_Normal_Jump;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncySis][skinIndex][animIndex] = spr_BouncySis_Normal_Duck;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.bouncySis][skinIndex][animIndex] = spr_BouncySis_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.bouncySis][skinIndex][paletteIndex] = spr_BouncySis_Normal_Palette_GiganticPink;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Flamer
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Flamer.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Flamer.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesFlamerUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.flamer;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.flamer][skinIndex][animIndex] = spr_Flamer_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.flamer][skinIndex][animIndex] = spr_Flamer_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.flamer][skinIndex][animIndex] = spr_Flamer_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.flamer][skinIndex][animIndex] = spr_Flamer_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.flamer][skinIndex][paletteIndex] = spr_Flamer_Normal_Palette_FieryRed;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.flamer][skinIndex][paletteIndex] = spr_Flamer_Normal_Palette_BabyBlue;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.flamer][skinIndex][paletteIndex] = spr_Flamer_Normal_Palette_HauntingPurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.flamer][skinIndex][paletteIndex] = spr_Flamer_Normal_Palette_MintLeaf;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Chuckie
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Chuckie.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Chuckie.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesChuckieUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.chuckie;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	//HAS A SPECIAL CASE
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Box;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Box_Open;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Box_Close;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Box_Dead;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.chuckie][skinIndex][animIndex] = spr_Chuckie_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.chuckie][skinIndex][paletteIndex] = spr_Chuckie_Normal_Palette_BlueSphere;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Walky
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Walky.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Walky.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWalkyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_Adventure;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Mic;
	bestiaryArray[# i,9] = bestiaryEnemies.walky;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.walky][skinIndex][animIndex] = spr_Walky_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.walky][skinIndex][animIndex] = spr_Walky_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.walky][skinIndex][animIndex] = spr_Walky_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.walky][skinIndex][animIndex] = spr_Walky_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.walky][skinIndex][paletteIndex] = spr_Walky_Normal_Palette_MicCheck;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Mystic Block
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Mystic Block.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Mystic Block.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesMysticBlockUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_GGS;
	bestiaryArray[# i,6] = 3;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.mysticBlock;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_Firebar;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_Hurt;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_ToplessIdle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_ToplessReady;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_ToplessFirebar;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_ToplessAttack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mysticBlock][skinIndex][animIndex] = spr_MysticBlock_Normal_ToplessHurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.mysticBlock][skinIndex][paletteIndex] = spr_MysticBlock_Normal_Palette_MysticPurple;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Lovely
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Lovely.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Lovely.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesLovelyUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.lovely;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	//HAS A SPECIAL CASE
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.lovely][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.lovely][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.lovely][skinIndex][animIndex] = spr_WaddleDee_Normal_Run;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.lovely][skinIndex][paletteIndex] = spr_Lovely_Normal_Palette_BloomingFlower;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Plasma Wisp
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Plasma Wisp.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Plasma Wisp.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesPlasmaWispUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSS;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Spark;
	bestiaryArray[# i,9] = bestiaryEnemies.plasmaWisp;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_Charge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_Shoot;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_AttackBasic;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_AttackRecharge;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.plasmaWisp][skinIndex][animIndex] = spr_PlasmaWisp_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.plasmaWisp][skinIndex][paletteIndex] = spr_PlasmaWisp_Normal_Palette_Plasma;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Capsule J2
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Capsule J2.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Capsule J2.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesCapsuleJ2Unlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_KSSU;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Jet;
	bestiaryArray[# i,9] = bestiaryEnemies.capsuleJ2;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_DashStart;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_Hover1;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_Hover2;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_JetDash;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.capsuleJ2][skinIndex][animIndex] = spr_CapsuleJ2_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.capsuleJ2][skinIndex][paletteIndex] = spr_CapsuleJ2_Normal_Palette_SpeedDemon;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Cerulean
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Cerulean.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Cerulean.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesCeruleanUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_RtDL;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.cerulean;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.cerulean][skinIndex][animIndex] = spr_Cerulean_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cerulean][skinIndex][animIndex] = spr_Cerulean_Normal_AttackReady;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cerulean][skinIndex][animIndex] = spr_Cerulean_Normal_AttackRelease;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.cerulean][skinIndex][animIndex] = spr_Cerulean_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.cerulean][skinIndex][paletteIndex] = spr_Cerulean_Normal_Palette_GreenBean;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Wizzer
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Wizzer.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Wizzer.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesWizzerUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL1;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Beam;
	bestiaryArray[# i,9] = bestiaryEnemies.wizzer;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_Open;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_Close;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_Ready;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_Attack;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_HurtNormal;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.wizzer][skinIndex][animIndex] = spr_Wizzer_Normal_HurtInhale;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_NavyShell;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_SeaweedGreen;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_TropicOrange;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_MermaidPink;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_DeepPurple;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.wizzer][skinIndex][paletteIndex] = spr_Wizzer_Normal_Palette_SweetCream;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Mopoo
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Mopoo.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Mopoo.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesMopooUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_DL3;
	bestiaryArray[# i,6] = 1;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Helper;
	bestiaryArray[# i,9] = bestiaryEnemies.mopoo;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	//HAS A SPECIAL CASE
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.mopoo][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mopoo][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.mopoo][skinIndex][animIndex] = spr_Mopoo_Normal_Hurt;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.mopoo][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mopoo][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_BlueberryPie;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.mopoo][skinIndex][paletteIndex] = spr_WaddleDee_Normal_Palette_SeenAGhost;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	#region Golem
	bestiaryArray[# i,0] = i + 1;
	bestiaryArray[# i,1] = string_lower(str("Enemies.Golem.Title"));
	bestiaryArray[# i,2] = string_lower(str("Enemies.Golem.Description"));
	bestiaryArray[# i,3] = global.bestiaryEnemiesGolemUnlocked;
	bestiaryArray[# i,4] = "";
	bestiaryArray[# i,5] = spr_Menu_Collection_Bestiary_GameIcon_AM;
	bestiaryArray[# i,6] = 2;
	bestiaryArray[# i,7] = spr_Hud_Dialogue_Background_OrangeCheckerboard;
	bestiaryArray[# i,8] = spr_Hud_Icon_Stone;
	bestiaryArray[# i,9] = bestiaryEnemies.golem;
	bestiaryArray[# i,10] = 2;
	
	#region Cosmetics & Animations
	skinIndex = 0;
	#region Normal
	//HAS A SPECIAL CASE
	animIndex = 0;
	bestiaryAnimationsArray[bestiaryEnemies.golem][skinIndex][animIndex] = spr_WaddleDee_Normal_Idle;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.golem][skinIndex][animIndex] = spr_WaddleDee_Normal_Walk;
	animIndex += 1;
	bestiaryAnimationsArray[bestiaryEnemies.golem][skinIndex][animIndex] = spr_WaddleDee_Normal_Run;
	animIndex += 1;
	
	paletteIndex = 0;
	bestiaryCosmeticsArray[bestiaryEnemies.golem][skinIndex][paletteIndex] = spr_Golem_Normal_Palette_BrownRock;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.golem][skinIndex][paletteIndex] = spr_Golem_Normal_Palette_YolkMarble;
	paletteIndex += 1;
	bestiaryCosmeticsArray[bestiaryEnemies.golem][skinIndex][paletteIndex] = spr_Golem_Normal_Palette_FighterGreen;
	paletteIndex += 1;
	#endregion
	#endregion
	
	bestiaryArray[# i,11] = skinIndex;
	i += 1;
	#endregion
	
	bestiaryMax = i;
	pageMax = floor(bestiaryMax / 12);
	if ((bestiaryMax % 12) == 0) pageMax -= 1;
}