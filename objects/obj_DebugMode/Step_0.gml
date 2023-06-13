///@description Main

#region Move Snap
if (!keyboard_check(vk_shift)) move_snap(6,6);
#endregion

#region Debug Overlay
if ((keyboard_check(vk_shift)) and (keyboard_check_pressed(ord("D")))) global.debugOverlay = !global.debugOverlay;
#endregion

#region Visible
if (mouse_check_button_pressed(mb_middle))
{
	visible = !visible;
}
#endregion

#region Spawner Mode
if ((keyboard_check(vk_alt)) and (keyboard_check_pressed(ord("S"))))
{
	spawnerMode = !spawnerMode;
}
#endregion

#region Change Room
if (keyboard_check_pressed(vk_multiply)) room_restart();
if ((room != room_last) and (scr_CheckForbiddenLevels(room_get_name(room_next(room)))) and (keyboard_check_pressed(vk_subtract))) room_goto_next();
if ((room != room_first) and (scr_CheckForbiddenLevels(room_get_name(room_previous(room)))) and (keyboard_check_pressed(vk_divide))) room_goto_previous();
if (keyboard_check_pressed(vk_add)) game_restart();
#endregion

#region Change Ability
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
			if (keyboard_check_pressed(ord("0")))
			{
				if (global.characterP1 == playerCharacters.kirby) global.abilityP1 = playerAbilities.cosmicBlade;
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
#endregion

#region Set Pause
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
#endregion

#region Set Cutscene
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
#endregion

#region Set The Hud
if (keyboard_check_pressed(vk_f1))
{
	if (instance_exists(obj_Hud))
	{
		instance_destroy(obj_Hud);
	}
	else
	{
		instance_create_depth(x,y,-997,obj_Hud);
	}
}
#endregion

#region Zoom
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
#endregion

#region Room Speed
if ((room_speed > 10) and (keyboard_check(ord("T")))) room_speed -= 1;
if (keyboard_check_pressed(ord("Y"))) room_speed = 60;
if (keyboard_check(ord("U"))) room_speed += 1;
#endregion

#region Selected
if ((keyboard_check_pressed(vk_numpad8)) or (mouse_wheel_down()))
{
	debugSelected += 1;
	debugPaletteNumber = 0;
	debugStateSelected = 0;
	debugSpriteSelected = 0;
}
if ((keyboard_check_pressed(vk_numpad2)) or (mouse_wheel_up()))
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
		#region Wall
		case debugObject.wall:
		debugIndex = debugSpriteSelected;
		debugStateSelectedMax = 1;
		
		#region Normal
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
		#endregion
		
		#region Slope
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
		#endregion
		break;
		#endregion
		
		#region Platform
		case debugObject.platform:
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
		#endregion
		
		#region Ladder
		case debugObject.ladder:
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
		#endregion
		
		#region Star Block
		case debugObject.starBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_StarBlock_Normal_Idle;
			var topWallSprite = spr_StarBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Big Star Block
		case debugObject.bigStarBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BigStarBlock_Normal_Idle;
			var topWallSprite = spr_BigStarBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Metal Block
		case debugObject.metalBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_MetalBlock_Normal_Idle;
			var topWallSprite = spr_MetalBlock_Normal_Top;
			var sprDebris = spr_MetalBlock_Normal_Debris;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_MetalBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprDebris = sprDebris;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Durable Block
		case debugObject.durableBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_DurableBlock_Normal_Idle;
			var topWallSprite = spr_DurableBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Crate
		case debugObject.crate:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Crate_Normal_Idle;
			var topWallSprite = spr_Crate_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Breaking Wall
		case debugObject.breakingWall:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BreakingWall_Normal_Idle;
			var topWallSprite = spr_BreakingWall_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Bomb Block
		case debugObject.bombBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BombBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Bomb Solid Block
		case debugObject.bombSolidBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BombSolidBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Bomb Solid Block Invis
		case debugObject.bombSolidBlockInvis:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BombSolidBlock_Normal_Idle;
			var topWallSprite = spr_BombBlock_Normal_Top;
			break;
			#endregion
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
		#endregion
		
		#region Moving Cloud
		case debugObject.movingCloud:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_MovingCloud_Normal_Idle;
			var sprUp = spr_MovingCloud_Normal_Up;
			var sprDown = spr_MovingCloud_Normal_Down;
			var sprLeft = spr_MovingCloud_Normal_Left;
			var sprRight = spr_MovingCloud_Normal_Right;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 4;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_MovingCloud);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprUp = sprUp;
			debugObj.sprDown = sprDown;
			debugObj.sprLeft = sprLeft;
			debugObj.sprRight = sprRight;
			var spd = 2;
			switch (debugStateSelected)
			{
				case 1:
				debugObj.hsp = spd;
				break;
				
				case 2:
				debugObj.hsp = -spd;
				break;
				
				case 3:
				debugObj.vsp = -spd;
				break;
				
				case 4:
				debugObj.vsp = spd;
				break;
			}
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Bumper
		case debugObject.bumper:
		debugSpriteSelectedMax = 2;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Bumper_Normal;
			break;
			#endregion
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
		#endregion
		
		#region Spring
		case debugObject.spring:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Spring_Normal;
			break;
			#endregion
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
		#endregion
		
		#region Trampoline
		case debugObject.trampoline:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Trampoline_Normal;
			break;
			#endregion
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
		#endregion
		
		#region Bouncy Cloud
		case debugObject.bouncyCloud:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BouncyCloud_Normal;
			break;
			#endregion
			
			#region High
			case 1:
			var sprIdle = spr_BouncyCloud_High;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_BouncyCloud);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Spike
		case debugObject.spike:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Spike_Normal;
			break;
			#endregion
			
			#region Thorn
			case 1:
			var sprIdle = spr_Spike_Thorn;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Spike);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.visible = true;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Point Star
		case debugObject.pointStar:
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		switch (debugStateSelected)
		{
			#region Yellow
			case 0:
			debugSprite = spr_PointStar_Yellow_Idle;
			var pointStarPoints = 1;
			break;
			#endregion
			
			#region Green
			case 1:
			debugSprite = spr_PointStar_Green_Idle;
			var pointStarPoints = 5;
			break;
			#endregion
			
			#region Red
			case 2:
			debugSprite = spr_PointStar_Red_Idle;
			var pointStarPoints = 10;
			break;
			#endregion
			
			#region Blue
			case 3:
			debugSprite = spr_PointStar_Blue_Idle;
			var pointStarPoints = 25;
			break;
			#endregion
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
		#endregion
		
		#region Ability Trophy
		case debugObject.abilityTrophy:
		debugStateSelectedMax = 26;
		switch (debugStateSelected)
		{
			#region Cutter
			case 1:
			debugSprite = spr_AbilityStar_Cutter;
			var ability = playerAbilities.cutter;
			break;
			#endregion
			
			#region Beam
			case 2:
			debugSprite = spr_AbilityStar_Beam;
			var ability = playerAbilities.beam;
			break;
			#endregion
			
			#region Mystic Beam
			case 3:
			debugSprite = spr_AbilityStar_MysticBeam;
			var ability = playerAbilities.mysticBeam;
			break;
			#endregion
			
			#region Stone
			case 4:
			debugSprite = spr_AbilityStar_Stone;
			var ability = playerAbilities.stone;
			break;
			#endregion
			
			#region Ufo
			case 5:
			debugSprite = spr_AbilityStar_Ufo;
			var ability = playerAbilities.ufo;
			break;
			#endregion
			
			#region Mirror
			case 6:
			debugSprite = spr_AbilityStar_Mirror;
			var ability = playerAbilities.mirror;
			break;
			#endregion
			
			#region Ninja
			case 7:
			debugSprite = spr_AbilityStar_Ninja;
			var ability = playerAbilities.ninja;
			break;
			#endregion
			
			#region Bomb
			case 8:
			debugSprite = spr_AbilityStar_Bomb;
			var ability = playerAbilities.bomb;
			break;
			#endregion
			
			#region Fire
			case 9:
			debugSprite = spr_AbilityStar_Fire;
			var ability = playerAbilities.fire;
			break;
			#endregion
			
			#region Mystic Fire
			case 10:
			debugSprite = spr_AbilityStar_MysticFire;
			var ability = playerAbilities.mysticFire;
			break;
			#endregion
			
			#region Ice
			case 11:
			debugSprite = spr_AbilityStar_Ice;
			var ability = playerAbilities.ice;
			break;
			#endregion
			
			#region Spark
			case 12:
			debugSprite = spr_AbilityStar_Spark;
			var ability = playerAbilities.spark;
			break;
			#endregion
			
			#region Yoyo
			case 13:
			debugSprite = spr_AbilityStar_Yoyo;
			var ability = playerAbilities.yoyo;
			break;
			#endregion
			
			#region Wheel
			case 14:
			debugSprite = spr_AbilityStar_Wheel;
			var ability = playerAbilities.wheel;
			break;
			#endregion
			
			#region Artist
			case 15:
			debugSprite = spr_AbilityStar_Artist;
			var ability = playerAbilities.artist;
			break;
			#endregion
			
			#region Fighter
			case 16:
			debugSprite = spr_AbilityStar_Fighter;
			var ability = playerAbilities.fighter;
			break;
			#endregion
			
			#region Suplex
			case 17:
			debugSprite = spr_AbilityStar_Suplex;
			var ability = playerAbilities.suplex;
			break;
			#endregion
			
			#region Wing
			case 18:
			debugSprite = spr_AbilityStar_Wing;
			var ability = playerAbilities.wing;
			break;
			#endregion
			
			#region Jet
			case 19:
			debugSprite = spr_AbilityStar_Jet;
			var ability = playerAbilities.jet;
			break;
			#endregion
			
			#region Sword
			case 20:
			debugSprite = spr_AbilityStar_Sword;
			var ability = playerAbilities.sword;
			break;
			#endregion
			
			#region Parasol
			case 21:
			debugSprite = spr_AbilityStar_Parasol;
			var ability = playerAbilities.parasol;
			break;
			#endregion
			
			#region Hammer
			case 22:
			debugSprite = spr_AbilityStar_Hammer;
			var ability = playerAbilities.hammer;
			break;
			#endregion
			
			#region Bell
			case 23:
			debugSprite = spr_AbilityStar_Bell;
			var ability = playerAbilities.bell;
			break;
			#endregion
			
			#region Water
			case 24:
			debugSprite = spr_AbilityStar_Water;
			var ability = playerAbilities.water;
			break;
			#endregion
			
			#region Hi-Jump
			case 25:
			debugSprite = spr_AbilityStar_HiJump;
			var ability = playerAbilities.hiJump;
			break;
			#endregion
			
			#region Gear
			case 26:
			debugSprite = spr_AbilityStar_Gear;
			var ability = playerAbilities.gear;
			break;
			#endregion
			
			#region Normal
			default:
			debugSprite = spr_AbilityStar_Normal;
			var ability = playerAbilities.none;
			break;
			#endregion
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
		#endregion
		
		#region Item Chest
		case debugObject.itemChest:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprChestClosed = spr_ItemChest_Normal_Closed;
			var sprChestOpen = spr_ItemChest_Normal_Open;
			break;
			#endregion
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
		#endregion
		
		#region Key
		case debugObject.key:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Key_Normal;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_Key);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Key Gate
		case debugObject.keyGate:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprClosed = spr_KeyGate_Normal_Closed;
			var sprOpen = spr_KeyGate_Normal_Open;
			break;
			#endregion
		}
		debugSprite = sprClosed;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_KeyGate);
			debugObj.character = debugSpriteSelected;
			debugObj.sprClosed = sprClosed;
			debugObj.sprOpen = sprOpen;
			debugObj.sprite_index = sprClosed;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Cuttable Grass
		case debugObject.cuttableGrass:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_CuttableGrass_Normal_Idle;
			var sprTop = spr_CuttableGrass_Normal_Top;
			var sprBottom = spr_CuttableGrass_Normal_Bottom;
			break;
			#endregion
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
		#endregion
		
		#region Food
		case debugObject.food:
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
		#endregion
		
		#region Pep Brew
		case debugObject.pepBrew:
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
		#endregion
		
		#region Maxim Tomato
		case debugObject.maximTomato:
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
		#endregion
		
		#region Golden Tomato
		case debugObject.goldenTomato:
		debugSprite = spr_GoldenTomato;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_GoldenTomato);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Invinciblity Candy
		case debugObject.invinciblityCandy:
		debugSprite = spr_InvincibilityCandy;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_InvincibilityCandy);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Mint Leaf
		case debugObject.mintLeaf:
		debugSprite = spr_MintLeaf_Normal;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_MintLeaf);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region 1-Up
		case debugObject.oneUp:
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
		#endregion
		
		#region Background Environment
		case debugObject.backgroundEnvironment:
		debugSpriteSelectedMax = 9;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			debugSprite = spr_Background_ColdOdysseyPlanets;
			break;
			#endregion
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
		#endregion
		
		#region Falling Asteroid
		case debugObject.fallingAsteroid:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_FallingAsteroid_Normal_Idle;
			var sprDebris = spr_FallingAsteroid_Normal_Debris;
			break;
			#endregion
			
			#region Asteroid Fields
			case 1:
			var sprIdle = spr_FallingAsteroid_AsteroidFields_Idle;
			var sprDebris = spr_FallingAsteroid_AsteroidFields_Debris;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_FallingAsteroid);
			debugObj.sprIdle = sprIdle;
			debugObj.sprDebris = sprDebris;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Anti-Float Area
		case debugObject.antiFloatArea:
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
		#endregion
		
		#region Ability Block
		case debugObject.abilityBlock:
		debugSpriteSelectedMax = 22;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var ability = damageTypes.none;
			sprIdle = spr_AbilityBlock_Normal_Idle;
			topWallSprite = spr_AbilityBlock_Normal_Top;
			break;
			#endregion
			
			#region Cutter
			case 1:
			var ability = damageTypes.cutter;
			sprIdle = spr_AbilityBlock_Cutter_Idle;
			topWallSprite = spr_AbilityBlock_Cutter_Top;
			break;
			#endregion
			
			#region Beam
			case 2:
			var ability = damageTypes.beam;
			sprIdle = spr_AbilityBlock_Beam_Idle;
			topWallSprite = spr_AbilityBlock_Beam_Top;
			break;
			#endregion
			
			#region Stone
			case 3:
			var ability = damageTypes.stone;
			sprIdle = spr_AbilityBlock_Stone_Idle;
			topWallSprite = spr_AbilityBlock_Stone_Top;
			break;
			#endregion
			
			#region Ufo
			case 4:
			var ability = damageTypes.ufo;
			sprIdle = spr_AbilityBlock_Ufo_Idle;
			topWallSprite = spr_AbilityBlock_Ufo_Top;
			break;
			#endregion
			
			#region Mirror
			case 5:
			var ability = damageTypes.mirror;
			sprIdle = spr_AbilityBlock_Mirror_Idle;
			topWallSprite = spr_AbilityBlock_Mirror_Top;
			break;
			#endregion
			
			#region Ninja
			case 6:
			var ability = damageTypes.ninja;
			sprIdle = spr_AbilityBlock_Ninja_Idle;
			topWallSprite = spr_AbilityBlock_Ninja_Top;
			break;
			#endregion
			
			#region Bomb
			case 7:
			var ability = damageTypes.bomb;
			sprIdle = spr_AbilityBlock_Bomb_Idle;
			topWallSprite = spr_AbilityBlock_Bomb_Top;
			break;
			#endregion
			
			#region Fire
			case 8:
			var ability = damageTypes.fire;
			sprIdle = spr_AbilityBlock_Fire_Idle;
			topWallSprite = spr_AbilityBlock_Fire_Top;
			break;
			#endregion
			
			#region Ice
			case 9:
			var ability = damageTypes.ice;
			sprIdle = spr_AbilityBlock_Ice_Idle;
			topWallSprite = spr_AbilityBlock_Ice_Top;
			break;
			#endregion
			
			#region Spark
			case 10:
			var ability = damageTypes.spark;
			sprIdle = spr_AbilityBlock_Spark_Idle;
			topWallSprite = spr_AbilityBlock_Spark_Top;
			break;
			#endregion
			
			#region Yoyo
			case 11:
			var ability = damageTypes.yoyo;
			sprIdle = spr_AbilityBlock_Yoyo_Idle;
			topWallSprite = spr_AbilityBlock_Yoyo_Top;
			break;
			#endregion
			
			#region Wheel
			case 12:
			var ability = damageTypes.wheel;
			sprIdle = spr_AbilityBlock_Wheel_Idle;
			topWallSprite = spr_AbilityBlock_Wheel_Top;
			break;
			#endregion
			
			#region Artist
			case 13:
			var ability = damageTypes.artist;
			sprIdle = spr_AbilityBlock_Artist_Idle;
			topWallSprite = spr_AbilityBlock_Artist_Top;
			break;
			#endregion
			
			#region Fighter
			case 14:
			var ability = damageTypes.fighter;
			sprIdle = spr_AbilityBlock_Fighter_Idle;
			topWallSprite = spr_AbilityBlock_Fighter_Top;
			break;
			#endregion
			
			#region Suplex
			case 15:
			var ability = damageTypes.suplex;
			sprIdle = spr_AbilityBlock_Suplex_Idle;
			topWallSprite = spr_AbilityBlock_Suplex_Top;
			break;
			#endregion
			
			#region Wing
			case 16:
			var ability = damageTypes.wing;
			sprIdle = spr_AbilityBlock_Wing_Idle;
			topWallSprite = spr_AbilityBlock_Wing_Top;
			break;
			#endregion
			
			#region Jet
			case 17:
			var ability = damageTypes.jet;
			sprIdle = spr_AbilityBlock_Jet_Idle;
			topWallSprite = spr_AbilityBlock_Jet_Top;
			break;
			#endregion
			
			#region Sword
			case 18:
			var ability = damageTypes.sword;
			sprIdle = spr_AbilityBlock_Sword_Idle;
			topWallSprite = spr_AbilityBlock_Sword_Top;
			break;
			#endregion
			
			#region Parasol
			case 19:
			var ability = damageTypes.parasol;
			sprIdle = spr_AbilityBlock_Parasol_Idle;
			topWallSprite = spr_AbilityBlock_Parasol_Top;
			break;
			#endregion
			
			#region Hammer
			case 20:
			var ability = damageTypes.hammer;
			sprIdle = spr_AbilityBlock_Hammer_Idle;
			topWallSprite = spr_AbilityBlock_Hammer_Top;
			break;
			#endregion
			
			#region Bell
			case 21:
			var ability = damageTypes.bell;
			sprIdle = spr_AbilityBlock_Bell_Idle;
			topWallSprite = spr_AbilityBlock_Bell_Top;
			break;
			#endregion
			
			#region Water
			case 22:
			var ability = damageTypes.water;
			sprIdle = spr_AbilityBlock_Water_Idle;
			topWallSprite = spr_AbilityBlock_Water_Top;
			break;
			#endregion
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
		#endregion
		
		#region Waddle Dee
		case debugObject.waddleDee:
		debugSpriteSelectedMax = 4;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_WaddleDee_Normal_Idle;
			var sprWalk = spr_WaddleDee_Normal_Walk;
			var sprDuck = spr_WaddleDee_Normal_Duck;
			var sprSlide = spr_WaddleDee_Normal_Slide;
			var sprJump = spr_WaddleDee_Normal_Jump;
			var sprFall = spr_WaddleDee_Normal_Fall;
			var sprSwing = spr_WaddleDee_Normal_Swing;
			var sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
			var sprHurt = spr_WaddleDee_Normal_Hurt;
			debugPaletteNumberMax = 35;
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
				
				case 32:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_NPCOrange1;
				break;
				
				case 33:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_NPCOrange2;
				break;
				
				case 34:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_NPCOrange3;
				break;
				
				case 35:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_NPCOrange4;
				break;
				
				default:
				debugPaletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
				break;
			}
			break;
			#endregion
			
			#region Egg
			case 1:
			var sprIdle = spr_WaddleDee_Egg_Idle;
			var sprWalk = spr_WaddleDee_Egg_Walk;
			var sprDuck = spr_WaddleDee_Egg_Duck;
			var sprSlide = spr_WaddleDee_Normal_Slide;
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
			#endregion
			
			#region Gold
			case 2:
			var sprIdle = spr_WaddleDee_Gold_Idle;
			var sprWalk = spr_WaddleDee_Gold_Walk;
			var sprDuck = spr_WaddleDee_Gold_Duck;
			var sprSlide = spr_WaddleDee_Normal_Slide;
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
			#endregion
			
			#region Alien
			case 3:
			var sprIdle = spr_WaddleDee_Alien_Idle;
			var sprWalk = spr_WaddleDee_Alien_Walk;
			var sprDuck = spr_WaddleDee_Alien_Duck;
			var sprSlide = spr_WaddleDee_Normal_Slide;
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
			#endregion
			
			#region Bandit
			case 4:
			var sprIdle = spr_WaddleDee_Bandit_Idle;
			var sprWalk = spr_WaddleDee_Bandit_Walk;
			var sprDuck = spr_WaddleDee_Bandit_Duck;
			var sprSlide = spr_WaddleDee_Bandit_Slide;
			var sprJump = spr_WaddleDee_Bandit_Jump;
			var sprFall = spr_WaddleDee_Bandit_Fall;
			var sprSwing = spr_WaddleDee_Bandit_Swing;
			var sprClimbUp = spr_WaddleDee_Bandit_ClimbUp;
			var sprClimbDown = spr_WaddleDee_Bandit_ClimbDown;
			var sprHurt = spr_WaddleDee_Bandit_Hurt;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_WaddleDee;
			if (spawnerMode) spawnedObj = obj_Spawner_WaddleDee;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprDuck = sprDuck;
			debugObj.sprSlide = sprSlide;
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
		#endregion
		
		#region Waddle Doo
		case debugObject.waddleDoo:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_WaddleDoo_Normal_Idle;
			var sprWalk = spr_WaddleDoo_Normal_Walk;
			var sprRunTurn = spr_WaddleDoo_Normal_RunTurn;
			var sprDuck = spr_WaddleDoo_Normal_Duck;
			var sprSlide = spr_WaddleDoo_Normal_Slide;
			var sprJump = spr_WaddleDoo_Normal_Jump;
			var sprFall = spr_WaddleDoo_Normal_Fall;
			var sprSwing = spr_WaddleDoo_Normal_Swing;
			var sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
			var sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
			var sprCharge = spr_WaddleDoo_Normal_Charge;
			var sprAttack = spr_WaddleDoo_Normal_Attack;
			var sprHurt = spr_WaddleDoo_Normal_Hurt;
			var sprDeath = spr_WaddleDoo_Normal_Death;
			debugPaletteNumberMax = 24;
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
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Lilac;
				break;
				
				case 6:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_AquaDepths;
				break;
				
				case 7:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Ocean;
				break;
				
				case 8:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_MintyBreeze;
				break;
				
				case 9:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_FilthyRich;
				break;
				
				case 10:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_CowardlyBrother;
				break;
				
				case 11:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_LetsaGo;
				break;
				
				case 12:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Choco;
				break;
				
				case 13:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Bloodshot;
				break;
				
				case 14:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_RipeTomato;
				break;
				
				case 15:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_BeamOfLight;
				break;
				
				case 16:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Aluminum;
				break;
				
				case 17:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_HelperToHero;
				break;
				
				case 18:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_AngelicGold;
				break;
				
				case 19:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_FrozenTundra;
				break;
				
				case 20:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_PinkStar;
				break;
				
				case 21:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_Brick;
				break;
				
				case 22:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_CorruptedTwilight;
				break;
				
				case 23:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_PalePurple;
				break;
				
				case 24:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_DarkFlux;
				break;
				
				default:
				debugPaletteIndex = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
				break;
			}
			break;
			#endregion
			
			#region Bandit
			case 1:
			var sprIdle = spr_WaddleDoo_Bandit_Idle;
			var sprWalk = spr_WaddleDoo_Bandit_Walk;
			var sprRunTurn = spr_WaddleDoo_Bandit_RunTurn;
			var sprDuck = spr_WaddleDoo_Bandit_Duck;
			var sprSlide = spr_WaddleDoo_Bandit_Slide;
			var sprJump = spr_WaddleDoo_Bandit_Jump;
			var sprFall = spr_WaddleDoo_Bandit_Fall;
			var sprSwing = spr_WaddleDoo_Bandit_Swing;
			var sprClimbUp = spr_WaddleDoo_Bandit_ClimbUp;
			var sprClimbDown = spr_WaddleDoo_Bandit_ClimbDown;
			var sprCharge = spr_WaddleDoo_Bandit_Charge;
			var sprAttack = spr_WaddleDoo_Bandit_Attack;
			var sprHurt = spr_WaddleDoo_Bandit_Hurt;
			var sprDeath = spr_WaddleDoo_Bandit_Death;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_WaddleDoo_Bandit_Palette_GreenThief;
				break;
				
				default:
				debugPaletteIndex = spr_WaddleDoo_Bandit_Palette_GreenThief;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_WaddleDoo;
			if (spawnerMode) spawnedObj = obj_Spawner_WaddleDoo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprRunTurn = sprRunTurn;
			debugObj.sprDuck = sprDuck;
			debugObj.sprSlide = sprSlide;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprSwing = sprSwing;
			debugObj.sprClimbUp = sprClimbUp;
			debugObj.sprClimbDown = sprClimbDown;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprDeath = sprDeath;
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
		#endregion
		
		#region Bronto Burt
		case debugObject.brontoBurt:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BrontoBurt_Normal_Idle;
			var sprReady = spr_BrontoBurt_Normal_Ready;
			var sprWalk = spr_BrontoBurt_Normal_Walk;
			var sprFly = spr_BrontoBurt_Normal_Fly;
			var sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
			var sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
			debugPaletteNumberMax = 12;
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
				
				case 10:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Cosmic;
				break;
				
				case 11:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_Avalanche;
				break;
				
				case 12:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_CreamyPink;
				break;
				
				default:
				debugPaletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
				break;
			}
			break;
			#endregion
			
			#region Alien
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_BrontoBurt;
			if (spawnerMode) spawnedObj = obj_Spawner_BrontoBurt;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Twizzy
		case debugObject.twizzy:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Twizzy;
			if (spawnerMode) spawnedObj = obj_Spawner_Twizzy;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Tookey
		case debugObject.tookey:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Tookey;
			if (spawnerMode) spawnedObj = obj_Spawner_Tookey;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Sir Kibble
		case debugObject.sirKibble:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Yellow;
				break;
				
				case 1:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Black;
				break;
				
				case 2:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_KnightlyPink;
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
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Gold;
				break;
				
				default:
				debugPaletteIndex = spr_SirKibble_Normal_Palette_Yellow;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_SirKibble;
			if (spawnerMode) spawnedObj = obj_Spawner_SirKibble;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Gordo
		case debugObject.gordo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Gordo_Normal_Idle;
			var sprHurt = -1;
			debugPaletteNumberMax = 9;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Gordo_Normal_Palette_ThornyBackside;
				break;
				
				case 1:
				debugPaletteIndex = spr_Gordo_Normal_Palette_DarkMetal;
				break;
				
				case 2:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Silver;
				break;
				
				case 3:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Golden;
				break;
				
				case 4:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Nuclear;
				break;
				
				case 5:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Crimson;
				break;
				
				case 6:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Orange;
				break;
				
				case 7:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Crystal;
				break;
				
				case 8:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Lunar;
				break;
				
				case 9:
				debugPaletteIndex = spr_Gordo_Normal_Palette_Vintage;
				break;
				
				default:
				debugPaletteIndex = spr_Gordo_Normal_Palette_ThornyBackside;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Gordo;
			if (spawnerMode) spawnedObj = obj_Spawner_Gordo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Blood Gordo
		case debugObject.bloodGordo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BloodGordo_Normal_Idle;
			var sprAngry = spr_BloodGordo_Normal_Angry;
			var sprCautious = spr_BloodGordo_Normal_Cautious;
			var sprSleep = spr_BloodGordo_Normal_Sleep;
			var sprTriggered = spr_BloodGordo_Normal_Triggered;
			var sprHurt = -1;
			var sprAura = spr_BloodGordo_Normal_Aura;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_BloodGordo;
			if (spawnerMode) spawnedObj = obj_Spawner_BloodGordo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprAngry = sprAngry;
			debugObj.sprCautious = sprCautious;
			debugObj.sprSleep = sprSleep;
			debugObj.sprTriggered = sprTriggered;
			debugObj.sprHurt = sprHurt;
			debugObj.sprAura = sprAura;
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
		#endregion
		
		#region Waddle Block
		case debugObject.waddleBlock:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_WaddleBlock_Normal_Idle;
			var topWallSprite = spr_WaddleBlock_Normal_Top;
			break;
			#endregion
			
			#region Fire
			case 1:
			var sprIdle = spr_WaddleBlock_Fire_Idle;
			var topWallSprite = spr_WaddleBlock_Fire_Top;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_WaddleBlock;
			//if (spawnerMode) spawnedObj = obj_Spawner_WaddleBlock;
			var debugObj = instance_create_layer(x,y,"Environment",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.topWallSprite = topWallSprite;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Shotzo
		case debugObject.shotzo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Shotzo_Normal_Idle;
			var sprHurt = -1;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Shotzo;
			if (spawnerMode) spawnedObj = obj_Spawner_Shotzo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Mystic Doo
		case debugObject.mysticDoo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_MysticDoo_Normal_Idle;
			var sprFloatUp = spr_MysticDoo_Normal_FloatUp;
			var sprFloatTrans = spr_MysticDoo_Normal_FloatTrans;
			var sprFloatDown = spr_MysticDoo_Normal_FloatDown;
			var sprCharge = spr_MysticDoo_Normal_Charge;
			var sprAttack = spr_MysticDoo_Normal_Attack;
			var sprWave = spr_MysticDoo_Normal_Wave;
			var sprWalk = spr_MysticDoo_Normal_Walk;
			var sprWalkIdle = spr_MysticDoo_Normal_WalkIdle;
			var sprHurt = spr_MysticDoo_Normal_Hurt;
			debugPaletteNumberMax = 7;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
				break;
				
				case 1:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_PalePurple;
				break;
				
				case 2:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_DarkFlux;
				break;
				
				case 3:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_DarkSide;
				break;
				
				case 4:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_NeutralWaddle;
				break;
				
				case 5:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_Puffball;
				break;
				
				case 6:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_IcyBlue;
				break;
				
				case 7:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_SwingTrap;
				break;
				
				default:
				debugPaletteIndex = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_MysticDoo;
			if (spawnerMode) spawnedObj = obj_Spawner_MysticDoo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprFloatUp = sprFloatUp;
			debugObj.sprFloatTrans = sprFloatTrans;
			debugObj.sprFloatDown = sprFloatDown;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
			debugObj.sprWave = sprWave;
			debugObj.sprWalk = sprWalk;
			debugObj.sprWalkIdle = sprWalkIdle;
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
		#endregion
		
		#region Bouncy
		case debugObject.bouncy:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Bouncy_Normal_Idle;
			var sprJump = spr_Bouncy_Normal_Jump;
			var sprDuck = spr_Bouncy_Normal_Duck;
			var sprLongDuck = spr_Bouncy_Normal_LongDuck;
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
			#endregion
			
			#region Robo
			case 1:
			var sprIdle = spr_Bouncy_Robo_Idle;
			var sprJump = spr_Bouncy_Robo_Jump;
			var sprDuck = spr_Bouncy_Robo_Duck;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Bouncy;
			if (spawnerMode) spawnedObj = obj_Spawner_Bouncy;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprJump = sprJump;
			debugObj.sprDuck = sprDuck;
			debugObj.sprLongDuck = sprLongDuck;
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
		#endregion
		
		#region Mr Boogie
		case debugObject.mrBoogie:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_MrBoogie;
			//if (spawnerMode) spawnedObj = obj_Spawner_MrBoogie;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Searches
		case debugObject.searches:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Searches_Normal_Idle;
			var sprCharge = spr_Searches_Normal_Charge;
			var sprHurt = spr_Searches_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Searches_Normal_Palette_BombshellGray;
				break;
				
				default:
				debugPaletteIndex = spr_Searches_Normal_Palette_BombshellGray;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Searches;
			if (spawnerMode) spawnedObj = obj_Spawner_Searches;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Hive Drone
		case debugObject.hiveDrone:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_HiveDrone;
			//if (spawnerMode) spawnedObj = obj_Spawner_HiveDrone;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Wapod
		case debugObject.wapod:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprPot = spr_Wapod_Normal_Pot;
			var sprHurt = -1;
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
			#endregion
		}
		debugSprite = sprPot;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Wapod;
			if (spawnerMode) spawnedObj = obj_Spawner_Wapod;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Flamebelch
		case debugObject.flamebelch:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Flamebelch_Normal_Idle;
			var sprWalk = spr_Flamebelch_Normal_Walk;
			var sprDuck = spr_WaddleDee_Normal_Duck;
			var sprJump = spr_WaddleDee_Normal_Jump;
			var sprFall = spr_WaddleDee_Normal_Fall;
			var sprSwing = spr_WaddleDee_Normal_Swing;
			var sprHurt = spr_Flamebelch_Normal_Hurt;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Flamebelch;
			//if (spawnerMode) spawnedObj = obj_Spawner_Flamebelch;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Cappy
		case debugObject.cappy:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdleL = spr_Cappy_Normal_IdleL;
			var sprIdleR = spr_Cappy_Normal_IdleR;
			var sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
			var sprHurtCapless = spr_Cappy_Normal_Hurt;
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
			#endregion
			
			#region Robo
			case 1:
			var sprIdleL = spr_Cappy_Robo_IdleL;
			var sprIdleR = spr_Cappy_Robo_IdleR;
			var sprShroomIdle = spr_Cappy_Robo_ShroomIdle;
			var sprHurtCapless = spr_Cappy_Robo_Hurt;
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
			#endregion
		}
		debugSprite = sprIdleL;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Cappy;
			if (spawnerMode) spawnedObj = obj_Spawner_Cappy;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdleL = sprIdleL;
			debugObj.sprIdleR = sprIdleR;
			debugObj.sprShroomIdle = sprShroomIdle;
			debugObj.sprHurtCapless = sprHurtCapless;
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
		#endregion
		
		#region Broom Hatter
		case debugObject.broomHatter:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_BroomHatter;
			if (spawnerMode) spawnedObj = obj_Spawner_BroomHatter;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Coconut
		case debugObject.coconut:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Coconut_Normal_Idle;
			var sprHurt = -1;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Coconut;
			if (spawnerMode) spawnedObj = obj_Spawner_Coconut;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Noddy
		case debugObject.noddy:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Noddy;
			if (spawnerMode) spawnedObj = obj_Spawner_Noddy;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Blado
		case debugObject.blado:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Blado_Normal_Idle;
			var sprHurt = -1;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 3;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Blado;
			if (spawnerMode) spawnedObj = obj_Spawner_Blado;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Scarfy
		case debugObject.scarfy:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
			var sprCalmFly = spr_Scarfy_Normal_CalmFly;
			var sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
			var sprMadFly = spr_Scarfy_Normal_MadFly;
			var sprMadHurt = spr_Scarfy_Normal_MadHurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
				break;
				
				case 1:
				debugPaletteIndex = spr_Scarfy_Normal_Palette_KeyGuard;
				break;
				
				default:
				debugPaletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprCalmIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Scarfy;
			if (spawnerMode) spawnedObj = obj_Spawner_Scarfy;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprCalmIdle = sprCalmIdle;
			debugObj.sprCalmFly = sprCalmFly;
			debugObj.sprCalmHurt = sprCalmHurt;
			debugObj.sprMadFly = sprMadFly;
			debugObj.sprMadHurt = sprMadHurt;
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
		#endregion
		
		#region Rocky
		case debugObject.rocky:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Rocky_Normal_Idle;
			var sprWalk = spr_Rocky_Normal_Walk;
			var sprJump = spr_Rocky_Normal_Jump;
			var sprHurtGround = spr_Rocky_Normal_HurtGround;
			var sprHurtAir = spr_Rocky_Normal_HurtAir;
			debugPaletteNumberMax = 0;
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
			#endregion
			
			#region KSSU
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Rocky;
			if (spawnerMode) spawnedObj = obj_Spawner_Rocky;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Grizzo
		case debugObject.grizzo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Grizzo;
			if (spawnerMode) spawnedObj = obj_Spawner_Grizzo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Jungle Bomb
		case debugObject.jungleBomb:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_JungleBomb;
			if (spawnerMode) spawnedObj = obj_Spawner_JungleBomb;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Glunk
		case debugObject.glunk:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
			
			#region Glunker
			case 1:
			var sprIdle = spr_Glunk_Glunker_Idle;
			var sprHurt = spr_Glunk_Glunker_Hurt;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Glunk;
			if (spawnerMode) spawnedObj = obj_Spawner_Glunk;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Kabu
		case debugObject.kabu:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Kabu_Normal_Idle;
			var sprWalk = spr_Kabu_Normal_Walk;
			var sprRun = spr_Kabu_Normal_Run;
			var sprDuck = spr_Kabu_Normal_Duck;
			var sprHurt = -1;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Kabu;
			if (spawnerMode) spawnedObj = obj_Spawner_Kabu;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Burning Leo
		case debugObject.burningLeo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_BurningLeo;
			if (spawnerMode) spawnedObj = obj_Spawner_BurningLeo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Tomatoo
		case debugObject.tomatoo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Tomatoo_Normal_Idle;
			var sprDuck = spr_Tomatoo_Normal_Duck;
			var sprJump = spr_Tomatoo_Normal_Jump;
			var sprFall = spr_Tomatoo_Normal_Fall;
			var sprHeavyDuck = spr_Tomatoo_Normal_HeavyDuck;
			var sprHurt = spr_Tomatoo_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
				break;
				
				case 1:
				debugPaletteIndex = spr_Tomatoo_Normal_Palette_RipeTomato;
				break;
				
				default:
				debugPaletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Tomatoo;
			if (spawnerMode) spawnedObj = obj_Spawner_Tomatoo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Onion
		case debugObject.onion:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Onion_Normal_Idle;
			var sprThrow = spr_Onion_Normal_Idle;
			var sprHurt = -1;
			debugPaletteNumberMax = 12;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
				break;
				
				case 1:
				debugPaletteIndex = spr_Onion_Normal_Palette_BrightOrange;
				break;
				
				case 2:
				debugPaletteIndex = spr_Onion_Normal_Palette_DarkOrange;
				break;
				
				case 3:
				debugPaletteIndex = spr_Onion_Normal_Palette_LightOrange;
				break;
				
				case 4:
				debugPaletteIndex = spr_Onion_Normal_Palette_PaleOrange;
				break;
				
				case 5:
				debugPaletteIndex = spr_Onion_Normal_Palette_SaturatedOrange;
				break;
				
				case 6:
				debugPaletteIndex = spr_Onion_Normal_Palette_BloodCarrot;
				break;
				
				case 7:
				debugPaletteIndex = spr_Onion_Normal_Palette_ChilliPepper;
				break;
				
				case 8:
				debugPaletteIndex = spr_Onion_Normal_Palette_DarkPlum;
				break;
				
				case 9:
				debugPaletteIndex = spr_Onion_Normal_Palette_GoldenCarrot;
				break;
				
				case 10:
				debugPaletteIndex = spr_Onion_Normal_Palette_LightOnion;
				break;
				
				case 11:
				debugPaletteIndex = spr_Onion_Normal_Palette_NeonShroom;
				break;
				
				case 12:
				debugPaletteIndex = spr_Onion_Normal_Palette_RottenOnion;
				break;
				
				default:
				debugPaletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Onion;
			if (spawnerMode) spawnedObj = obj_Spawner_Onion;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprThrow = sprThrow;
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
		#endregion
		
		#region Anemonee
		case debugObject.anemonee:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Anemonee_Normal_Idle;
			var sprHurt = -1;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Anemonee_Normal_Palette_VioletYarn;
				break;
				
				default:
				debugPaletteIndex = spr_Anemonee_Normal_Palette_VioletYarn;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Anemonee;
			if (spawnerMode) spawnedObj = obj_Spawner_Anemonee;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Poppy Bros Jr
		case debugObject.poppyBrosJr:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_PoppyBrosJr_Normal_Idle;
			var sprThrowReady = spr_PoppyBrosJr_Normal_ThrowReady;
			var sprThrow = spr_PoppyBrosJr_Normal_Throw;
			var sprHand = spr_PoppyBrosJr_Normal_Hand;
			var sprHurt = spr_PoppyBrosJr_Normal_Hurt;
			debugPaletteNumberMax = 6;
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_PoppyBrosJr;
			if (spawnerMode) spawnedObj = obj_Spawner_PoppyBrosJr;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Bobo
		case debugObject.bobo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Bobo;
			if (spawnerMode) spawnedObj = obj_Spawner_Bobo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Foley
		case debugObject.foley:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
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
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
				break;
				
				case 1:
				debugPaletteIndex = spr_Foley_Normal_Palette_CascadeViolet;
				break;
				
				default:
				debugPaletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdleNormal;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Foley;
			if (spawnerMode) spawnedObj = obj_Spawner_Foley;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdleNormal = sprIdleNormal;
			debugObj.sprIdleExplodeReady = sprIdleExplodeReady;
			debugObj.sprIdleExplode = sprIdleExplode;
			debugObj.sprWalkNormal = sprWalkNormal;
			debugObj.sprWalkExplodeReady = sprWalkExplodeReady;
			debugObj.sprWalkExplode = sprWalkExplode;
			debugObj.sprHurtIdle = sprHurtIdle;
			debugObj.sprHurtAttack = sprHurtAttack;
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
		#endregion
		
		#region Nidoo
		case debugObject.nidoo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprReady = spr_Nidoo_Normal_Ready;
			var sprShake = spr_Nidoo_Normal_Shake;
			var sprRelease = spr_Nidoo_Normal_Release;
			var sprHurt = -1;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Nidoo_Normal_Palette_ShadowGate;
				break;
				
				default:
				debugPaletteIndex = spr_Nidoo_Normal_Palette_ShadowGate;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprReady;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Nidoo;
			if (spawnerMode) spawnedObj = obj_Spawner_Nidoo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprReady = sprReady;
			debugObj.sprShake = sprShake;
			debugObj.sprRelease = sprRelease;
			debugObj.sprite_index = sprReady;
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
		#endregion
		
		#region Como
		case debugObject.como:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Como_Normal_Idle;
			var sprFall = spr_Como_Normal_Fall;
			var sprHurt = spr_Como_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Como_Normal_Palette_SpiderGold;
				break;
				
				default:
				debugPaletteIndex = spr_Como_Normal_Palette_SpiderGold;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Como;
			if (spawnerMode) spawnedObj = obj_Spawner_Como;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprFall = sprFall;
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
		#endregion
		
		#region Cairn
		case debugObject.cairn:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Cairn_Normal_Idle;
			var sprTop = spr_Cairn_Normal_Top;
			var sprMiddle = spr_Cairn_Normal_Middle;
			var sprBottom = spr_Cairn_Normal_Bottom;
			var sprHurt = spr_Cairn_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Cairn_Normal_Palette_HeavyRock;
				break;
				
				case 1:
				debugPaletteIndex = spr_Cairn_Normal_Palette_TropicalPebbles;
				break;
				
				default:
				debugPaletteIndex = spr_Cairn_Normal_Palette_HeavyRock;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Cairn;
			if (spawnerMode) spawnedObj = obj_Spawner_Cairn;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprTop = sprTop;
			debugObj.sprMiddle = sprMiddle;
			debugObj.sprBottom = sprBottom;
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
		#endregion
		
		#region Bomber
		case debugObject.bomber:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Bomber_Normal_Idle;
			var sprWalk = spr_Bomber_Normal_Walk;
			var sprTeeter = spr_Bomber_Normal_Teeter;
			var sprExp = spr_Bomber_Normal_Explode;
			var sprHurt = spr_Bomber_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Bomber_Normal_Palette_ExplodingSkull;
				break;
				
				default:
				debugPaletteIndex = spr_Bomber_Normal_Palette_ExplodingSkull;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Bomber;
			if (spawnerMode) spawnedObj = obj_Spawner_Bomber;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprTeeter = sprTeeter;
			debugObj.sprExp = sprExp;
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
		#endregion
		
		#region Simirror
		case debugObject.simirror:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Simirror_Normal_Walk;
			var sprWalk = spr_Simirror_Normal_Walk;
			var sprAttack = spr_Simirror_Normal_Attack;
			var sprClone = spr_Simirror_Normal_Clone;
			var sprHurt = spr_Simirror_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Simirror_Normal_Palette_MagicalOrange;
				break;
				
				case 1:
				debugPaletteIndex = spr_Simirror_Normal_Palette_SimilarGreen;
				break;
				
				default:
				debugPaletteIndex = spr_Simirror_Normal_Palette_MagicalOrange;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Simirror;
			if (spawnerMode) spawnedObj = obj_Spawner_Simirror;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprAttack = sprAttack;
			debugObj.sprClone = sprClone;
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
		#endregion
		
		#region Gim
		case debugObject.gim:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Gim_Normal_Idle;
			var sprWalk = spr_Gim_Normal_Walk;
			var sprJump = spr_Gim_Normal_Jump;
			var sprFall = spr_Gim_Normal_Fall;
			var sprPrep = spr_Gim_Normal_Prep;
			var sprHurt = spr_Gim_Normal_Hurt;
			var sprHandFlingDown = spr_GimHand_Normal_FlingDown;
			var sprHandFlingMiddle = spr_GimHand_Normal_FlingMiddle;
			var sprHandFlingUp = spr_GimHand_Normal_FlingUp;
			var sprHandHoldClose = spr_GimHand_Normal_HoldClose;
			var sprHandHoldAway = spr_GimHand_Normal_HoldAway;
			debugPaletteNumberMax = 3;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Gim_Normal_Palette_SpinningBrown;
				break;
				
				case 1:
				debugPaletteIndex = spr_Gim_Normal_Palette_YoyoRobo;
				break;
				
				case 2:
				debugPaletteIndex = spr_Gim_Normal_Palette_BotBlur;
				break;
				
				case 3:
				debugPaletteIndex = spr_Gim_Normal_Palette_RedCap;
				break;
				
				default:
				debugPaletteIndex = spr_Gim_Normal_Palette_SpinningBrown;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Gim;
			if (spawnerMode) spawnedObj = obj_Spawner_Gim;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprJump = sprJump;
			debugObj.sprFall = sprFall;
			debugObj.sprPrep = sprPrep;
			debugObj.sprHurt = sprHurt;
			debugObj.sprHandFlingDown = sprHandFlingDown;
			debugObj.sprHandFlingMiddle = sprHandFlingMiddle;
			debugObj.sprHandFlingUp = sprHandFlingUp;
			debugObj.sprHandHoldClose = sprHandHoldClose;
			debugObj.sprHandHoldAway = sprHandHoldAway;
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
		#endregion
		
		#region Hothead
		case debugObject.hothead:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Hothead_Normal_Idle;
			var sprWalk = spr_Hothead_Normal_Walk;
			var sprCharge = spr_Hothead_Normal_Charge;
			var sprAttack = spr_Hothead_Normal_Attack;
			var sprHurtGround = spr_Hothead_Normal_HurtGround;
			var sprHurtAir = spr_Hothead_Normal_HurtAir;
			debugPaletteNumberMax = 3;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Hothead_Normal_Palette_DefaultFlames;
				break;
				
				case 1:
				debugPaletteIndex = spr_Hothead_Normal_Palette_WhispersOfTheMoon;
				break;
				
				case 2:
				debugPaletteIndex = spr_Hothead_Normal_Palette_RetroRed;
				break;
				
				case 3:
				debugPaletteIndex = spr_Hothead_Normal_Palette_BrownFlare;
				break;
				
				default:
				debugPaletteIndex = spr_Hothead_Normal_Palette_DefaultFlames;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Hothead;
			if (spawnerMode) spawnedObj = obj_Spawner_Hothead;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
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
		#endregion
		
		#region Sparky
		case debugObject.sparky:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Sparky_Normal_Idle;
			var sprWalk = spr_Sparky_Normal_Walk;
			var sprJump = spr_Sparky_Normal_Jump;
			var sprCharge = spr_Sparky_Normal_Charge;
			var sprAttack = spr_Sparky_Normal_Attack;
			var sprHurt = spr_Sparky_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Sparky_Normal_Palette_LightningLime;
				break;
				
				default:
				debugPaletteIndex = spr_Sparky_Normal_Palette_LightningLime;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Sparky;
			if (spawnerMode) spawnedObj = obj_Spawner_Sparky;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprJump = sprJump;
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
		#endregion
		
		#region Yolky
		case debugObject.yolky:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Yolky_Normal_Idle;
			var sprShoot = spr_Yolky_Normal_Shoot;
			var sprHurt = -1;
			debugPaletteNumberMax = 3;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Yolky_Normal_Palette_SunnySideUp;
				break;
				
				case 1:
				debugPaletteIndex = spr_Yolky_Normal_Palette_Aged;
				break;
				
				case 2:
				debugPaletteIndex = spr_Yolky_Normal_Palette_PinkSliced;
				break;
				
				case 3:
				debugPaletteIndex = spr_Yolky_Normal_Palette_CenturyEgg;
				break;
				
				default:
				debugPaletteIndex = spr_Yolky_Normal_Palette_SunnySideUp;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Yolky;
			if (spawnerMode) spawnedObj = obj_Spawner_Yolky;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprShoot = sprShoot;
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
		#endregion
		
		#region Wheelie
		case debugObject.wheelie:
		debugSpriteSelectedMax = 1;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Wheelie_Normal_Idle;
			var sprDecel1 = spr_Wheelie_Normal_Decel1;
			var sprDecel2 = spr_Wheelie_Normal_Decel2;
			var sprHurt = spr_Wheelie_Normal_Hurt;
			debugPaletteNumberMax = 2;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Wheelie_Normal_Palette_Turbo;
				break;
				
				default:
				debugPaletteIndex = spr_Wheelie_Normal_Palette_Turbo;
				break;
			}
			break;
			#endregion
			
			#region KSSU
			case 1:
			var sprIdle = spr_Wheelie_KSSU_Idle;
			var sprDecel1 = spr_Wheelie_KSSU_Decel1;
			var sprDecel2 = spr_Wheelie_KSSU_Decel2;
			var sprHurt = spr_Wheelie_KSSU_Hurt;
			debugPaletteNumberMax = 2;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Wheelie_KSSU_Palette_CarbonTire;
				break;
				
				case 1:
				debugPaletteIndex = spr_Wheelie_KSSU_Palette_RedEye;
				break;
				
				case 2:
				debugPaletteIndex = spr_Wheelie_KSSU_Palette_Nuclear;
				break;
				
				default:
				debugPaletteIndex = spr_Wheelie_KSSU_Palette_CarbonTire;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Wheelie;
			if (spawnerMode) spawnedObj = obj_Spawner_Wheelie;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprDecel1 = sprDecel1;
			debugObj.sprDecel2 = sprDecel2;
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
		#endregion
		
		#region Laser Ball
		case debugObject.laserBall:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_LaserBall_Normal_Idle;
			var sprFace = spr_LaserBall_Normal_Face;
			var sprAttack = spr_LaserBall_Normal_Attack;
			var sprHurt = spr_LaserBall_Normal_Hurt;
			
			var sprAura1Idle = spr_LaserBall_Normal_Aura1_Idle;
			var sprAura1Attack = spr_LaserBall_Normal_Aura1_Attack;
			var sprAura1Hurt = spr_LaserBall_Normal_Aura1_Hurt;
			var sprAura2Idle = spr_LaserBall_Normal_Aura2_Idle;
			var sprAura2Attack = spr_LaserBall_Normal_Aura2_Attack;
			var sprAura2Hurt = spr_LaserBall_Normal_Aura2_Hurt;
			var sprAura3Idle = spr_LaserBall_Normal_Aura3_Idle;
			var sprAura3Attack = spr_LaserBall_Normal_Aura3_Attack;
			var sprAura3Hurt = spr_LaserBall_Normal_Aura3_Hurt;
			var sprAura4Idle = spr_LaserBall_Normal_Aura4_Idle;
			var sprAura4Attack = spr_LaserBall_Normal_Aura4_Attack;
			var sprAura4Hurt = spr_LaserBall_Normal_Aura4_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
				break;
				
				default:
				debugPaletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_LaserBall;
			if (spawnerMode) spawnedObj = obj_Spawner_LaserBall;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprFace = sprFace;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprAura1Idle = sprAura1Idle;
			debugObj.sprAura1Attack = sprAura1Attack;
			debugObj.sprAura1Hurt = sprAura1Hurt;
			debugObj.sprAura2Idle = sprAura2Idle;
			debugObj.sprAura2Attack = sprAura2Attack;
			debugObj.sprAura2Hurt = sprAura2Hurt;
			debugObj.sprAura3Idle = sprAura3Idle;
			debugObj.sprAura3Attack = sprAura3Attack;
			debugObj.sprAura3Hurt = sprAura3Hurt;
			debugObj.sprAura4Idle = sprAura4Idle;
			debugObj.sprAura4Attack = sprAura4Attack;
			debugObj.sprAura4Hurt = sprAura4Hurt;
			debugObj.sprAura = sprAura1Idle;
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
		#endregion
		
		#region Jackle
		case debugObject.jackle:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Jackle_Normal_Idle;
			var sprReady = spr_Jackle_Normal_Ready;
			var sprAttack = spr_Jackle_Normal_Attack;
			var sprReload = spr_Jackle_Normal_Reload;
			var sprHurt = spr_Jackle_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Jackle_Normal_Palette_SpinningCutter;
				break;
				
				default:
				debugPaletteIndex = spr_Jackle_Normal_Palette_SpinningCutter;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Jackle;
			if (spawnerMode) spawnedObj = obj_Spawner_Jackle;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprReady = sprReady;
			debugObj.sprAttack = sprAttack;
			debugObj.sprReload = sprReload;
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
		#endregion
		
		#region Kookler
		case debugObject.kookler:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Kookler_Normal_Idle;
			var sprHurt = spr_Kookler_Normal_Hurt;
			debugPaletteNumberMax = 1;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Kookler_Normal_Palette_BlueSpin;
				break;
				
				case 1:
				debugPaletteIndex = spr_Kookler_Normal_Palette_PinkWhiskers;
				break;
				
				default:
				debugPaletteIndex = spr_Kookler_Normal_Palette_BlueSpin;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Kookler;
			//if (spawnerMode) spawnedObj = obj_Spawner_Kookler;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Ufo
		case debugObject.ufo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Ufo_Normal_Idle;
			var sprWalk = spr_Ufo_Normal_Walk;
			var sprHurt = spr_Ufo_Normal_Hurt;
			var sprBeam = spr_Ufo_Normal_Beam;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Ufo_Normal_Palette_Unearthly;
				break;
				
				default:
				debugPaletteIndex = spr_Ufo_Normal_Palette_Unearthly;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Ufo;
			if (spawnerMode) spawnedObj = obj_Spawner_Ufo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprWalk = sprWalk;
			debugObj.sprHurt = sprHurt;
			debugObj.sprBeam = sprBeam;
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
		#endregion
		
		#region Bouncy Sis
		case debugObject.bouncySis:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_BouncySis_Normal_Idle;
			var sprJump = spr_BouncySis_Normal_Jump;
			var sprDuck = spr_BouncySis_Normal_Duck;
			var sprHurt = spr_BouncySis_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_BouncySis_Normal_Palette_GiganticPink;
				break;
				
				default:
				debugPaletteIndex = spr_BouncySis_Normal_Palette_GiganticPink;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_BouncySis;
			if (spawnerMode) spawnedObj = obj_Spawner_BouncySis;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Flamer
		case debugObject.flamer:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Flamer_Normal_Idle;
			var sprReady = spr_Flamer_Normal_Ready;
			var sprAttack = spr_Flamer_Normal_Attack;
			var sprHurt = spr_Flamer_Normal_Hurt;
			debugPaletteNumberMax = 3;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Flamer_Normal_Palette_FieryRed;
				break;
				
				case 1:
				debugPaletteIndex = spr_Flamer_Normal_Palette_BabyBlue;
				break;
				
				case 2:
				debugPaletteIndex = spr_Flamer_Normal_Palette_HauntingPurple;
				break;
				
				case 3:
				debugPaletteIndex = spr_Flamer_Normal_Palette_MintLeaf;
				break;
				
				default:
				debugPaletteIndex = spr_Flamer_Normal_Palette_FieryRed;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Flamer;
			if (spawnerMode) spawnedObj = obj_Spawner_Flamer;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprReady = sprReady;
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
		#endregion
		
		#region Chuckie
		case debugObject.chuckie:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprBox = spr_Chuckie_Box;
			var sprBoxOpen = spr_Chuckie_Box_Open;
			var sprBoxClose = spr_Chuckie_Box_Close;
			var sprBoxDead = spr_Chuckie_Box_Dead;
			var sprIdle = spr_Chuckie_Idle;
			var sprHurt = spr_Chuckie_Hurt;
			var sprNeck = spr_Chuckie_Neck;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Chuckie_Normal_Palette_BlueSphere;
				break;
				
				default:
				debugPaletteIndex = spr_Chuckie_Normal_Palette_BlueSphere;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprBox;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_ChuckieBox;
			//if (spawnerMode) spawnedObj = obj_Spawner_ChuckieBox;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprBox = sprBox;
			debugObj.sprBoxOpen = sprBoxOpen;
			debugObj.sprBoxClose = sprBoxClose;
			debugObj.sprBoxDead = sprBoxDead;
			debugObj.sprIdle = sprIdle;
			debugObj.sprHurt = sprHurt;
			debugObj.sprNeck = sprNeck;
			debugObj.sprite_index = sprBox;
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
		#endregion
		
		#region Walky
		case debugObject.walky:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Walky_Normal_Idle;
			var sprWalk = spr_Walky_Normal_Walk;
			var sprAttack = spr_Walky_Normal_Attack;
			var sprHurt = spr_Walky_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Walky_Normal_Palette_MicCheck;
				break;
				
				default:
				debugPaletteIndex = spr_Walky_Normal_Palette_MicCheck;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Walky;
			if (spawnerMode) spawnedObj = obj_Spawner_Walky;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
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
		#endregion
		
		#region Mystic Block
		case debugObject.mysticBlock:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_MysticBlock_Normal_Idle;
			var sprReady = spr_MysticBlock_Normal_Ready;
			var sprAttack = spr_MysticBlock_Normal_Attack;
			var sprHurt = spr_MysticBlock_Normal_Hurt;
			var sprToplessIdle = spr_MysticBlock_Normal_ToplessIdle;
			var sprToplessReady = spr_MysticBlock_Normal_ToplessReady;
			var sprToplessAttack = spr_MysticBlock_Normal_ToplessAttack;
			var sprToplessHurt = spr_MysticBlock_Normal_ToplessHurt;
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Environment",obj_MysticBlock);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprReady = sprReady;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurt = sprHurt;
			debugObj.sprToplessIdle = sprToplessIdle;
			debugObj.sprToplessReady = sprToplessReady;
			debugObj.sprToplessAttack = sprToplessAttack;
			debugObj.sprToplessHurt = sprToplessHurt;
			debugObj.sprite_index = sprIdle;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
		#region Lovely
		case debugObject.lovely:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Lovely_Normal_Face;
			var sprAttack = spr_Lovely_Normal_Face_Attack;
			var sprAttackDiagonal = spr_Lovely_Normal_Face_Attack_Diagonal;
			var sprFaceIdle = spr_Lovely_Normal_Eyes_Blink;
			var sprFaceWink = spr_Lovely_Normal_Eyes_Wink;
			var sprFaceHurt = spr_Lovely_Normal_Eyes_Damaged;
			var sprBalls = spr_Lovely_Normal_Balls;
			var sprBody = spr_Lovely_Normal_Body;
			var sprHurt = spr_Lovely_Normal_Face_Damaged;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Lovely_Normal_Palette_BloomingFlower;
				break;
				
				default:
				debugPaletteIndex = spr_Lovely_Normal_Palette_BloomingFlower;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprBody;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_LovelyBody;
			//if (spawnerMode) spawnedObj = obj_Spawner_Lovely;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprAttack = sprAttack;
			debugObj.sprAttackDiagonal = sprAttackDiagonal;
			debugObj.sprFaceIdle = sprFaceIdle;
			debugObj.sprFaceWink = sprFaceWink;
			debugObj.sprFaceHurt = sprFaceHurt;
			debugObj.sprBalls = sprBalls;
			debugObj.sprBody = sprBody;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprBody;
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
		#endregion
		
		#region Plasma Wisp
		case debugObject.plasmaWisp:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_PlasmaWisp_Normal_Idle;
			var sprCharge = spr_PlasmaWisp_Normal_Charge;
			var sprAttack = spr_PlasmaWisp_Normal_Shoot;
			var sprAttackBasic = spr_PlasmaWisp_Normal_AttackBasic;
			var sprAttackRecharge = spr_PlasmaWisp_Normal_AttackRecharge;
			var sprHurt = spr_PlasmaWisp_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_PlasmaWisp_Normal_Palette_Plasma;
				break;
				
				default:
				debugPaletteIndex = spr_PlasmaWisp_Normal_Palette_Plasma;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_PlasmaWisp;
			if (spawnerMode) spawnedObj = obj_Spawner_PlasmaWisp;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprCharge = sprCharge;
			debugObj.sprAttack = sprAttack;
			debugObj.sprAttackBasic = sprAttackBasic;
			debugObj.sprAttackRecharge = sprAttackRecharge;
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
		#endregion
		
		#region Cerulean
		case debugObject.cerulean:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Cerulean_Normal_Idle;
			var sprAttackReady = spr_Cerulean_Normal_AttackReady;
			var sprAttackRelease = spr_Cerulean_Normal_AttackRelease;
			var sprHurt = spr_Cerulean_Normal_Hurt;
			debugPaletteNumberMax = 0;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Cerulean_Normal_Palette_GreenBean;
				break;
				
				default:
				debugPaletteIndex = spr_Cerulean_Normal_Palette_GreenBean;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 1;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Cerulean;
			if (spawnerMode) spawnedObj = obj_Spawner_Cerulean;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprAttackReady = sprAttackReady;
			debugObj.sprAttackRelease = sprAttackRelease;
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
		#endregion
		
		#region Wizzer
		case debugObject.wizzer:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprIdle = spr_Wizzer_Normal_Idle;
			var sprOpen = spr_Wizzer_Normal_Open;
			var sprClose = spr_Wizzer_Normal_Close;
			var sprReady = spr_Wizzer_Normal_Ready;
			var sprAttack = spr_Wizzer_Normal_Attack;
			var sprHurtNormal = spr_Wizzer_Normal_HurtNormal;
			var sprHurtInhale = spr_Wizzer_Normal_HurtInhale;
			debugPaletteNumberMax = 5;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_NavyShell;
				break;
				
				case 1:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_SeaweedGreen;
				break;
				
				case 2:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_TropicOrange;
				break;
				
				case 3:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_MermaidPink;
				break;
				
				case 4:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_DeepPurple;
				break;
				
				case 5:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_SweetCream;
				break;
				
				default:
				debugPaletteIndex = spr_Wizzer_Normal_Palette_NavyShell;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprIdle;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Wizzer;
			//if (spawnerMode) spawnedObj = obj_Spawner_Wizzer;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprIdle = sprIdle;
			debugObj.sprOpen = sprOpen;
			debugObj.sprClose = sprClose;
			debugObj.sprReady = sprReady;
			debugObj.sprAttack = sprAttack;
			debugObj.sprHurtNormal = sprHurtNormal;
			debugObj.sprHurtInhale = sprHurtInhale;
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
		#endregion
		
		#region Mopoo
		case debugObject.mopoo:
		debugSpriteSelectedMax = 0;
		switch (debugSpriteSelected)
		{
			#region Normal
			case 0:
			var sprBody = spr_Mopoo_Normal_Body;
			var sprFace = spr_Mopoo_Normal_Face;
			var sprHurt = spr_Mopoo_Normal_Hurt;
			debugPaletteNumberMax = 7;
			switch (debugPaletteNumber)
			{
				case 0:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_PuffyCloud;
				break;
				
				case 1:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Mint;
				break;
				
				case 2:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Strawberry;
				break;
				
				case 3:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Chocolate;
				break;
				
				case 4:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Dusk;
				break;
				
				case 5:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Frozen;
				break;
				
				case 6:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_TooSpooky;
				break;
				
				case 7:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_Cherry;
				break;
				
				default:
				debugPaletteIndex = spr_Mopoo_Normal_Palette_PuffyCloud;
				break;
			}
			break;
			#endregion
		}
		debugSprite = sprBody;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var spawnedObj = obj_Mopoo;
			//if (spawnerMode) spawnedObj = obj_Spawner_Mopoo;
			var debugObj = instance_create_layer(x,y,"Enemies",spawnedObj);
			debugObj.character = debugSpriteSelected;
			debugObj.sprBody = sprBody;
			debugObj.sprFace = sprFace;
			debugObj.sprHurt = sprHurt;
			debugObj.sprite_index = sprBody;
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
		#endregion
		
		#region IM SICK OF THIS GUY
		case debugObject.IMSICKOFTHISGUY:
		debugSprite = spr_IMSICKOFTHISGUY;
		debugSpriteSelectedMax = 0;
		debugIndex = 0;
		debugStateSelectedMax = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Enemies",obj_IMSICKOFTHISGUY);
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
		break;
		#endregion
		
	}
}
#endregion

if (!keyboard_check(vk_shift))
{
	#region Sprites
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
	#endregion
	
	#region States
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
	#endregion
}
else
{
	#region Directions
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
	#endregion
}

#region Lower HP to 1
/*
if(keyboard_check_pressed(ord("O"))){
	global.healthP1 -= 10;
}if(keyboard_check_pressed(ord("P"))){
	global.healthP2 -= 20;
}
*/
#endregion