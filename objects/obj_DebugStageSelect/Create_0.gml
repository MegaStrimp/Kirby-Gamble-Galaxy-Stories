///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = 0;
page = "main";
textAlpha = 0;
goBack = false;
autoScroll = false;

//Stages

var roomIndex = 0;
for (var i = 0; room_exists(i); i++)
{
	var roomName = string(room_get_name(i));
	if (scr_CheckForbiddenLevels(roomName))
	{
		stageTitle[roomIndex] = roomName;
		stageOffset[roomIndex] = 0;
		stageOffsetLerp[roomIndex] = 0;
		roomIndex += 1;
	}
}
array_sort(stageTitle,true);

textY = 147 - (selection * 36);

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";

//Timers

canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
autoScrollTimer = -1;
autoScrollTimerMax = 2;
