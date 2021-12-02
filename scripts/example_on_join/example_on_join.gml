///@function example_on_join(_join_secret, _user_data)
///@desc join handler for example object
///@param {String} _join_secret   join secret hash/encrypted/user data
///@param {Real} _user_data       example object inst id
function example_on_join() {
	var _join_secret = argument[0],
	    _user_data = argument[1];

	var example_inst = _user_data;
	with (example_inst) {
	  show_debug_message("Join: ");
	  Join = _join_secret;
	}


}
