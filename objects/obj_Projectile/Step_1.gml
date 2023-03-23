///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (setupExplode) instance_destroy();
	setupTimer = -1;
}
#endregion

#region Destroy
if ((isBoss) and ((!instance_exists(owner)) or (owner.death))) instance_destroy();
#endregion