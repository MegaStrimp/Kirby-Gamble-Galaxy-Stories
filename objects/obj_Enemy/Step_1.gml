///@description Begin Step

#region Destroy
if ((isBossMinion) and ((!instance_exists(owner)) or (owner.death))) instance_destroy();
#endregion

#region Hurt Backup Flags
if (!hurt)
{
	backupFlags |= (hasGravity << BFLAGS.BF_GRAV);
	backupFlags |= (hasXCollision << BFLAGS.BF_XCOLL);
	backupFlags |= (hasYCollision << BFLAGS.BF_YCOLL);
	backupFlags |= (destroyOutsideView << BFLAGS.BF_DESPAWN);
}
#endregion