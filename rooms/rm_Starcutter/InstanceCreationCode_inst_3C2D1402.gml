///@description Creation Code

dir = 1;
attackTimer = -1;
state = playerStates.insideMech;

mechIndex = instance_create_layer(x,y,"Environment",obj_Mech_HeavyLobster);
with (mechIndex)
{
	active = true;
}