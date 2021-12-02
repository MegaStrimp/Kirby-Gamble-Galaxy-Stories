///@funcion example_on_ready(_user_data)
///@desc on ready callback for the example
///@param {*} _user_data   the id of the Example object as user data
function example_on_ready() {
	var _user_data = argument[0];
	var example_inst = _user_data; // just to prove a point

	with (example_inst) {
	  show_debug_message("Discord is ready!"); 
	  Discord_ready = true;
	}


}
