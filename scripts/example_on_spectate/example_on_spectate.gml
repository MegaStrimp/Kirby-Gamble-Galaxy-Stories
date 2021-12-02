///@function example_on_spectate(_spectate_secret, _user_data)
///@desc spectate handler for example object
///@param {String} _spectate_secret   spectate secret hash/encrypted/user data
///@param {Real} _user_data           example object inst id
function example_on_spectate() {
	var _spectate_secret = argument[0],
	    _user_data = argument[1];

	var example_inst = _user_data;
	with (example_inst) {
	  show_debug_message("Spectate:"); 
	  Spectate_requested = _spectate_secret;
	}


}
