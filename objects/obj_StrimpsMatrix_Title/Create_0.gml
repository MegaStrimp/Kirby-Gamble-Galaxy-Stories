///@description Initialize Variables

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
var button = instance_create_depth(-100,105,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_StrimpsMatrix_Button_Start;
button.state = "strimpsMatrixTitle";
button.index = 0;
var button = instance_create_depth(-100,179,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_StrimpsMatrix_Button_Exit;
button.state = "strimpsMatrixTitle";
button.index = 1;
#endregion