///@description Begin Step

//Destroy

if ((isBossMinion) and ((!instance_exists(owner)) or (owner.death))) instance_destroy();
if (!instance_exists(collidingHitbox)) collidingHitbox = 0;

if (!hurt)
{
	backupFlags |= (hasGravity << BFLAGS.BF_GRAV);
	backupFlags |= (hasXCollision << BFLAGS.BF_XCOLL);
	backupFlags |= (hasYCollision << BFLAGS.BF_YCOLL);
	backupFlags |= (destroyOutsideView << BFLAGS.BF_DESPAWN);
}