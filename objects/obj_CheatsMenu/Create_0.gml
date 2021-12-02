///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = 0;
select = false;
maxDiscs = 2;
itemYOffset = 0;
itemYOffsetSpd = .075;
itemYOffsetMax = 2;
itemYOffsetDir = 1;
goBack = false;

//Text

var i = 0;

discTitle[i] = "Unbreakable";
discDesc[i] = "Don't take damage!";
discColor[i] = $BAD3FF;
i += 1;

discTitle[i] = "I'm Full";
discDesc[i] = "Can't swallow enemies!";
discColor[i] = $96FF98;
i += 1;

discTitle[i] = "Berzerk";
discDesc[i] = "Until it is done!";
discColor[i] = $FF6666;
i += 1;

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";

for (var i = 0; i <= maxDiscs; i++)
{
	var button = instance_create_depth(82 + ((sprite_get_width(spr_Menu_Collection_Cheats_Disc) / 2) * (i + 1)) + (68 * i),(room_height / 2) - 20,depth,obj_Menu_Button);
	button.owner = id;
	button.sprite_index = spr_Menu_Collection_Cheats_Disc;
	button.image_blend = discColor[i];
	button.state = "cheats";
	button.number = i;
}