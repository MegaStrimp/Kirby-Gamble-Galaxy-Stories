///@description Initialize Variables

//Other Variables

hudOffset = -250;
menuIndex = 0;
selection = 0;
subSelection = -1;
selectedPlayer = 0;
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
arrayLength = 1;
autoScroll = false;

player1Offset = 0;
player2Offset = 0;
player3Offset = 0;
player4Offset = 0;
skinsOffset = 0;
sprayPaintsOffset = 0;
hatSkinsOffset = 0;
hatPaintsOffset = 0;
familiarsOffset = 0;

player1OffsetLerp = 0;
player2OffsetLerp = 0;
player3OffsetLerp = 0;
player4OffsetLerp = 0;
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

//Misc Strings

strSkins = str("Customize Sub-Menus.Skins.Title");
strSprayPaints = str("Customize Sub-Menus.Spray Paints.Title");
strHatSkins = str("Customize Sub-Menus.Hat Skins.Title");
strHatPaints = str("Customize Sub-Menus.Hat Paints.Title");
strFamiliars = str("Customize Sub-Menus.Familiars.Title");

//Timers

canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
autoScrollTimer = -1;
autoScrollTimerMax = 2;
