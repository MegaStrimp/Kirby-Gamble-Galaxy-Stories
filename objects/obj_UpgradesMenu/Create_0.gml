///@description Initialize Variables

#region Other Variables
hudOffset = -250;
selection = "upgrades";
upgradeSelection = 0;
select = false;
goBack = false;
upgradesArray = -1;

scr_UpgradesMenu_Upgrades();
#endregion

#region Enums
enum abilityUpgrades
{
	motorCutter,
	propellerWing,
	spectralCutter,
	goldenFlare,
	vortexInAJar,
	rockCandy,
	comboCobalt,
	psychicPebble,
	cowDoll,
	lightShells,
	eyeBomb,
	stickyBomb,
	magmaBomb,
	iceBomb,
	explosivePowder,
	magicCharcoal,
	emptyCone,
	brightPlugg,
	waddleBrella,
	eggSoil
}
#endregion

#region Timers
particleTimerMax = 5;
particleTimer = particleTimerMax;
#endregion

#region Buttons
var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(28,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 0;
button.state = "upgrades";
button.index = "arrowPrev";
var button = instance_create_depth(452,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 1;
button.state = "upgrades";
button.index = "arrowNext";
#endregion