///@function rousr_dissonance_set_match_secrete(_match_secret, _is_instance)
///@desc set the match secret for use with join/spectate
///@param {String} _match_secret   unique hashed string for Spectate and Join
///@param {Boolean} _is_instance   marks the matchSecret as a game session with a specific beginning and end
function rousr_dissonance_set_match_secret() {
	var _match_secret = argument[0],
	    _is_instance = argument[1];
    
	with (global.__rousr_dissonance) {
	  Is_dirty = true;
	  discord_set_match_secret(_match_secret, _is_instance ? 1.0 : 0.0);
	}


}
