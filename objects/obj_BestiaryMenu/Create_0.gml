///@description Initialize Variables

#region Other Variables
hudOffset = -250;
selection = "bestiary";
bestiarySelection = 0;
skinSelected = 0;
colorSelected = 0;
animSelected = 0;
animIndex = 0;
page = 0;
select = false;
goBack = false;
textureX = 0;
textureY = 0;
windowActive = false;
#endregion

#region Arrays
bestiaryArray = -1;
bestiaryCosmeticsArray = -1;
bestiaryAnimationsArray = -1;
scr_BestiaryMenu_Enemies();
#endregion

#region Enums
enum bestiaryEnemies
{
	waddleDee,
	waddleDoo,
	brontoBurt,
	twizzy,
	tookey,
	sirKibble,
	gordo,
	bloodGordo,
	shotzo,
	mysticDoo,
	bouncy,
	searches
}
#endregion

#region Buttons
var button = instance_create_depth(480,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";
button.canChangeImageIndex = true;
#endregion