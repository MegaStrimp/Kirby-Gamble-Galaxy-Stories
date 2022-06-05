///@description Main

if (!global.pause)
{
	#region Name Tags
	switch (global.characterP1)
	{
		case playerCharacters.kirby:
		playerName[talkingCharacter.kirby] = "Kirby";
		playerName[talkingCharacter.gamble] = "Puffball";
		playerName[talkingCharacter.metaKnight] = "Kirby";
		playerName[talkingCharacter.match] = "Kirby";
		break;
		
		case playerCharacters.gamble:
		playerName[talkingCharacter.kirby] = "Gamble";
		playerName[talkingCharacter.gamble] = "Gamble";
		playerName[talkingCharacter.metaKnight] = "Gamble";
		playerName[talkingCharacter.match] = "Gamble";
		break;
		
		case playerCharacters.metaKnight:
		playerName[talkingCharacter.kirby] = "Meta Knight";
		playerName[talkingCharacter.gamble] = "Meta Knight";
		playerName[talkingCharacter.metaKnight] = "Meta Knight";
		playerName[talkingCharacter.match] = "Meta Knight";
		break;
		
		case playerCharacters.keeby:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.gooey:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.magolor:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.waddleDee:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.waddleDoo:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.brontoBurt:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.twizzy:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.tookey:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.sirKibble:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.bouncy:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.gordo:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.bloodGordo:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
		
		case playerCharacters.mysticDoo:
		playerName[talkingCharacter.kirby] = "";
		playerName[talkingCharacter.gamble] = "";
		playerName[talkingCharacter.metaKnight] = "";
		playerName[talkingCharacter.match] = "";
		break;
	}
	#endregion
	
	//States
	
	if (active)
	{
		switch (state)
		{
			#region Intro
			case cutscenes.story_Intro:
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.color = c_black;
				dialogue.text[array] = "There is trouble in Dream Land";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.hasResetTimer = true;
				dialogue.resetTimerMax[array] = 210;
				dialogue.resetTimer = dialogue.resetTimerMax[array];
				array += 1;
				dialogue.text[array] = "King Dedede and his soldiers,";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.hasResetTimer = true;
				dialogue.resetTimerMax[array] = 210;
				array += 1;
				dialogue.text[array] = "Have stolen all the food yet again!";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.hasResetTimer = true;
				dialogue.resetTimerMax[array] = 270;
				array += 1;
				dialogue.text[array] = "Meanwhile...";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.hasResetTimer = true;
				dialogue.resetTimerMax[array] = -1;
				destroy = true;
				break;
			}
			break;
			#endregion
			
			#region Meeting Gamble
			case cutscenes.story_MeetingGamble:
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "Mmggh...";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_LayDown,snd_TextGamble);
				array += 1;
				text = "Where am I?";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_LayDown,snd_TextGamble);
				break;
				
				case 2:
				stateExTimer = 120;
				break;
				
				case 3:
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = @"Y-you freed me from those branches. Heh, I really
owe you one there, buddy.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Glad,snd_TextGamble);
				array += 1;
				text = "Anyway I must be goin-";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Normal,snd_TextGamble);
				break;
				
				case 4:
				stateExTimer = 120;
				break;
				
				case 5:
				if (!audio_is_playing(mus_Cutscene_Calm)) global.musicPlaying = audio_play_sound(mus_Cutscene_Calm,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "Wait a minute, this is Popstar, isn't it?";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_LayDown,snd_TextGamble);
				break;
				
				case 6:
				stateExTimer = 120;
				break;
				
				case 7:
				if (!audio_is_playing(mus_Cutscene_Calm)) global.musicPlaying = audio_play_sound(mus_Cutscene_Calm,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "Phew... I actually made it here in one piece.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_EyesOpen,snd_TextGamble);
				array += 1;
				text = "Say, now that I think of it...";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Normal,snd_TextGamble);
				array += 1;
				text = "You might be just the guy I'm looking for.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Joy,snd_TextGamble);
				array += 1;
				text = "...?";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_StarryChild,spr_Hud_Dialogue_Portrait_Kirby_Normal,snd_ButtonYes);
				array += 1;
				text = @"Seeing how you managed to best this monstrous tree
