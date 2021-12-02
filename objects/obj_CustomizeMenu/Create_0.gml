///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
subSelection = -1;
selectedPlayer = "Kirby";
selectedOwner = 0;
selectedPaint = 0;
selectedSkin = 0;
playerHatSkin = "";
playerHatPaint = -1;
page = "playerSelect";
subPage = "";
textAlpha = 0;
textY = 147;
goBack = false;
starIndex = 0;
hatSprite = -1;

player1Offset = 0;
player2Offset = 0;
skinsOffset = 0;
sprayPaintsOffset = 0;
hatSkinsOffset = 0;
hatPaintsOffset = 0;
familiarsOffset = 0;

player1OffsetLerp = 0;
player2OffsetLerp = 0;
skinsOffsetLerp = 0;
sprayPaintsOffsetLerp = 0;
hatSkinsOffsetLerp = 0;
hatPaintsOffsetLerp = 0;
familiarsOffsetLerp = 0;
kirbyPaintOffsetLerp = 0;

scr_Customize_Characters();

scr_Customize_Paints();

scr_Customize_AbilityHats();

scr_Customize_Familiars();

//Background

var gold = irandom_range(0,9);
if (gold == 0) layer_background_change(layer_background_get_id("CustomizeBackground"),bg_Customize_Gold);
layer_background_xscale(layer_background_get_id("CustomizeBackground"),.75);
layer_background_yscale(layer_background_get_id("CustomizeBackground"),.75);

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";