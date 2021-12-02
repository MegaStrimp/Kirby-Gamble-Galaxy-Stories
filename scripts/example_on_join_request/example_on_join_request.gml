///@function example_on_join_request(_user_id, _user_name, _avatar_index, _user_data)
///@desc on join request handler for example object
///@param {String} _user_id      the joining user id
///@param {String} _user_name    the joining user name
///@param {Real} _avatar_index   index in the Avatars array for this user's avatar (todo)
///@param {Real} _user_data      example object inst id
function example_on_join_request() {
	var _user_id = argument[0],
	    _user_name = argument[1],
	    _avatar = argument[2],
	    _user_data = argument[3];

	var example_inst = _user_data;
	with (example_inst) {
	  show_debug_message("Join Request:"); 
	  Join_requested = [ _user_id, _user_name, _avatar ];
	}


}
