///@description Initialize Variables

//Other Variables

hudOffset = -250;
enemySelection = 0;
goBack = false;

/*
	0 - Type
	1 - Name
	2 - Description
	3 - Portrait Sprite
	4 - Portrait Scale
	5 - Ability
	6 - Unlocked
*/

//Enemies

var i = 0;
var h = 0;
entries[i][h] = "Enemy"; //Type
h += 1;
entries[i][h] = "Waddle Dee"; //Name
h += 1;
entries[i][h] = @"The most common of Popstar
residents. Many have chosen to
work for King Dedede, some
even choosing to wield spears
or parasols."; //Description
h += 1;
entries[i][h] = spr_WaddleDee_Normal_Idle; //Portrait Sprite
h += 1;
entries[i][h] = 4; //Portrait Scale
h += 1;
entries[i][h] = "none"; //Ability
h += 1;
entries[i][h] = true; //Unlocked
i += 1;
h = 0;

entries[i][h] = "Enemy"; //Type
h += 1;
entries[i][h] = "Waddle Doo"; //Name
h += 1;
entries[i][h] = @"These creatures are known to
shoot a beam out of their
singular large eye. Grants
the beam ability upon
swallowing."; //Description
h += 1;
entries[i][h] = spr_WaddleDoo_Normal_Idle; //Portrait Sprite
h += 1;
entries[i][h] = 4; //Portrait Scale
h += 1;
entries[i][h] = "beam"; //Ability
h += 1;
entries[i][h] = true; //Unlocked
i += 1;
h = 0;

entries[i][h] = "Enemy"; //Type
h += 1;
entries[i][h] = "Bronto Burt"; //Name
h += 1;
entries[i][h] = @"A flying foe who takes to
the skies whenever someone
gets near, and will try and
ram into you when provoked."; //Description
h += 1;
entries[i][h] = spr_BrontoBurt_Normal_Idle; //Portrait Sprite
h += 1;
entries[i][h] = 4; //Portrait Scale
h += 1;
entries[i][h] = "none"; //Ability
h += 1;
entries[i][h] = true; //Unlocked
i += 1;
h = 0;

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";