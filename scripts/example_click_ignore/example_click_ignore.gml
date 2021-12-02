///@function example_click_ignore()
///@desc send "accept" reply to a join request
function example_click_ignore() {
	with (global.__rousr_dissonance) {
	  with (Example) {
	    discord_respond(Join_requested[0], EDissonanceJoinReply.DISCORD_REPLY_IGNORE);
	    Join_requested = "Ignored: " + Join_requested[1];
	    AcceptButton.visible = false;
	    IgnoreButton.visible = false;
	    RejectButton.visible = false;
	  }
	}


}
