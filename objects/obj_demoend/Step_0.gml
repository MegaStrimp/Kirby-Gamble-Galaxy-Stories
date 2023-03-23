///@description Main

#region Inputs
scr_Player_Inputs(0);
#endregion

#region Skip
if ((fadeTimer != -1) and((keyStartPressed) or (keyJumpPressed))) fadeTimer = 0;
#endregion

#region Fade Timer
if (fadeTimer > 0)
{
	fadeTimer -= 1;
}
else if (fadeTimer == 0)
{
	var fade = instance_create_depth(x,y,depth,obj_Fade);
	fade.alphaSpd = .005;
	//fade.targetRoom = rm_DemoStageSelect;
	fade.targetRoom = rm_MainMenu;
	fadeTimer = -1;
}
#endregion