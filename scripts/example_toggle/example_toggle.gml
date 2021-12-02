///@function example_toggle(_check, _is_toggled)
///@desc triggered when timer check is toggled
function example_toggle() {
	var _check = argument[0],
	    _is_toggled = argument[1];
    
    
	with (Example) {
	  switch (_check) {
	    case Timer_check:
	      if (!_is_toggled)
	        rousr_dissonance_set_timestamps(undefined, undefined);
	      else {
	        if (!Pupper_check.Toggled)
	          example_text_field(Timer_field);
	      }
	      break;
	    case Pupper_check:
	      if (!_is_toggled) {
	        example_text_field(Details_field);
	        example_text_field(State_field);
	        if (Timer_check.Toggled)
	          example_text_field(Timer_field);
	      } else {
	        Details_string = string(Puppers) + " Puppers sprouted.";
	        State_string   = "until a puppy is birthed.";

	        rousr_dissonance_set_details(Details_string);
	        rousr_dissonance_set_state(State_string);
	      }
	    break;
	    case Party_check:  
	      if (!_is_toggled) {
	        rousr_dissonance_set_party(0, 0);
	      } else {
	        var _size = real(string(Party_size_field.Text));
	        var _max  = real(string(Party_max_field.Text));
	        rousr_dissonance_set_party(_size, _max, Party_id); 
	      }
	    break;
	    default: break;
	  }
	}


}
