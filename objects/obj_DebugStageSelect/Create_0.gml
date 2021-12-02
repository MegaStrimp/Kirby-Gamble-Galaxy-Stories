///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
page = "main";
textAlpha = 0;
goBack = false;

//Stages

for (var i = 0; room_exists(i); i++)
{
	stageTitle[i] = string(room_get_name(i));
	stageOffset[i] = 0;
	stageOffsetLerp[i] = 0;
}

textY = 147 - (selection * 36);

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";