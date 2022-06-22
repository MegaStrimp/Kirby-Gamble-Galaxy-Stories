///@description Room Start

//Enable View

view_enabled = true;
view_visible[0] = true;

//Reset Variables

xLimit1 = 0;
xLimit2 = 0;
yLimit1 = 0;
yLimit2 = 0;
xLimit1Final = 0;
xLimit2Final = 0;
yLimit1Final = 0;
yLimit2Final = 0;

//Movement

switch (room)
{
	case rm_StageSelect:
	{
		cameraX = (obj_StageSelect.x - ((viewWidth / zoom) / 2) + ((offsetX + cinematicXOffset) / zoom));
		cameraY = (obj_StageSelect.y - ((viewHeight / zoom) / 2) + ((offsetY + cinematicYOffset) / zoom));
	}
	break;
	
	case rm_Cutscene_Intro:
	{
		x = 24;
		y = 840;
		path_start(pth_Cutscene_Intro,1,path_action_stop,0);
	}
	break;
	
	case rm_Maykr:
	{
		cameraX = 0;
		cameraY = room_height - viewHeight;
	}
	break;
	
	default:
	if (instance_exists(obj_Player))
	{
		cameraX = obj_Player.x - ((viewWidth / zoom) / 2);
		cameraY = obj_Player.y - ((viewHeight / zoom) / 2);
	}
	else
	{
		cameraX = room_width / 2;
		cameraY = room_height / 2;
	}
	break;
}
objectFollowing = -1;

cameraXStart = cameraX;
cameraYStart = cameraY;
