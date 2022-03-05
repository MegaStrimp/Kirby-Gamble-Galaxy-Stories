/// @description (Old DnD) - creates an instance of an object at a position
/// @param objInd object to create
/// @param xPos		X position to create at
/// @param yPos		Y position to create at
function action_create_object(argument0, argument1, argument2) {

	if (!object_exists(argument0)) {
		show_message( "creating instance for non-existent object" + string(id) );
		return 0;
	}

	if (global.__argument_relative)
	{
		instance_create( x+argument1, y+argument2, argument0);
	} else {
		instance_create( argument1, argument2, argument0);
	}


}
