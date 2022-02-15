///@description Main

//Move Snap

if (!keyboard_check(vk_shift)) move_snap(6,6);

//Visible

if (mouse_check_button_pressed(mb_middle))
{
	if (visible)
	{
		visible = false;
	}
	else
	{
		visible = true;
	}
}

//Change Room

if (keyboard_check_pressed(vk_multiply)) room_restart();
if ((room != room_last) and (keyboard_check_pressed(vk_subtract))) room_goto_next();
if ((room != room_first) and (keyboard_check_pressed(vk_divide))) room_goto_previous();
if (keyboard_check_pressed(vk_add)) game_restart();

//Change Ability

if (instance_exists(obj_Player))
{
	if (obj_Player.state != playerStates.swallow)
	{
		if (keyboard_check(vk_alt))
		{
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.hammer;
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.bell;
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.water;
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.sleep;
			}
			if (keyboard_check_pressed(ord("5")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.scan;
			}
			if (keyboard_check_pressed(ord("6")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.crash;
			}
			if (keyboard_check_pressed(ord("7")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.mic;
			}
			if (keyboard_check_pressed(ord("8")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.chef;
			}
			if (keyboard_check_pressed(ord("9")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.ultraSword;
			}
		}
		else if (keyboard_check(vk_shift))
		{
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.spark;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.gamble;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = false;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.yoyo;
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.wheel;
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.artist;
			}
			if (keyboard_check_pressed(ord("5")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.fighter;
			}
			if (keyboard_check_pressed(ord("6")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.suplex;
			}
			if (keyboard_check_pressed(ord("7")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.wing;
			}
			if (keyboard_check_pressed(ord("8")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.jet;
			}
			if (keyboard_check_pressed(ord("9")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.sword;
			}
			if (keyboard_check_pressed(ord("0")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.parasol;
			}
		}
		else
		{
			if (keyboard_check_pressed(ord("0")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.none;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.kirby;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = false;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.cutter;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.waddleDee;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.beam;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.waddleDoo;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
				if (keyboard_check(vk_tab))
				{
					global.abilityP1 = playerAbilities.mysticBeam;
				}
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.stone;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.brontoBurt;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.ufo;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.twizzy;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("5")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.mirror;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.tookey;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("6")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.ninja;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.sirKibble;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("7")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.bomb;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.bouncy;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("8")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.fire;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.gordo;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
				if (keyboard_check(vk_tab))
				{
					global.abilityP1 = playerAbilities.mysticFire;
				}
			}
			if (keyboard_check_pressed(ord("9")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.ice;
				if (keyboard_check(vk_control))
				{
					global.characterP1 = playerCharacters.bloodGordo;
					global.abilityP1 = playerAbilities.none;
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
		}
	}
}

//Set Pause

if (keyboard_check_pressed(ord("H")))
{
	if (global.pause)
	{
		global.pause = false;
	}
	else
	{
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
	}
}

//Set Cutscene

if (keyboard_check_pressed(ord("J")))
{
	if (global.cutscene)
	{
		global.cutscene = false;
	}
	else
	{
		global.cutscene = true;
	}
}

//Zoom

if (instance_exists(obj_Camera))
{
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("P"))))
	{
		obj_Camera.zoom += .02;
		obj_Camera.zoomTarget += .02;
	}
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("L"))))
	{
		obj_Camera.zoom -= .02;
		obj_Camera.zoomTarget -= .02;
	}
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("O"))))
	{
		obj_Camera.zoom = 1;
		obj_Camera.zoomTarget = 1;
	}
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("K"))))
	{
		obj_Camera.zoom = 2;
		obj_Camera.zoomTarget = 2;
	}
}

//Room Speed

if ((room_speed > 10) and (keyboard_check_pressed(ord("T")))) room_speed -= 10;
if (keyboard_check_pressed(ord("Y"))) room_speed = 60;
if (keyboard_check_pressed(ord("U"))) room_speed += 10;

//Selected

if ((keyboard_check_pressed(vk_numpad8)) or (mouse_wheel_up()))
{
	debugSelected += 1;
	debugPaletteNumber = 0;
	debugStateSelected = 0;
	debugSpriteSelected = 0;
}
if ((keyboard_check_pressed(vk_numpad2)) or (mouse_wheel_down()))
{
	debugSelected -= 1;
	debugPaletteNumber = 0;
	debugStateSelected = 0;
	debugSpriteSelected = 0;
}

if (debugPaletteNumber < 0) debugPaletteNumber += (debugPaletteNumberMax + 1);
if (debugPaletteNumber > debugPaletteNumberMax) debugPaletteNumber -= (debugPaletteNumberMax + 1);

if (debugSelected < 0) debugSelected += (debugSelectedMax + 1);
if (debugSelected > debugSelectedMax) debugSelected -= (debugSelectedMax + 1);

if ((visible) and (!position_meeting(mouse_x,mouse_y,obj_Menu_Button)))
{
	switch (debugSelected)
	{
		//Wall
	
		case 0:
		debugIndex = debugSpriteSelected;
		debugStateSelectedMax = 1;
	
		//Normal
	
		if (debugStateSelected == 0)
		{
			debugSprite = spr_DebugWall;
			debugSpriteSelectedMax = 17;
			if (mouse_check_button_pressed(mb_left))
			{
				var debugObj = instance_create_layer(x,y,"Collision",obj_Wall);
				debugObj.visible = true;
				debugObj.sprite_index = spr_DebugWall;
				debugObj.image_index = debugSpriteSelected;
				debugObj.image_xscale = debugXScale;
				debugObj.image_yscale = debugYScale;
			}
		}
	
		if (debugStateSelected == 1)
		{
			debugSprite = spr_DebugSlope;
			debugSpriteSelectedMax = 17;
			if (mouse_check_button_pressed(mb_left))
			{
				var debugObj = instance_create_layer(x,y,"Collision",obj_Wall);
				debugObj.visible = true;
				debugObj.slope = true;
				debugObj.hasTop = false;
				debugObj.sprite_index = spr_DebugSlope;
				debugObj.mask_index = spr_DebugSlopeMask;
				debugObj.image_index = debugSpriteSelected;
				debugObj.image_xscale = debugXScale;
				debugObj.image_yscale = debugYScale;
			}
		}
		break;
	
		//Platform
	
		case 1:
		debugSprite = spr_Platform;
		debugSpriteSelectedMax = 17;
		debugIndex = debugSpriteSelected;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Collision",obj_Platform);
			debugObj.visible = true;
			debugObj.sprite_index = spr_Platform;
			debugObj.index = debugSpriteSelected;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Ladder
	
		case 2:
		debugSprite = spr_Ladder;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Collision",obj_Ladder);
			debugObj.visible = true;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Star Block
	
		case 3:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_StarBlock_Normal_Idle;
			var topWallSprite = spr_StarBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_StarBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Big Star Block
	
		case 4:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BigStarBlock_Normal_Idle;
			var topWallSprite = spr_BigStarBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BigStarBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Durable Block
	
		case 5:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_DurableBlock_Normal_Idle;
			var topWallSprite = spr_DurableBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_DurableBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Crate
	
		case 6:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Crate_Normal_Idle;
			var topWallSprite = spr_Crate_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Crate);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Breaking Wall
	
		case 7:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BreakingWall_Normal_Idle;
			var topWallSprite = spr_BreakingWall_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BreakingWall);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Bomb Block
	
		case 8:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BombBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BombBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Bomb Solid Block
	
		case 9:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BombSolidBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BombSolidBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Bomb Solid Block Invis
	
		case 10:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BombSolidBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BombSolidBlock_Invis);
			debugObj.visible = true;
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Waddle Block
	
		case 11:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_WaddleBlock_Normal_Idle;
			var topWallSprite = spr_WaddleBlock_Normal_Top;
			break;
		
			//Fire
		
			case 1:
			var sprIdle = spr_WaddleBlock_Fire_Idle;
			var topWallSprite = spr_WaddleBlock_Fire_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_WaddleBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Bumper
	
		case 12:
		debugSpriteSelectedMax = 2;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Bumper_Normal;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Bumper);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Spring
	
		case 13:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Spring_Normal;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Spring);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Trampoline
	
		case 14:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Trampoline_Normal;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Trampoline);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Spike
	
		case 15:
		debugSprite = spr_Spike;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Spike);
			debugObj.visible = true;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Point Star
	
		case 16:
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		switch (debugStateSelected)
		{
			//Yellow
		
			case 0:
			debugSprite = spr_PointStar_Yellow_Idle;
			var pointStarPoints = 1;
			break;
		
			//Green
		
			case 1:
			debugSprite = spr_PointStar_Green_Idle;
			var pointStarPoints = 5;
			break;
		
			//Red
		
			case 2:
			debugSprite = spr_PointStar_Red_Idle;
			var pointStarPoints = 10;
			break;
		
			//Blue
		
			case 3:
			debugSprite = spr_PointStar_Blue_Idle;
			var pointStarPoints = 25;
			break;
		}
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_PointStar);
			debugObj.sprite_index = debugSprite;
			debugObj.pointStarPoints = pointStarPoints;
			debugObj.character = debugStateSelected;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Ability Trophy
	
		case 17:
		debugStateSelectedMax = 13;
		switch (debugStateSelected)
		{
			//Cutter
		
			case 1:
			debugSprite = spr_AbilityStar_Cutter;
			var ability = playerAbilities.cutter;
			break;
		
			//Beam
		
			case 2:
			debugSprite = spr_AbilityStar_Beam;
			var ability = playerAbilities.beam;
			break;
		
			//Stone
		
			case 3:
			debugSprite = spr_AbilityStar_Stone;
			var ability = playerAbilities.stone;
			break;
		
			//Ufo
		
			case 4:
			debugSprite = spr_AbilityStar_Ufo;
			var ability = playerAbilities.ufo;
			break;
		
			//Mirror
		
			case 5:
			debugSprite = spr_AbilityStar_Mirror;
			var ability = playerAbilities.mirror;
			break;
		
			//Ninja
		
			case 6:
			debugSprite = spr_AbilityStar_Ninja;
			var ability = playerAbilities.ninja;
			break;
		
			//Bomb
		
			case 7:
			debugSprite = spr_AbilityStar_Bomb;
			var ability = playerAbilities.bomb;
			break;
		
			//Fire
		
			case 8:
			debugSprite = spr_AbilityStar_Fire;
			var ability = playerAbilities.fire;
			break;
		
			//Ice
		
			case 9:
			debugSprite = spr_AbilityStar_Ice;
			var ability = playerAbilities.ice;
			break;
		
			//Spark
		
			case 10:
			debugSprite = spr_AbilityStar_Spark;
			var ability = playerAbilities.spark;
			break;
		
			//Yoyo
		
			case 11:
			debugSprite = spr_AbilityStar_Yoyo;
			var ability = playerAbilities.yoyo;
			break;
		
			//Wheel
		
			case 12:
			debugSprite = spr_AbilityStar_Wheel;
			var ability = playerAbilities.wheel;
			break;
		
			//Artist
		
			case 13:
			debugSprite = spr_AbilityStar_Artist;
			var ability = playerAbilities.artist;
			break;
		
			//Fighter
		
			case 14:
			debugSprite = spr_AbilityStar_Fighter;
			var ability = playerAbilities.fighter;
			break;
		
			//Suplex
		
			case 15:
			debugSprite = spr_AbilityStar_Suplex;
			var ability = playerAbilities.suplex;
			break;
		
			//Wing
		
			case 16:
			debugSprite = spr_AbilityStar_Wing;
			var ability = playerAbilities.wing;
			break;
		
			//Jet
		
			case 17:
			debugSprite = spr_AbilityStar_Jet;
			var ability = playerAbilities.jet;
			break;
		
			//Sword
		
			case 18:
			debugSprite = spr_AbilityStar_Sword;
			var ability = playerAbilities.sword;
			break;
		
			//Parasol
		
			case 19:
			debugSprite = spr_AbilityStar_Parasol;
			var ability = playerAbilities.parasol;
			break;
		
			//Hammer
		
			case 20:
			debugSprite = spr_AbilityStar_Hammer;
			var ability = playerAbilities.hammer;
			break;
		
			//Bell
		
			case 21:
			debugSprite = spr_AbilityStar_Bell;
			var ability = playerAbilities.bell;
			break;
		
			//Water
		
			case 22:
			debugSprite = spr_AbilityStar_Water;
			var ability = playerAbilities.water;
			break;
		
			//Normal
		
			default:
			debugSprite = spr_AbilityStar_Normal;
			var ability = playerAbilities.none;
			break;
		}
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_AbilityTrophy);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.sprItem = debugSprite;
			debugObj.ability = ability;
		}
		break;
	
		//Food
	
		case 18:
		debugSprite = spr_Food;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Food);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Item Chest
	
		case 19:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprChestClosed = spr_ItemChest_Normal_Closed;
			var sprChestOpen = spr_ItemChest_Normal_Open;
			break;
		}
		debugSprite = sprChestClosed;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_ItemChest);
			debugObj.character = debugSpriteSelected;
			debugObj.sprChestClosed = sprChestClosed;
			debugObj.sprChestOpen = sprChestOpen;
			debugObj.sprite_index = sprChestClosed;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Item Chest
	
		case 20:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_CuttableGrass_Normal_Idle;
			var sprTop = spr_CuttableGrass_Normal_Top;
			var sprBottom = spr_CuttableGrass_Normal_Bottom;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_CuttableGrass);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprTop = sprTop;
			debugObj.sprBottom = sprBottom;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Pep Brew
	
		case 21:
		debugSprite = spr_PepBrew;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_PepBrew);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Maxim Tomato
	
		case 22:
		debugSprite = spr_MaximTomato;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_MaximTomato);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//1-Up
	
		case 23:
		debugSprite = spr_1Up;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_1Up);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Background Environment
	
		case 24:
		debugSpriteSelectedMax = 9;
		switch (debugSpriteSelected)
		{
			//Normal
			
			case 0:
			debugSprite = spr_Background_ColdOdysseyPlanets;
			break;
		}
		debugIndex = debugSpriteSelected;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Collision",obj_BackgroundEnvironment);
			debugObj.sprite_index = debugSprite;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Anti-Float Area
	
		case 25:
		debugSprite = spr_24Square_Mask;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_AntiFloat);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Ability Block
	
		case 26:
		debugSpriteSelectedMax = 22;
		switch (debugSpriteSelected)
		{
			case 0:
			var ability = damageTypes.none;
			sprIdle = spr_AbilityBlock_Normal_Idle;
			topWallSprite = spr_AbilityBlock_Normal_Top;
			break;
		
			//Cutter
		
			case 1:
			var ability = damageTypes.cutter;
			sprIdle = spr_AbilityBlock_Cutter_Idle;
			topWallSprite = spr_AbilityBlock_Cutter_Top;
			break;
		
			//Beam
		
			case 2:
			var ability = damageTypes.beam;
			sprIdle = spr_AbilityBlock_Beam_Idle;
			topWallSprite = spr_AbilityBlock_Beam_Top;
			break;
		
			//Stone
		
			case 3:
			var ability = damageTypes.stone;
			sprIdle = spr_AbilityBlock_Stone_Idle;
			topWallSprite = spr_AbilityBlock_Stone_Top;
			break;
		
			//Ufo
		
			case 4:
			var ability = damageTypes.ufo;
			sprIdle = spr_AbilityBlock_Ufo_Idle;
			topWallSprite = spr_AbilityBlock_Ufo_Top;
			break;
		
			//Mirror
		
			case 5:
			var ability = damageTypes.mirror;
			sprIdle = spr_AbilityBlock_Mirror_Idle;
			topWallSprite = spr_AbilityBlock_Mirror_Top;
			break;
		
			//Ninja
		
			case 6:
			var ability = damageTypes.ninja;
			sprIdle = spr_AbilityBlock_Ninja_Idle;
			topWallSprite = spr_AbilityBlock_Ninja_Top;
			break;
		
			//Bomb
		
			case 7:
			var ability = damageTypes.bomb;
			sprIdle = spr_AbilityBlock_Bomb_Idle;
			topWallSprite = spr_AbilityBlock_Bomb_Top;
			break;
		
			//Fire
		
			case 8:
			var ability = damageTypes.fire;
			sprIdle = spr_AbilityBlock_Fire_Idle;
			topWallSprite = spr_AbilityBlock_Fire_Top;
			break;
		
			//Ice
		
			case 9:
			var ability = damageTypes.ice;
			sprIdle = spr_AbilityBlock_Ice_Idle;
			topWallSprite = spr_AbilityBlock_Ice_Top;
			break;
		
			//Spark
		
			case 10:
			var ability = damageTypes.spark;
			sprIdle = spr_AbilityBlock_Spark_Idle;
			topWallSprite = spr_AbilityBlock_Spark_Top;
			break;
		
			//Yoyo
		
			case 11:
			var ability = damageTypes.yoyo;
			sprIdle = spr_AbilityBlock_Yoyo_Idle;
			topWallSprite = spr_AbilityBlock_Yoyo_Top;
			break;
		
			//Wheel
		
			case 12:
			var ability = damageTypes.wheel;
			sprIdle = spr_AbilityBlock_Wheel_Idle;
			topWallSprite = spr_AbilityBlock_Wheel_Top;
			break;
		
			//Artist
		
			case 13:
			var ability = damageTypes.artist;
			sprIdle = spr_AbilityBlock_Artist_Idle;
			topWallSprite = spr_AbilityBlock_Artist_Top;
			break;
		
			//Fighter
		
			case 14:
			var ability = damageTypes.fighter;
			sprIdle = spr_AbilityBlock_Fighter_Idle;
			topWallSprite = spr_AbilityBlock_Fighter_Top;
			break;
		
			//Suplex
		
			case 15:
			var ability = damageTypes.suplex;
			sprIdle = spr_AbilityBlock_Suplex_Idle;
			topWallSprite = spr_AbilityBlock_Suplex_Top;
			break;
		
			//Wing
		
			case 16:
			var ability = damageTypes.wing;
			sprIdle = spr_AbilityBlock_Wing_Idle;
			topWallSprite = spr_AbilityBlock_Wing_Top;
			break;
		
			//Jet
		
			case 17:
			var ability = damageTypes.jet;
			sprIdle = spr_AbilityBlock_Jet_Idle;
			topWallSprite = spr_AbilityBlock_Jet_Top;
			break;
		
			//Sword
		
			case 18:
			var ability = damageTypes.sword;
			sprIdle = spr_AbilityBlock_Sword_Idle;
			topWallSprite = spr_AbilityBlock_Sword_Top;
			break;
		
			//Parasol
		
			case 19:
			var ability = damageTypes.parasol;
			sprIdle = spr_AbilityBlock_Parasol_Idle;
			topWallSprite = spr_AbilityBlock_Parasol_Top;
			break;
		
			//Hammer
		
			case 20:
			var ability = damageTypes.hammer;
			sprIdle = spr_AbilityBlock_Hammer_Idle;
			topWallSprite = spr_AbilityBlock_Hammer_Top;
			break;
		
			//Bell
		
			case 21:
			var ability = damageTypes.bell;
			sprIdle = spr_AbilityBlock_Bell_Idle;
			topWallSprite = spr_AbilityBlock_Bell_Top;
			break;
		
			//Water
		
			case 22:
			var ability = damageTypes.water;
			sprIdle = spr_AbilityBlock_Water_Idle;
			topWallSprite = spr_AbilityBlock_Water_Top;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_AbilityBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.damageType = ability;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
	
		//Waddle Dee
	
		case 27:
		debugSpriteSelectedMax = 3;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_WaddleDee_Normal_Idle;
			var sprWalk = spr_WaddleDee_Normal_Walk;
			var sprDuck = spr_WaddleDee_Normal_Duck;
			var sprJump = spr_WaddleDee_Normal_Jump;
			var sprFall = spr_WaddleDee_Normal_Fall;
			var sprSwing = spr_WaddleDee_Normal_Swing;
			var sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
			var sprHurt = spr_WaddleDee_Normal_Hurt;
			debugPaletteNumberMax = 31;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
				break;
			
				case 1:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_BlueberryPie;
				break;
			
				case 2:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_SeenAGhost;
				break;
			
				case 3:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Hypothermic;
				break;
			
				case 4:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_MidnightForest;
				break;
			
				case 5:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_CelestialGlow;
				break;
			
				case 6:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_InvertedGold;
				break;
			
				case 7:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_CherryBomb;
				break;
			
				case 8:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Corruption;
				break;
			
				case 9:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_NightVision;
				break;
			
				case 10:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_UpsetStomach;
				break;
			
				case 11:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_FadedWaddle;
				break;
			
				case 12:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_InvisibleSpray;
				break;
			
				case 13:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Snowball;
				break;
			
				case 14:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_KeyDee;
				break;
			
				case 15:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_BurntToACrisp;
				break;
			
				case 16:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_ImpendingDoom;
				break;
			
				case 17:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Ultra;
				break;
			
				case 18:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_SherbetSurprise;
				break;
			
				case 19:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_CottonCandy;
				break;
			
				case 20:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_GamerDee;
				break;
			
				case 21:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Crimson;
				break;
			
				case 22:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_TropicalOcean;
				break;
			
				case 23:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Mulberry;
				break;
			
				case 24:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_GrandDee;
				break;
			
				case 25:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_SunKissed;
				break;
			
				case 26:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_VitaminDeeMilk;
				break;
			
				case 27:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_SunkenSea;
				break;
			
				case 28:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_GhostlyGhoul;
				break;
			
				case 29:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Throwback50s;
				break;
			
				case 30:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_Roaring20s;
				break;
			
				case 31:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_ExtremeContrast;
				break;
			
				default:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
				break;
			}
			break;
		
			//Egg
		
			case 1:
			var sprIdle = spr_WaddleDee_Egg_Idle;
			var sprWalk = spr_WaddleDee_Egg_Walk;
			var sprDuck = spr_WaddleDee_Egg_Duck;
			var sprJump = spr_WaddleDee_Egg_Jump;
			var sprFall = spr_WaddleDee_Egg_Fall;
			var sprSwing = spr_WaddleDee_Egg_Swing;
			var sprClimbUp = spr_WaddleDee_Egg_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Egg_ClimbDown;
			var sprHurt = spr_WaddleDee_Egg_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDee_Egg_Palette_EggedOn;
				break;
			
				default:
				debugPaletteIndex = spr_WaddleDee_Egg_Palette_EggedOn;
				break;
			}
			break;
		
			//Gold
		
			case 2:
			var sprIdle = spr_WaddleDee_Gold_Idle;
			var sprWalk = spr_WaddleDee_Gold_Walk;
			var sprDuck = spr_WaddleDee_Gold_Duck;
			var sprJump = spr_WaddleDee_Gold_Jump;
			var sprFall = spr_WaddleDee_Gold_Fall;
			var sprSwing = spr_WaddleDee_Gold_Swing;
			var sprClimbUp = spr_WaddleDee_Gold_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Gold_ClimbDown;
			var sprHurt = spr_WaddleDee_Gold_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDee_Gold_Palette_HiddenTreasure;
				break;
			
				default:
				debugPaletteIndex = spr_WaddleDee_Gold_Palette_HiddenTreasure;
				break;
			}
			break;
		
			//Alien
		
			case 3:
			var sprIdle = spr_WaddleDee_Alien_Idle;
			var sprWalk = spr_WaddleDee_Alien_Walk;
			var sprDuck = spr_WaddleDee_Alien_Duck;
			var sprJump = spr_WaddleDee_Alien_Jump;
			var sprFall = spr_WaddleDee_Alien_Fall;
			var sprSwing = spr_WaddleDee_Alien_Swing;
			var sprClimbUp = spr_WaddleDee_Alien_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Alien_ClimbDown;
			var sprHurt = spr_WaddleDee_Alien_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDee_Alien_Palette_Graylien;
				break;
			
				default:
				debugPaletteIndex = spr_WaddleDee_Alien_Palette_Graylien;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_WaddleDee);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprSwing = sprSwing;
			debugObj.sprClimbUp = sprClimbUp;
			debugObj.sprClimbDown = sprClimbDown;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Waddle Doo
	
		case 28:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_WaddleDoo_Normal_Idle;
			var sprWalk = spr_WaddleDoo_Normal_Walk;
			var sprDuck = spr_WaddleDoo_Normal_Duck;
			var sprJump = spr_WaddleDoo_Normal_Jump;
			var sprFall = spr_WaddleDoo_Normal_Fall;
			var sprSwing = spr_WaddleDoo_Normal_Swing;
			var sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
			var sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
			var sprCharge = spr_WaddleDoo_Normal_Charge;
			var sprAttack = spr_WaddleDoo_Normal_Attack;
			var sprFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
			var sprHurt = spr_WaddleDoo_Normal_Hurt;
			debugPaletteNumberMax = 23;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
				break;
			
				case 1:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Uranium;
				break;
			
				case 2:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_IvoryEgg;
				break;
			
				case 3:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Kirby;
				break;
			
				case 4:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_TrueBlue;
				break;
			
				case 5:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Berry;
				break;
			
				case 6:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Lilac;
				break;
			
				case 7:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_AquaDepths;
				break;
			
				case 8:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Ocean;
				break;
			
				case 9:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_MintyBreeze;
				break;
			
				case 10:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_NoFun;
				break;
			
				case 11:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_FilthyRich;
				break;
			
				case 12:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_CowardlyBrother;
				break;
			
				case 13:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_LetsaGo;
				break;
			
				case 14:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Amber;
				break;
			
				case 15:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Bloodshot;
				break;
			
				case 16:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_RipeTomato;
				break;
			
				case 17:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_BeamOfLight;
				break;
			
				case 18:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Aluminum;
				break;
			
				case 19:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_HelperToHero;
				break;
			
				case 20:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_AngelicGold;
				break;
			
				case 21:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_FrozenTundra;
				break;
			
				case 22:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_PinkStar;
				break;
			
				case 23:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Brick;
				break;
			
				default:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_WaddleDoo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprSwing = sprSwing;
			debugObj.sprClimbUp = sprClimbUp;
			debugObj.sprClimbDown = sprClimbDown;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
			debugObj.sprFlashingEye = sprFlashingEye;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Bronto Burt
	
		case 29:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BrontoBurt_Normal_Idle;
			var sprReady = spr_BrontoBurt_Normal_Ready;
			var sprWalk = spr_BrontoBurt_Normal_Walk;
			var sprFly = spr_BrontoBurt_Normal_Fly;
			var sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
			var sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
			debugPaletteNumberMax = 9;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
				break;
			
				case 1:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Acidic;
				break;
			
				case 2:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Alien;
				break;
			
				case 3:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Black;
				break;
			
				case 4:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Green;
				break;
			
				case 5:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Light;
				break;
			
				case 6:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Pumpkin;
				break;
			
				case 7:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Purple;
				break;
			
				case 8:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_UraniumGreen;
				break;
			
				case 9:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_UraniumPurple;
				break;
			
				default:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
				break;
			}
			break;
			
			//Alien
		
			case 1:
			var sprIdle = spr_BrontoBurt_Alien_Idle;
			var sprReady = spr_BrontoBurt_Alien_Ready;
			var sprWalk = spr_BrontoBurt_Alien_Walk;
			var sprFly = spr_BrontoBurt_Alien_Fly;
			var sprHurtGround = spr_BrontoBurt_Alien_HurtGround;
			var sprHurtFly = spr_BrontoBurt_Alien_HurtFly;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BrontoBurt_Alien_Palette_Graylien;
				break;
			
				default:
				debugPaletteIndex = spr_BrontoBurt_Alien_Palette_Graylien;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_BrontoBurt);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprReady = sprReady;
			debugObj.sprWalk = sprWalk;
			debugObj.sprFly = sprFly;
			debugObj.sprHurtGround = sprHurtGround;
			debugObj.sprHurtFly = sprHurtFly;
			debugObj.sprHurt = sprHurtGround;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Twizzy
	
		case 30:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Twizzy_Normal_Idle;
			var sprFly = spr_Twizzy_Normal_Fly;
			var sprHurt = spr_Twizzy_Normal_Hurt;
			debugPaletteNumberMax = 6;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_FlyingYolk;
				break;
			
				case 1:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Blue;
				break;
			
				case 2:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Dove;
				break;
			
				case 3:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Green;
				break;
			
				case 4:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Orange;
				break;
			
				case 5:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Red;
				break;
			
				case 6:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_Toothpaste;
				break;
			
				default:
				debugPaletteIndex = spr_Twizzy_Normal_Palette_FlyingYolk;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Twizzy);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprFly = sprFly;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Tookey
	
		case 31:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Tookey_Normal_Idle;
			var sprFly = spr_Tookey_Normal_Fly;
			var sprHurt = spr_Tookey_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Tookey_Normal_Palette_FlyingWhite;
				break;
			
				case 1:
				debugPaletteIndex = spr_Tookey_Normal_Palette_Grape;
				break;
			
				default:
				debugPaletteIndex = spr_Tookey_Normal_Palette_FlyingWhite;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Tookey);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprFly = sprFly;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Sir Kibble
	
		case 32:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_SirKibble_Normal_Idle;
			var sprWalk = spr_SirKibble_Normal_Walk;
			var sprReady = spr_SirKibble_Normal_Ready;
			var sprAttack = spr_SirKibble_Normal_Attack;
			var sprCatch = spr_SirKibble_Normal_Catch;
			var sprHurt = spr_SirKibble_Normal_Hurt;
			var sprHurtAir = spr_SirKibble_Normal_HurtAir;
			debugPaletteNumberMax = 7;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_KnightlyPink;
				break;
			
				case 1:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Black;
				break;
			
				case 2:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Gold;
				break;
			
				case 3:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Green;
				break;
			
				case 4:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Jade;
				break;
			
				case 5:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Stone;
				break;
			
				case 6:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Titanium;
				break;
			
				case 7:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Yellow;
				break;
			
				default:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_KnightlyPink;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_SirKibble);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprReady = sprReady;
			debugObj.sprAttack = sprAttack;
			debugObj.sprCatch = sprCatch;
			debugObj.sprHurt = sprHurt;
			debugObj.sprHurtAir = sprHurtAir;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Gordo
	
		case 33:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Gordo_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Gordo_Normal_Palette_ThornyBackside;
				break;
			
				default:
				debugPaletteIndex = spr_Gordo_Normal_Palette_ThornyBackside;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Gordo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Blood Gordo
	
		case 34:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BloodGordo_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BloodGordo_Normal_Palette_BloodyThorns;
				break;
			
				default:
				debugPaletteIndex = spr_BloodGordo_Normal_Palette_BloodyThorns;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_BloodGordo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Shotzo
	
		case 35:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Shotzo_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Shotzo_Normal_Palette_SteelArmada;
				break;
			
				default:
				debugPaletteIndex = spr_Shotzo_Normal_Palette_SteelArmada;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Shotzo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Mystic Doo
	
		case 36:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_MysticDoo_Normal_Idle;
			var sprAttack = spr_MysticDoo_Normal_Attack;
			var sprHurt = spr_MysticDoo_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
				break;
			
				default:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_MysticDoo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Bouncy
	
		case 37:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Bouncy_Normal_Idle;
			var sprJump = spr_Bouncy_Normal_Jump;
			var sprDuck = spr_Bouncy_Normal_Duck;
			var sprHurt = spr_Bouncy_Normal_Hurt;
			debugPaletteNumberMax = 14;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_HoppingPink;
				break;
			
				case 1:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_BerryBounce;
				break;
			
				case 2:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_AmberNChrome;
				break;
			
				case 3:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_AzureSpring;
				break;
			
				case 4:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_DeepSeaDive;
				break;
			
				case 5:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_EmeraldEscape;
				break;
			
				case 6:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_Exoskeleton;
				break;
			
				case 7:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_GoldsMold;
				break;
			
				case 8:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_GolfCourse;
				break;
			
				case 9:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_GrapeGetaway;
				break;
			
				case 10:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_HotSpring;
				break;
			
				case 11:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_LightlyBouncing;
				break;
			
				case 12:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_OceansBounce;
				break;
			
				case 13:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_RustedFlux;
				break;
			
				case 14:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_TwistyTumble;
				break;
			
				default:
				debugPaletteIndex = spr_Bouncy_Normal_Palette_HoppingPink;
				break;
			}
			break;
		
			//Robo
		
			case 1:
			var sprIdle = spr_Bouncy_Robo_Idle;
			var sprJump = spr_Bouncy_Robo_Jump;
			var sprDuck = spr_Bouncy_Robo_Duck;
			var sprHurt = spr_Bouncy_Robo_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Bouncy_Robo_Palette_MechanicalGray;
				break;
			
				default:
				debugPaletteIndex = spr_Bouncy_Robo_Palette_MechanicalGray;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Bouncy);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprJump = sprJump;
			debugObj.sprDuck = sprDuck;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Mr Boogie
	
		case 38:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_MrBoogie_Normal_Idle;
			var sprWalk = spr_MrBoogie_Normal_Walk;
			var sprDuck = spr_WaddleDee_Normal_Duck;
			var sprJump = spr_WaddleDee_Normal_Jump;
			var sprFall = spr_WaddleDee_Normal_Fall;
			var sprSwing = spr_WaddleDee_Normal_Swing;
			var sprHurt = spr_MrBoogie_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_MrBoogie_Normal_Palette_SlimyGreen;
				break;
			
				default:
				debugPaletteIndex = spr_MrBoogie_Normal_Palette_SlimyGreen;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_MrBoogie);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprSwing = sprSwing;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Search
	
		case 39:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Search_Normal_Idle;
			var sprCharge = spr_Search_Normal_Charge;
			var sprHurt = spr_Search_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Search_Normal_Palette_BombshellGray;
				break;
			
				default:
				debugPaletteIndex = spr_Search_Normal_Palette_BombshellGray;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Search);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprCharge = sprCharge;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Hive Drone
	
		case 40:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_HiveDrone_Normal_Idle;
			var sprAttack = spr_HiveDrone_Normal_Attack;
			var sprDrop = spr_HiveDrone_Normal_Drop;
			var sprHurt = spr_HiveDrone_Normal_Hurt;
			var sprWings = spr_HiveDrone_Normal_Wings;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_HiveDrone_Normal_Palette_GoldHoneycomb;
				break;
			
				default:
				debugPaletteIndex = spr_HiveDrone_Normal_Palette_GoldHoneycomb;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_HiveDrone);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprAttack = sprAttack;
			debugObj.sprDrop = sprDrop;
			debugObj.sprHurt = sprHurt;
			debugObj.sprWings = sprWings;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Wapod
	
		case 41:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprPot = spr_Wapod_Normal_Pot;
			var sprHurt = "self";
			var sprGhostSpawn = spr_Wapod_Normal_Spawn;
			var sprGhostIdle = spr_Wapod_Normal_Idle;
			var sprGhostHurt = spr_Wapod_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Wapod_Normal_Palette_PhantomPastel;
				break;
			
				case 1:
				debugPaletteIndex = spr_Wapod_Normal_Palette_ExtraFlux;
				break;
			
				default:
				debugPaletteIndex = spr_Wapod_Normal_Palette_PhantomPastel;
				break;
			}
			break;
		}
		debugSprite = sprPot;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Wapod);
			debugObj.character = debugSpriteSelected;
			debugObj.sprPot = sprPot;
			debugObj.sprHurt = sprHurt;
			debugObj.sprGhostSpawn = sprGhostSpawn;
			debugObj.sprGhostIdle = sprGhostIdle;
			debugObj.sprGhostHurt = sprGhostHurt;
			debugObj.sprite_index = sprPot;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Flamebelch
	
		case 42:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Flamebelch_Normal_Idle;
			var sprWalk = spr_Flamebelch_Normal_Walk;
			var sprDuck = spr_WaddleDee_Normal_Duck;
			var sprJump = spr_WaddleDee_Normal_Jump;
			var sprFall = spr_WaddleDee_Normal_Fall;
			var sprSwing = spr_WaddleDee_Normal_Swing;
			var sprHurt = spr_Flamebelch_Normal_Hurt;
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Flamebelch);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprSwing = sprSwing;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Cappy
	
		case 43:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdleL = spr_Cappy_Normal_IdleL;
			var sprIdleR = spr_Cappy_Normal_IdleR;
			var sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
			var sprHurt = spr_Cappy_Normal_Hurt;
			var sprShroom = spr_Cappy_Normal_Shroom;
			debugPaletteNumberMax = 4;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Cappy_Normal_Palette_RedCap;
				break;
			
				case 1:
				debugPaletteIndex = spr_Cappy_Normal_Palette_GreenCap;
				break;
			
				case 2:
				debugPaletteIndex = spr_Cappy_Normal_Palette_Lilac;
				break;
			
				case 3:
				debugPaletteIndex = spr_Cappy_Normal_Palette_Shadow;
				break;
			
				case 4:
				debugPaletteIndex = spr_Cappy_Normal_Palette_Gold;
				break;
			
				default:
				debugPaletteIndex = spr_Cappy_Normal_Palette_RedCap;
				break;
			}
			break;
			
			//Robo
			
			case 1:
			var sprIdleL = spr_Cappy_Robo_IdleL;
			var sprIdleR = spr_Cappy_Robo_IdleR;
			var sprShroomIdle = spr_Cappy_Robo_ShroomIdle;
			var sprHurt = spr_Cappy_Robo_Hurt;
			var sprShroom = spr_Cappy_Robo_Shroom;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Cappy_Robo_Palette_MechanicalHop;
				break;
			
				default:
				debugPaletteIndex = spr_Cappy_Robo_Palette_MechanicalHop;
				break;
			}
			break;
		}
		debugSprite = sprIdleL;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Cappy);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdleL = sprIdleL;
			debugObj.sprIdleR = sprIdleR;
			debugObj.sprShroomIdle = sprShroomIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprShroom = sprShroom;
			debugObj.sprite_index = sprIdleL;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Broom Hatter
	
		case 44:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BroomHatter_Normal_Idle;
			var sprWalk = spr_BroomHatter_Normal_Walk;
			var sprHurt = spr_BroomHatter_Normal_Inhale;
			var sprHurtNormal = spr_BroomHatter_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BroomHatter_Normal_Palette_YellowBroom;
				break;
			
				default:
				debugPaletteIndex = spr_BroomHatter_Normal_Palette_YellowBroom;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_BroomHatter);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprHurt = sprHurt;
			debugObj.sprHurtNormal = sprHurtNormal;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Coconut
	
		case 45:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Coconut_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Coconut_Normal_Palette_TropicalBrown;
				break;
			
				default:
				debugPaletteIndex = spr_Coconut_Normal_Palette_TropicalBrown;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Coconut);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Noddy
	
		case 46:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Noddy_Normal_Idle;
			var sprWalk = spr_Noddy_Normal_Walk;
			var sprSleep = spr_Noddy_Normal_Sleep;
			var sprHurt = spr_Noddy_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Noddy_Normal_Palette_SleepyPink;
				break;
			
				default:
				debugPaletteIndex = spr_Noddy_Normal_Palette_SleepyPink;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Noddy);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprSleep = sprSleep;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Blado
	
		case 47:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Scarfy
	
		case 48:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
			var sprCalmFly = spr_Scarfy_Normal_CalmFly;
			var sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
				break;
			
				default:
				debugPaletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
				break;
			}
			break;
		}
		debugSprite = sprCalmIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Scarfy);
			debugObj.character = debugSpriteSelected;
			debugObj.sprCalmIdle = sprCalmIdle;
			debugObj.sprCalmFly = sprCalmFly;
			debugObj.sprCalmHurt = sprCalmHurt;
			debugObj.sprite_index = sprCalmIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Rocky
	
		case 49:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Rocky_Normal_Idle;
			var sprWalk = spr_Rocky_Normal_Walk;
			var sprJump = spr_Rocky_Normal_Jump;
			var sprHurtGround = spr_Rocky_Normal_HurtGround;
			var sprHurtAir = spr_Rocky_Normal_HurtAir;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Rocky_Normal_Palette_BrownRock;
				break;
			
				default:
				debugPaletteIndex = spr_Rocky_Normal_Palette_BrownRock;
				break;
			}
			break;
			
			//KSSU
		
			case 1:
			var sprIdle = spr_Rocky_KSSU_Idle;
			var sprWalk = spr_Rocky_KSSU_Walk;
			var sprJump = spr_Rocky_KSSU_Jump;
			var sprHurtGround = spr_Rocky_KSSU_HurtGround;
			var sprHurtAir = spr_Rocky_KSSU_HurtAir;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Rocky_KSSU_Palette_BlueRock;
				break;
			
				case 1:
				debugPaletteIndex = spr_Rocky_KSSU_Palette_WetCement;
				break;
			
				default:
				debugPaletteIndex = spr_Rocky_KSSU_Palette_BlueRock;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Rocky);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprJump = sprJump;
			debugObj.sprHurtGround = sprHurtGround;
			debugObj.sprHurtAir = sprHurtAir;
			debugObj.sprHurt = sprHurtGround;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Grizzo
	
		case 50:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Grizzo_Normal_Idle;
			var sprWalk = spr_Grizzo_Normal_Walk;
			var sprDash = spr_Grizzo_Normal_Dash;
			var sprSleep = spr_Grizzo_Normal_Sleep;
			var sprHurt = spr_Grizzo_Normal_Hurt;
			debugPaletteNumberMax = 7;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_TanBear;
				break;
			
				case 1:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Tiger;
				break;
			
				case 2:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Suplex;
				break;
			
				case 3:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Polar;
				break;
			
				case 4:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Apple;
				break;
			
				case 5:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Ocra;
				break;
			
				case 6:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Molten;
				break;
			
				case 7:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_Zombie;
				break;
			
				default:
				debugPaletteIndex = spr_Grizzo_Normal_Palette_TanBear;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Grizzo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDash = sprDash;
			debugObj.sprSleep = sprSleep;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Jungle Bomb
	
		case 51:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_JungleBomb_Normal_Idle;
			var sprWalk = spr_JungleBomb_Normal_Walk;
			var sprDuck = spr_JungleBomb_Normal_Duck;
			var sprJump = spr_JungleBomb_Normal_Jump;
			var sprFall = spr_JungleBomb_Normal_Fall;
			var sprAttack = spr_JungleBomb_Normal_Attack;
			var sprHurt = spr_JungleBomb_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_JungleBomb_Normal_Palette_Pineapple;
				break;
			
				case 1:
				debugPaletteIndex = spr_JungleBomb_Normal_Palette_Strawberry;
				break;
			
				default:
				debugPaletteIndex = spr_JungleBomb_Normal_Palette_Pineapple;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_JungleBomb);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Glunk
	
		case 52:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Glunk_Normal_Idle;
			var sprHurt = spr_Glunk_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Glunk_Normal_Palette_Melon;
				break;
				
				default:
				debugPaletteIndex = spr_Glunk_Normal_Palette_Melon;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Glunk);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Kabu
	
		case 53:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Kabu_Normal_Idle;
			var sprWalk = spr_Kabu_Normal_Walk;
			var sprRun = spr_Kabu_Normal_Run;
			var sprDuck = spr_Kabu_Normal_Duck;
			var sprHurt = "self";
			debugPaletteNumberMax = 4;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Kabu_Normal_Palette_StoneYellow;
				break;
			
				case 1:
				debugPaletteIndex = spr_Kabu_Normal_Palette_Ivory;
				break;
			
				case 2:
				debugPaletteIndex = spr_Kabu_Normal_Palette_Stonecold;
				break;
			
				case 3:
				debugPaletteIndex = spr_Kabu_Normal_Palette_Lilac;
				break;
			
				case 4:
				debugPaletteIndex = spr_Kabu_Normal_Palette_Zombie;
				break;
			
				default:
				debugPaletteIndex = spr_Kabu_Normal_Palette_StoneYellow;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Kabu);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprWalk = sprRun;
			debugObj.sprDuck = sprDuck;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Burning Leo
	
		case 54:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_BurningLeo_Normal_Idle;
			var sprWalk = spr_BurningLeo_Normal_Walk;
			var sprDuck = spr_BurningLeo_Normal_Duck;
			var sprJump = spr_BurningLeo_Normal_Jump;
			var sprFall = spr_BurningLeo_Normal_Fall;
			var sprCharge = spr_BurningLeo_Normal_Charge;
			var sprAttack = spr_BurningLeo_Normal_Attack;
			var sprHurt = spr_BurningLeo_Normal_Hurt;
			debugPaletteNumberMax = 6;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_FlamingRed;
				break;
			
				case 1:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Ogre;
				break;
			
				case 2:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Metal;
				break;
			
				case 3:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Ivory;
				break;
			
				case 4:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Emeraldflame;
				break;
			
				case 5:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Blueflame;
				break;
			
				case 6:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_Shadowflame;
				break;
			
				default:
				debugPaletteIndex = spr_BurningLeo_Normal_Palette_FlamingRed;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_BurningLeo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Tomatoo
	
		case 55:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Tomatoo_Normal_Idle;
			var sprDuck = spr_Tomatoo_Normal_Duck;
			var sprJump = spr_Tomatoo_Normal_Jump;
			var sprFall = spr_Tomatoo_Normal_Fall;
			var sprHeavyDuck = spr_Tomatoo_Normal_HeavyDuck;
			var sprHurt = spr_Tomatoo_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
				break;
				
				default:
				debugPaletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Tomatoo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprDuck = sprDuck;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprHeavyDuck = sprHeavyDuck;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Onion
	
		case 56:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Onion_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
				break;
				
				default:
				debugPaletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Onion);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Anemonee
	
		case 57:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Anemonee_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Glunk_Normal_Palette_Melon;
				break;
				
				default:
				debugPaletteIndex = spr_Glunk_Normal_Palette_Melon;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Anemonee);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Poppy Bros Jr
	
		case 58:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_PoppyBrosJr_Normal_Idle;
			var sprThrowReady = spr_PoppyBrosJr_Normal_ThrowReady;
			var sprThrow = spr_PoppyBrosJr_Normal_Throw;
			var sprHand = spr_PoppyBrosJr_Normal_Hand;
			var sprHurt = spr_PoppyBrosJr_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_BlueBomber;
				break;
				
				case 1:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_FancyYellow;
				break;
				
				case 2:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_Shadow;
				break;
				
				case 3:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_Candy;
				break;
				
				case 4:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_Rose;
				break;
				
				case 5:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_PaleRedShoes;
				break;
				
				case 6:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_PaleGreenShoes;
				break;
				
				default:
				debugPaletteIndex = spr_PoppyBrosJr_Normal_Palette_BlueBomber;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_PoppyBrosJr);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprThrowReady = sprThrowReady;
			debugObj.sprThrow = sprThrow;
			debugObj.sprHand = sprHand;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Bobo
	
		case 59:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Bobo_Normal_Idle;
			var sprWalk = spr_Bobo_Normal_Walk;
			var sprFall = spr_Bobo_Normal_Fall;
			var sprHurt = spr_Bobo_Normal_Hurt;
			var sprFlame = spr_Bobo_Normal_Flame;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Bobo_Normal_Palette_FunnyFlame;
				break;
				
				default:
				debugPaletteIndex = spr_Bobo_Normal_Palette_FunnyFlame;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Bobo);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprFall = sprFall;
			debugObj.sprHurt = sprHurt;
			debugObj.sprFlame = sprFlame;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Foley
	
		case 60:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdleNormal = spr_Foley_Normal_Idle;
			var sprIdleExplodeReady = spr_Foley_Normal_Idle_ExplodeReady;
			var sprIdleExplode = spr_Foley_Normal_Idle_Explode;
			var sprWalkNormal = spr_Foley_Normal_Walk;
			var sprWalkExplodeReady = spr_Foley_Normal_Walk_ExplodeReady;
			var sprWalkExplode = spr_Foley_Normal_Walk_Explode;
			var sprHurtIdle = spr_Foley_Normal_Hurt_Idle;
			var sprHurtAttack = spr_Foley_Normal_Hurt_Attack;
			var sprLeaf = spr_Foley_Normal_Leaf;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
				break;
				
				default:
				debugPaletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
				break;
			}
			break;
		}
		debugSprite = sprIdleNormal;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Foley);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdleNormal = sprIdleNormal;
			debugObj.sprIdleExplodeReady = sprIdleExplodeReady;
			debugObj.sprIdleExplode = sprIdleExplode;
			debugObj.sprWalkNormal = sprWalkNormal;
			debugObj.sprWalkExplodeReady = sprWalkExplodeReady;
			debugObj.sprWalkExplode = sprWalkExplode;
			sprHurtIdle = sprHurtIdle;
			sprHurtAttack = sprHurtAttack;
			debugObj.sprHurt = sprHurtIdle;
			debugObj.sprLeaf = sprLeaf;
			debugObj.sprite_index = sprIdleNormal;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Nidoo
	
		case 61:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Como
	
		case 62:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Cairn
	
		case 63:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Bomber
	
		case 64:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = "self";
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	
		//Simirror
	
		case 65:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			//Normal
		
			case 0:
			var sprIdle = spr_Simirror_Normal_Walk;
			var sprWalk = spr_Simirror_Normal_Walk;
			var sprAttack = spr_Simirror_Normal_Attack;
			var sprHurt = spr_Simirror_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			
				default:
				debugPaletteIndex = spr_Blado_Normal_Palette_BrownBlades;
				break;
			}
			break;
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_Simirror);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.paletteIndex = debugPaletteIndex;
			debugObj.image_xscale = debugXScale;
			debugObj.dirX = debugXScale;
			debugObj.walkDirX = debugXScale;
			debugObj.image_yscale = debugYScale;
			debugObj.dirY = debugYScale;
			debugObj.walkDirY = debugYScale;
			debugObj.state = debugStateSelected;
		}
		break;
	}
}

