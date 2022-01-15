///@description Initialize Variables

//Other Variables

xx = 0;
alpha = 0;
selection = 0;
select = false;
startLerp = 0;
buttonLerp = 0;
startTrigger = 0;

//Buttons

var button = instance_create_depth(-100,111,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Maykr_Title_Play;
button.state = "maykrTitle";
button.index = 0;
var button = instance_create_depth(-100,149,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Maykr_Title_Build;
button.state = "maykrTitle";
button.index = 1;
var button = instance_create_depth(-100,187,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Maykr_Title_Exit;
button.state = "maykrTitle";
button.index = 2;