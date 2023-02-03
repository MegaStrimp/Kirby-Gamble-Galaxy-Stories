///@description Initialize Variables

//Other Variables

hudOffset = -250;
page = 0;
pageMax = 1;
selection = "upload";
keycardSelection = 0;
keycardArray = -1;
select = false;
goBack = false;
xx = 0;

scr_Keycards();

var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(12,96,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_KeycardMenu_Upload;
button.image_index = 0;
button.state = "keycardMenu";
button.index = "upload";

for (var i = 0; i < keycardsMax; i++)
{
	var button = instance_create_depth(keycardArray[# i,2],keycardArray[# i,3],depth - 1,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = keycardArray[# i,0];
	button.image_index = 0;
	button.state = "keycardMenu";
	button.index = i;
}

/*
var button = instance_create_depth(20,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_KeycardMenu_Arrow;
button.image_index = 0;
button.state = "keycardMenu";
button.index = "arrowPrev";
var button = instance_create_depth(460,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_KeycardMenu_Arrow;
button.image_index = 1;
button.state = "keycardMenu";
button.index = "arrowNext";
*/