///@function rousr_dissonance_set_details(_details)
///@desc set the details string
///@param {String} _details   what the player is currently doing
function rousr_dissonance_set_details(argument0) {
	var _details = argument0;

	with (global.__rousr_dissonance) {
	  Is_dirty = true;
	  discord_set_details(_details);
	}


}
