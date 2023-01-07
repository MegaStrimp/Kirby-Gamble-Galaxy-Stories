///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = "storyMode";
select = false;
goBack = false;

//Exit Maykr

scr_Maykr_ExitMode();

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";

var button = instance_create_depth(13,46,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_StoryMode;
button.state = "mainMenu";
button.index = "storyMode";
if (global.extraModeUnlocked)
{
	var button = instance_create_depth(13,112,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_ExtraMode;
	button.state = "mainMenu";
	button.index = "extraMode";
}
var button = instance_create_depth(232,5,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Collection;
button.state = "mainMenu";
button.index = "collection";
var button = instance_create_depth(364,5,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Options;
button.state = "mainMenu";
button.index = "options";
if (global.maykrUnlocked)
{
	var button = instance_create_depth(226,46,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_Maykr;
	button.state = "mainMenu";
	button.index = "maykr";
}
if (global.skylandsUnlocked)
{
	var button = instance_create_depth(226,95,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_Skylands;
	button.state = "mainMenu";
	button.index = "skylands";
}
if (global.gamblionUnlocked)
{
	var button = instance_create_depth(226,144,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_Gamblion;
	button.state = "mainMenu";
	button.index = "gamblion";
}
if (global.bitcrushedUnlocked)
{
	var button = instance_create_depth(423,51,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_Bitcrushed;
	button.state = "mainMenu";
	button.index = "bitcrushed";
}
if (global.samuraiKirbyUnlocked)
{
	var button = instance_create_depth(423,92,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_MainMenu_Button_SamuraiKirby;
	button.state = "mainMenu";
	button.index = "samuraiKirby";
}
var button = instance_create_depth(13,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Discord;
button.state = "mainMenu";
button.index = "discord";
var button = instance_create_depth(41,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Keycard;
button.state = "mainMenu";
button.index = "keycards";
var button = instance_create_depth(69,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Credits;
button.state = "mainMenu";
button.index = "credits";
var button = instance_create_depth(97,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_DeleteSave;
button.state = "mainMenu";
button.index = "deleteSave";