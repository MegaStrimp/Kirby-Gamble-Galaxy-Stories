///@description Main

//Render Timer

if (renderable)
{
	if (renderTimer > 0)
	{
		renderTimer -= 1;
	}
	else if (renderTimer == 0)
	{
		scr_Render();
		renderTimer = renderTimerMax;
	}
}