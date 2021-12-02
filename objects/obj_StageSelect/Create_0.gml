///@description Initialize Variables

//Physics

xx = x;
yy = x;
spd = .1;

//Other Variables

hudOffset = -250;
selection = 0;
targetRoom = rm_Setup;
text = spr_Menu_StageSelect_Text_Default;
planet = spr_Menu_StageSelect_Planet_Default;
goBack = false;

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";
button.followCamera = true;