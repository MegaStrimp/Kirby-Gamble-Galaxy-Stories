///@function example_text_field(_text_field)
///@desc
function example_text_field() {
	var _text_field = argument[0];

	with (Example) {
	  switch (_text_field) {
	    case Details_field: Details_string = Details_field.Text; rousr_dissonance_set_details(Details_string); break; 
	    case State_field:   State_string   = State_field.Text;   rousr_dissonance_set_state(State_string); break;
	    case Timer_field:   
	      if (Timer_check.Toggled) {
	        Time_left        = real(string_digits(Timer_field.Text)); 
	        Timer_field.Text = string(Time_left); 
      
	        rousr_dissonance_set_timestamps(0, Time_left); 
	      }
	    break;
	    case Party_size_field: 
	    case Party_max_field: 
	      if (Party_check.Toggled) {
	        var _size = real(string(Party_size_field.Text));
	        var _max  = real(string(Party_max_field.Text));
	        rousr_dissonance_set_party(_size, _max, Party_id); 
	      }
	    break;
    
	    default: break;
	  }
	}


}
