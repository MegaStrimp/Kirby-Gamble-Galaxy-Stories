///@function example_click_accept()
///@desc send "accept" reply to a join request
function example_click_accept() {
	with (global.__rousr_dissonance) {
	  with (Example) {
	    discord_respond(Join_requested[0], EDissonanceJoinReply.DISCORD_REPLY_YES);
	    Join_requested = "Accept sent to: " + Join_requested[1];
	    AcceptButton.visible = false;
	    IgnoreButton.visible = false;
	    RejectButton.visible = false;
	  }
	}


}
