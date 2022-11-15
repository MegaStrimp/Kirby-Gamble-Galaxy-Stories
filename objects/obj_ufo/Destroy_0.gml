///@description Destroy

//Event Inherited

event_inherited();

//Drop Item

if ((state == 1) and (carriedItem != -1)) instance_create_depth(x,y + carriedItemYOffset,depth,carriedItem);