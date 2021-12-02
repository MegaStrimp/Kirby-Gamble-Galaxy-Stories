///@function rousr_dissonance_set_join_secret(_secret)
///@desc set the join secret for invitations / Ask to join
///@param {String} _secret   	unique hased string for chat invitations and Ask to Join
function rousr_dissonance_set_join_secret(argument0) {
	var _secret = argument0;

	with (global.__rousr_dissonance) {
	  Is_dirty = true;
	  discord_set_join_secret(_secret);
	}


}
