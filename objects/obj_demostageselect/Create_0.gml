///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = "asteroidFields";
select = false;
goBack = false;

//Exit Maykr

scr_Maykr_ExitMode();

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Hud_Title;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(38,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Demo_AsteroidFields;
button.state = "mainMenu";
button.index = "asteroidFields";
var button = instance_create_depth(302,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Demo_GreenGreens;
button.state = "mainMenu";
button.index = "greenGreens";
var button = instance_create_depth(171,161,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Demo_GambleMaykr;
button.state = "mainMenu";
button.index = "gambleMaykr";
var button = instance_create_depth(13,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_OptionsDemo;
button.state = "mainMenu";
button.index = "options";
var button = instance_create_depth(41,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Discord;
button.state = "mainMenu";
button.index = "discord";
var button = instance_create_depth(69,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Gamejolt;
button.state = "mainMenu";
button.index = "gamejolt";
var button = instance_create_depth(97,244,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_MainMenu_Button_Credits;
button.state = "mainMenu";
button.index = "credits";