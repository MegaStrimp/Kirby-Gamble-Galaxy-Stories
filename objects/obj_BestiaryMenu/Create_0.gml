///@description Initialize Variables

//Other Variables

enemySelection = 0;
goBack = false;
arrayLength = 0;
starIndex = 0;
loopStart = 0;

/*
	0 - Type
	1 - Name
	2 - Description
	3 - Portrait Sprite
	4 - Portrait Scale
	5 - Ability
	6 - Unlocked
	7 - Offset
	8 - Offset Lerp
*/

//Enemies

scr_Bestiary_Enemies();

selectedEntries = entries;

//Spawn Buttons

var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";