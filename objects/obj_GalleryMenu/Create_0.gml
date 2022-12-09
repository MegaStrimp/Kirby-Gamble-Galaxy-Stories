///@description Initialize Variables

//Other Variables

hudOffset = -250;
page = 0;
curtainIndex = 0;
artworkZoom = false;
selectedVol = 0;
artworkIndex = 0;
artworkArray = -1;
bgSprite = spr_Menu_Gallery_Bg_Green;
selection = "vol1";
artworkSelection = 0;
select = false;
goBack = false;
artworkX = 240;
artworkMax = 0;

scr_Gallery_Artwork_Vol1();

var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(480,38,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 0;
button.state = "gallery";
button.index = "vol1";
//button.xOffset = 100;
var button = instance_create_depth(480,97,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 1;
button.state = "gallery";
button.index = "vol2";
button.xOffset = 100;
var button = instance_create_depth(480,156,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 2;
button.state = "gallery";
button.index = "vol3";
button.xOffset = 100;
var button = instance_create_depth(480,215,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 3;
button.state = "gallery";
button.index = "volS";
button.xOffset = 100;

var button = instance_create_depth(110,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 0;
button.state = "gallery";
button.index = "arrowPrev";
var button = instance_create_depth(370,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 1;
button.state = "gallery";
button.index = "arrowNext";