if (!keyboard_check(vk_shift))
{
	//Sprites
	
	if (keyboard_check_pressed(ord("W")))
	{
		if (keyboard_check(vk_control))
		{
			debugPaletteNumber += 1;
		}
		else
		{
			debugPaletteNumber = 0;
			debugSpriteSelected += 1;
		}
	}
	if (keyboard_check_pressed(ord("S")))
	{
		if (keyboard_check(vk_control))
		{
			debugPaletteNumber -= 1;
		}
		else
		{
			debugPaletteNumber = 0;
			debugSpriteSelected -= 1;
		}
	}
	
	if (debugSpriteSelected < 0) debugSpriteSelected += (debugSpriteSelectedMax + 1);
	if (debugSpriteSelected > debugSpriteSelectedMax) debugSpriteSelected -= (debugSpriteSelectedMax + 1);
	if (debugSpriteSelectedMax == 0) debugSpriteSelected = 0;
	
	//States
	
	if (keyboard_check_pressed(ord("A")))
	{
		debugStateSelected -= 1;
	}
	if (keyboard_check_pressed(ord("D")))
	{
		debugStateSelected += 1;
	}
	
	if (debugStateSelected < 0) debugStateSelected += (debugStateSelectedMax + 1);
	if (debugStateSelected > debugStateSelectedMax) debugStateSelected -= (debugStateSelectedMax + 1);
	if (debugStateSelectedMax == 0) debugStateSelected = 0;
}
else
{
	//Directions
	
	if ((keyboard_check_pressed(ord("A"))) or (keyboard_check_pressed(ord("D"))))
	{
		if (debugXScale == 1)
		{
			debugXScale = -1;
		}
		else
		{
			debugXScale = 1;
		}
	}
	if ((keyboard_check_pressed(ord("W"))) or (keyboard_check_pressed(ord("S"))))
	{
		if (debugYScale == 1)
		{
			debugYScale = -1;
		}
		else
		{
			debugYScale = 1;
		}
	}
}