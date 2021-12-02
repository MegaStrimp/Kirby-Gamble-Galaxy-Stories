/// unix_timestamp([datetime])
function gmlscripts_unix_timestamp() {
	//
	//  Returns a Unix timestamp for the current time
	//  or optionally given GameMaker datetime value.
	//
	//      datetime    GameMaker datetime, real
	//
	/// GMLscripts.com/license
	{
	    var datetime = undefined;
    
	    var timezone = date_get_timezone();
	    date_set_timezone(timezone_utc);
	    datetime = (argument_count > 0 ? argument[0] : date_current_datetime());
  
	    var timestamp = round(date_second_span(25569, datetime));
	    date_set_timezone(timezone);

	    return timestamp;
	}


}
