///@description Initialize Variables

#region Randomize
randomize();
#endregion

#region Other Variables
xx = 0;
alpha = 0;
starsAlpha = .5;
starsAlphaDir = 1;
selection = 0;
select = false;
startLerp = 0;
buttonLerp = 0;
startTrigger = 0;
textureX = 0;
textureY = 0;
windowIndex = -1;
windowWidth = 10;
windowHeight = 10;
windowActive = false;
windowSelection = 0;
windowContentAlpha = 0;
#endregion

#region Buttons
var button = instance_create_depth(-100,111,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Gamblion_Title_Start;
button.state = "gamblionTitle";
button.index = 0;
var button = instance_create_depth(-100,149,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Gamblion_Title_Stats;
button.state = "gamblionTitle";
button.index = 1;
var button = instance_create_depth(-100,187,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Gamblion_Title_Exit;
button.state = "gamblionTitle";
button.index = 2;
#endregion