thingy, I have no doubt that you can help me!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Glad,snd_TextGamble);
				break;
				
				case 8:
				stateExTimer = 120;
				break;
				
				case 9:
				if (!audio_is_playing(mus_Cutscene_Calm)) global.musicPlaying = audio_play_sound(mus_Cutscene_Calm,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = @"I've heard tales about this planet and how there
resided a hero who could defeat almost any evil.
Though I didn't think that hero would be so...";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Sad,snd_TextGamble);
				array += 1;
				text = "Stubby.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Sad,snd_TextGamble);
				array += 1;
				text = "...";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_StarryChild,spr_Hud_Dialogue_Portrait_Kirby_Jolly,snd_ButtonYes);
				array += 1;
				text = "Anyway, that's why I came here.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Normal,snd_TextGamble);
				array += 1;
				text = @"Your planet's in grave danger! He has returned!
The Cosmic Fluxbender will definitely show up if
he finds out I'm here.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Stressed,snd_TextGamble);
				array += 1;
				text = @"And that's bad news, for you, for me, bad! I need
to go back to Asteroid Fields and finish the
Fluxbender off.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Angry,snd_TextGamble);
				array += 1;
				break;
				
				case 10:
				stateExTimer = 120;
				break;
				
				case 11:
				if (!audio_is_playing(mus_Cutscene_Calm)) global.musicPlaying = audio_play_sound(mus_Cutscene_Calm,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = @"Do you have any idea how we could reach there as
quickly as possible? A way out into space? To fly
long distances quickly?";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_TipsFingers,snd_TextGamble);
				break;
				
				case 12:
				stateExTimer = 120;
				break;
				
				case 13:
				if (!audio_is_playing(mus_Cutscene_Calm)) global.musicPlaying = audio_play_sound(mus_Cutscene_Calm,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "A masked swordsman?";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_EyesOpen,snd_TextGamble);
				array += 1;
				text = "He has an entire battleship?!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Glad,snd_TextGamble);
				array += 1;
				text = "Well that's great, let's go already!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Joy,snd_TextGamble);
				break;
			}
			break;
			#endregion
			
			#region Extra Tutorial - Treasure
			case cutscenes.exTut_Treasure:
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "You found a treasure!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Tutorial,-1,-1,snd_ButtonYes);
				array += 1;
				text = "Check the [Collections Menu] to track your collectibles and treasures!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Tutorial,-1,-1,snd_ButtonYes);
				break;
				
				case 2:
				global.tutorial = false;
				destroy = true;
				break;
			}
			break;
			#endregion
			
			#region Extra Tutorial - Anti Float
			case cutscenes.exTut_AntiFloat:
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.changeOwnerState = true;
				var text = "Be careful " + "Kirby" + "!";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Normal,snd_TextGamble);
				array += 1;
				text = "I sense an airless space here.";
				scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Normal,snd_TextGamble);
				array += 1;
				if ((instance_exists(p1)) and (p1.canFloat))
				{
					text = "You may be unable to float if you enter that area. Have to rely on your jumping skills.";
					scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Smart,snd_TextGamble);
				}
				else
				{
					text = "I don't know if that would effect you or not, but just to be safe.";
					scr_Dialogue(dialogue,array,text,spr_Hud_Dialogue_Textbox_Normal,spr_Hud_Dialogue_Background_YellowCard,spr_Hud_Dialogue_Portrait_Gamble_Annoyed,snd_TextGamble);
				}
				break;
				
				case 2:
				global.tutorial = false;
				destroy = true;
				break;
			}
			break;
			#endregion
		}
		active = false;
	}
	
	//State Ex Timer
	
	if (stateExTimer > 0)
	{
		stateExTimer -= 1;
	}
	else if (stateExTimer == 0)
	{
		stateEx++;
		active = true;
	    stateExTimer = -1;
	}
	
	//Destroy
	
	if (destroy)
	{
		if (stopsCutscene) global.cutscene = false;
		instance_destroy();
	}
}