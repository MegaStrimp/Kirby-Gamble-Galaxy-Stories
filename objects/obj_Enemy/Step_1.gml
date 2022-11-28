///@description Begin Step

//Destroy

if ((isBossMinion) and ((!instance_exists(owner)) or (owner.death))) instance_destroy();
if (!instance_exists(collidingHitbox)) collidingHitbox = 0;