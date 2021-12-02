///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Options,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Options

draw_set_alpha(.5);
draw_set_color(c_black);

draw_rectangle(105,40,349,223,false);
//draw_rectangle(10,235,161,262,false);

draw_set_alpha(1);
draw_set_font(fnt_Options);
draw_set_color(c_white);

draw_text(110,45,"Music - ");
draw_text(110,85,"Sound - ");
draw_text(110,125,"Fullscreen - ");
draw_text(110,165,"Extra Tutorials - ");
var windowScale = 0;
if (instance_exists(obj_Camera)) windowScale = global.windowSize;
draw_text(110,205,"Window Size - " + string(windowScale) + "X");
//draw_text(15,240,"Key Bindings");

if (global.fullscreen) draw_rectangle(266,125,280,139,true);
if (global.extraTutorials) draw_rectangle(326,165,340,179,true);

//Draw Cursor

switch (selection)
{
	case 0:
	draw_sprite(spr_Menu_Options_CursorArrow,0,93,38);
	break;
	
	case 1:
	draw_sprite(spr_Menu_Options_CursorArrow,0,93,78);
	break;
	
	case 2:
	draw_sprite(spr_Menu_Options_CursorArrow,0,93,118);
	break;
	
	case 3:
	draw_sprite(spr_Menu_Options_CursorArrow,0,93,158);
	break;
	
	case 4:
	draw_sprite(spr_Menu_Options_CursorArrow,0,93,198);
	break;
}