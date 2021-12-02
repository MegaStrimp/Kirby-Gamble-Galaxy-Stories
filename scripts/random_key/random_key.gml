///@function random_key([_digit_length])
///@desc return a random key
///@returns {String} random hex key
function random_key() {
	var _digit_length = argument_count > 0 ? argument[0] : 10;

	var rnd_string = "";
	for (var j = 0; j < _digit_length; ++j) {
	  var rnd = irandom(16); 
	  if (rnd > 10) 
	    rnd = chr(ord("A") + (rnd - 10));
	  rnd_string += string(rnd);
	}

	return rnd_string;


}
