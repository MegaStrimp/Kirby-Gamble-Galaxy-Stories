///@function rousr_dissonance_handler_on_error(_script_index, [_user_data])
///@desc calls `_script_index` whenever Discord RPC fires the `error` event
///@param {Real:Script} _script_index   Script resource index of script to execuse, takes `(_error_code, _message, [_user_data])`
///@param {*} [_user_data]              Any user data you want to pass along to the script
function rousr_dissonance_handler_on_error() {
	var _script_index = argument[0],
	    _user_data    = argument_count > 1 ? argument[1] : undefined;
      
	with (global.__rousr_dissonance)
	  Handlers[@ EDiscordHandlers.Error] = [ _script_index, _user_data ];



}
