///@description Main

//Spawn Child

if (spawnChild)
{
	instance_create_depth(x,y - 58,depth - 1,obj_Background_AsteroidFields2);
	spawnChild = false;
}

//Event Inherited

event_inherited();