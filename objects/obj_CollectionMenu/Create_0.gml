///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = "bestiary";
selection = "customize";
select = false;
goBack = false;

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";

var button = instance_create_depth(40,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Bestiary;
button.state = "collection";
button.index = "bestiary";
var button = instance_create_depth(145,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Customize;
button.state = "collection";
button.index = "customize";
var button = instance_create_depth(255,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Stages;
button.state = "collection";
button.index = "stages";
var button = instance_create_depth(360,40,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Cheats;
button.state = "collection";
button.index = "cheats";
var button = instance_create_depth(40,140,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Upgrades;
button.state = "collection";
button.index = "upgrades";
var button = instance_create_depth(145,140,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Trophies;
button.state = "collection";
button.index = "trophies";
var button = instance_create_depth(255,140,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_SoundTest;
button.state = "collection";
button.index = "soundTest";
var button = instance_create_depth(360,140,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Collection_Button_Gallery;
button.state = "collection";
button.index = "gallery";