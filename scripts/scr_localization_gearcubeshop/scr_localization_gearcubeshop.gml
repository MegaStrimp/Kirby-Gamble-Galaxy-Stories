///@description Localization - Gear Cube Shop
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_GearCubeShop(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Gear Cube Shop
	#region First Time Entrance
	var i = 0;
	dialogue[7][0][i][languages.english] = "You showed up for real.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Didn't expect to see you again after that run in we had back there.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Welcome to my market. It's rough out there so you better purchase some goods before going back out.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Sure we can both benefit from this.";
	#endregion
	
	#region Normal Entrance
	var i = 0;
	dialogue[7][1][i][languages.english] = "My most esteemed customers.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Welcome.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Hey.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Need anything?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Back already?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Welcome back.";
	i += 1;
	dialogue[7][1][i][languages.english] = "How was the trip?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Good to see you back safe and sound.";
	#endregion
	
	#region New Items Entrance
	var i = 0;
	dialogue[7][2][i][languages.english] = "Got some new goods in stock, you gotta check 'em out.";
	i += 1;
	dialogue[7][2][i][languages.english] = "Guess what I found deep in the storage!";
	#endregion
	
	#region Buy Option
	var i = 0;
	dialogue[7][3][i][languages.english] = "Whaddya want?";
	i += 1;
	dialogue[7][3][i][languages.english] = "Anything interesting?";
	i += 1;
	dialogue[7][3][i][languages.english] = "You gotta fork over some cash before you go and try to mess with the boss. Heh.";
	i += 1;
	dialogue[7][3][i][languages.english] = "Nice looking trinket right there, don't you agree?";
	#endregion
	
	#region Purchase Item
	var i = 0;
	dialogue[7][4][i][languages.english] = "Thank you for your patronage.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Heh.";
	i += 1;
	dialogue[7][4][i][languages.english] = "How generous!";
	i += 1;
	dialogue[7][4][i][languages.english] = "Nice choice.";
	i += 1;
	dialogue[7][4][i][languages.english] = "You have an eye for goods, don’t you.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Good choice.";
	i += 1;
	dialogue[7][4][i][languages.english] = "I hope that serves you well.";
	i += 1;
	dialogue[7][4][i][languages.english] = "That's a good one.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Pleasure doing business.";
	i += 1;
	dialogue[7][4][i][languages.english] = "I could see you eyeing that one, heh.";
	#endregion
	
	#region Not Enough Money
	var i = 0;
	dialogue[7][5][i][languages.english] = "I ain't running a charity here.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Ain’t giving valuables away for free. It wouldn't be a shop, would it?";
	i += 1;
	dialogue[7][5][i][languages.english] = "Come back when you're a little richer.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Wallet's looking a bit thin there, buddy.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Bit broke at the moment?";
	i += 1;
	dialogue[7][5][i][languages.english] = "I'm afraid I can't settle for this price.";
	i += 1;
	dialogue[7][5][i][languages.english] = "For this price I could only get you this hopefully not-expired coupon for a pizza place, heh.";
	#endregion
	
	#region Talk Options
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.english] = "'Why sell to us?'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.english] = "'About yourself'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.english] = "'The Boss'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.english] = "'The Depths'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.english] = "'Why are you still here?'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.english] = "'Old Boss'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.arabic] = "";
	#endregion
	
	#region Leave Shop
	var i = 0;
	dialogue[7][7][i][languages.english] = "'Til next time.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Good luck, you're gonna need it.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Come back soon.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Almost my lunch break anyway.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Don't be gone too long.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Yeah, yeah.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Gotta take a break.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Don't die.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Hope you're satisfied.";
	#endregion
	
	#region "Why Sell To Us?"
	var i = 0;
	dialogue[7][8][i][languages.english] = "There's money to be made. I take that opportunity and roll with it.";
	i += 1;
	dialogue[7][8][i][languages.english] = "Sometimes selling stuff I find in storage to the very people I was hired to keep out of the facility, you know?";
	i += 1;
	dialogue[7][8][i][languages.english] = "I don't get paid enough to care about the new boss' personal beef anyhow, I'm just the janitor here, after all.";
	#endregion
	
	#region "About Yourself"
	var i = 0;
	dialogue[7][9][i][languages.english] = "Phil.";
	i += 1;
	dialogue[7][9][i][languages.english] = "I'm here to offer some goods that might give you a chance to make it out of here in one piece. For that I’ll get my share of your well-earned money.";
	#endregion
	
	#region "The Boss"
	var i = 0;
	dialogue[7][10][i][languages.english] = "Haven't actually seen him in person.";
	i += 1;
	dialogue[7][10][i][languages.english] = "Seems like a scary guy. Me and the other rookies just work for him over an agreement.";
	i += 1;
	dialogue[7][10][i][languages.english] = "I have no clue what he intends to do with this facility, though I couldn't care less.";
	i += 1;
	dialogue[7][10][i][languages.english] = "It's much better than that one job I had a couple years back. Food delivery blows when you have to fly through miles of empty space.";
	i += 1;
	dialogue[7][10][i][languages.english] = "...";
	i += 1;
	dialogue[7][10][i][languages.english] = "I wouldn't really go snooping my nose somewhere it doesn't belong. Better stay as far away from the guy as possible.";
	i += 1;
	dialogue[7][10][i][languages.english] = "His weird henchmen give me the creeps.";
	#endregion
	
	#region "The Depths"
	var i = 0;
	dialogue[7][11][i][languages.english] = "So the rumors really were true, huh? There was a giant blob in here keeping the place stable...";
	i += 1;
	dialogue[7][11][i][languages.english] = "Given the whole facility's been blown to bits, I take it you somehow managed to destroy it.";
	i += 1;
	dialogue[7][11][i][languages.english] = "I guess you really aren't messing around. You might actually have a shot at fighting the boss.";
	#endregion
	
	#region "Why Are You Still Here?"
	var i = 0;
	dialogue[7][12][i][languages.english] = "Bet I can find some real goods in all this debris.";
	i += 1;
	dialogue[7][12][i][languages.english] = "Sell those off to some other sucker and pile up some cash for a vacation.";
	i += 1;
	dialogue[7][12][i][languages.english] = "Just gotta hold out hope that you strike gold!";
	#endregion
	
	#region "Old Boss"
	var i = 0;
	dialogue[7][13][i][languages.english] = "We’re not from here, you know.";
	i += 1;
	dialogue[7][13][i][languages.english] = "My homeplanet might be a chill place but the overpopulation made finding jobs a lot harder.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Not like I’m asking for it, working overtime ain’t my thing really.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Our old boss was too naive of a guy, cared about our well being more than anything. Foolish if you ask me.";
	i += 1;
	dialogue[7][13][i][languages.english] = "That shady guy ruling this place came to our boss and offered free jobs for the rest of us.";
	i += 1;
	dialogue[7][13][i][languages.english] = "The old man couldn’t say no to that, and sent us off to this junkyard of a place.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Now that our new boss left us, I’ll evaluate this situation like how a smart businessman would.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Taking a nice, sweet break and slacking off like there’s no tomorrow.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Just ring the bell if you wanna have a deal.";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}