///@description Draw

//Draw Hud

var selectedFile = 0;

switch (global.selectedSave)
{
	case "Save1.ini":
	selectedFile = 0;
	break;
	
	case "Save2.ini":
	selectedFile = 1;
	break;
	
	case "Save3.ini":
	selectedFile = 2;
	break;
}

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_MainMenu,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);
draw_sprite(spr_Menu_MainMenu_Hud_Numbers,selectedFile,81 + hudOffset,8);