///@function example_click_reject()
///@desc send "accept" reply to a join request
function example_click_reject() {
	with (global.__rousr_dissonance) {
	  with (Example) {
	    discord_respond(Join_requested[0], EDissonanceJoinReply.DISCORD_REPLY_NO);
	    Join_requested = "Reject sent to: " + Join_requested[1];
	    AcceptButton.visible = false;
	    IgnoreButton.visible = false;
	    RejectButton.visible = false;
	  }
	}


}
