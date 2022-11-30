///@description Initialize Variables

//Other Variables

hudOffset = -250;
page = 0;
selection = 0;
maxSelection = 1;
goBack = false;
spawnButtons = true;
select = false;

//Text

text[0] = str("Delete Save Menu.1");
text[1] = str("Delete Save Menu.2");
text[2] = str("Delete Save Menu.3");

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";

//Timers

buttonTimer = -1;
buttonTimerMax = 120;
particleTimer = -1;
particleTimerMax = 5;
exitTimer = -1;
exitTimerMax = 120;