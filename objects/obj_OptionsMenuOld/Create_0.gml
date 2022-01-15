///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = 0;
select = false;
maxSelection = 4;
goBack = false;

//Spawn Buttons

var button = instance_create_depth(480,270,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";

for (var i = 0; i <= 10; i++)
{
	var button = instance_create_depth(198 + (12 * i),45,depth - 1,obj_Menu_Button);
	if (i == 0) button.visible = false;
	button.owner = id;
	button.sprite_index = spr_Menu_Options_Bar;
	button.state = "options";
	button.number = i;
	button.index = "music";
	var button = instance_create_depth(198 + (12 * i),85,depth - 1,obj_Menu_Button);
	if (i == 0) button.visible = false;
	button.owner = id;
	button.sprite_index = spr_Menu_Options_Bar;
	button.state = "options";
	button.number = i;
	button.index = "sound";
}
var button = instance_create_depth(266,125,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Options_Box;
button.state = "options";
button.number = 2;
var button = instance_create_depth(326,165,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Options_Box;
button.state = "options";
button.number = 3;
var button = instance_create_depth(277,204,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Options_BoxWide;
button.state = "options";
button.number = 4;