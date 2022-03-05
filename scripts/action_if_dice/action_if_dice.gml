/// @description (Old DnD) - if dice evauation
/// @param v number of sides of the dice
function action_if_dice(argument0) {
	var ret = true;
	var v = argument0;
	if (v > 1) {
		ret = random( 1000*v ) <= 1000;
	} // endif
	return ret;


}
