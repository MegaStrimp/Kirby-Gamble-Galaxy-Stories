///@description Main

if (changeAlpha) alpha = lerp(alpha,0,.02);

#region Alpha Timer
if (alphaTimer > 0)
{
	alphaTimer -= 1;
}
else if (alphaTimer == 0)
{
	changeAlpha = true;
	alphaTimer = -1;
}
#endregion