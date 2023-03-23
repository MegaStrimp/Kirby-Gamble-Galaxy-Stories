///@description Draw

//Draw Hud

var selectedFile = 0;

switch (global.selectedSave)
{
	case "SaveSlot1.ini":
	selectedFile = 0;
	break;
	
	case "SaveSlot2.ini":
	selectedFile = 1;
	break;
	
	case "SaveSlot3.ini":
	selectedFile = 2;
	break;
}

draw_sprite(spr_Menu_MainMenu_Hud_MainMenu,0,0 + hudOffset,0);
draw_sprite(spr_Menu_MainMenu_Hud_Numbers,selectedFile,81 + hudOffset,8);