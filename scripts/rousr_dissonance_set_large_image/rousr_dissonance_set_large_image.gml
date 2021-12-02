///@function rousr_dissonance_set_large_image(_image_key, [_image_text])
///@desc set the large image and the tooltip text for it
///@param {String} _image_key   	 name of the uploaded image for the large profile artwork
///@param {String} [_image_text]   tooltip for the `_image_key`
function rousr_dissonance_set_large_image() {
	var _image_key = argument[0],
	    _image_text = argument_count > 1 ? argument[1] : undefined;
    
	with (global.__rousr_dissonance) {
	  Is_dirty = true;
	  discord_set_large_image(_image_key != undefined ? _image_key : "", _image_text != undefined ? _image_text : "");
	}


}
