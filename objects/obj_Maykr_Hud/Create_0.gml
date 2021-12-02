///@description Initialize Variables

//Other Variables

mask_index = spr_Maykr_Hud;
setButtons = true;
page = 0;
cursorX = 0;
cursorY = 0;

//Create Buttons

var button = instance_create_depth(0,0,depth - 1,obj_Maykr_Button);
button.state = "settings";
button = instance_create_depth(60,12,depth - 1,obj_Maykr_Button);
button.state = "collision";
button = instance_create_depth(132,12,depth - 1,obj_Maykr_Button);
button.state = "environment";
button = instance_create_depth(204,12,depth - 1,obj_Maykr_Button);
button.state = "enemies";
button = instance_create_depth(353,236,depth - 1,obj_Maykr_Button);
button.state = "play";
button = instance_create_depth(446,236,depth - 1,obj_Maykr_Button);
button.state = "exit";
button = instance_create_depth(388,227,depth - 1,obj_Maykr_Button);
button.state = "save";
button = instance_create_depth(388,249,depth - 1,obj_Maykr_Button);
button.state = "load";
button = instance_create_depth(357,207,depth - 1,obj_Maykr_Button);
button.state = "trash";