///@description Main

if (!global.pause)
{
	//States
	
	if (active)
	{
		switch (state)
		{
			case "intro":
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
			
			case "introNew":
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				var array = 0;
				var dialogue = instance_create_depth(room_width / 2,room_height - 75,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.color = c_black;
				dialogue.text[array] = "[Some time after Haltmann Works Company incident...]";
				dialogue.textSpeed = 30;
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.text_halign = fa_center;
				array += 1;
				dialogue.text[array] = "Citizens of Planet Popstar are enjoying their lively days";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.text_halign = fa_center;
				array += 1;
				dialogue.text[array] = @"Ever since the planet has been restored,
peace surrounded the land";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.text_halign = fa_center;
				array += 1;
				dialogue.text[array] = "Meanwhile, at the edge of Gamble Galaxy...";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.text_halign = fa_center;
				array += 1;
				dialogue.text[array] = @"An unearthly, battle-scarred being is approaching
Planet Popstar!";
				dialogue.sprTextbox[array] = -1;
				dialogue.sprBackground[array] = -1;
				dialogue.sprPortrait[array] = -1;
				dialogue.textSound[array] = snd_ButtonYes;
				dialogue.text_halign = fa_center;
				destroy = true;
				break;
			}
			break;
			
			case "meetingGamble":
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
			
			case "shadowMatchTest":
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 30;
				break;
				
				case 1:
				audio_stop_all();
				if (!audio_is_playing(mus_Cutscene_Fluxbender)) global.musicPlaying = audio_play_sound(mus_Cutscene_Fluxbender,0,true);
				var array = 0;
				var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[array] = @"Can we pretend that airplanes in the night sky are
like shootin' stars";
				dialogue.sprTextbox[array] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[array] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[array] = spr_Hud_Dialogue_Portrait_Gamble_Scared;
				dialogue.textSound[array] = snd_TextGamble;
				array += 1;
				dialogue.text[array] = @"I could really use a wish right now, wish right now,
wish right now";
				dialogue.sprTextbox[array] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[array] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[array] = spr_Hud_Dialogue_Portrait_ShadowMatch_Normal;
				dialogue.textSound[array] = snd_TextMatch;
				dialogue.changeOwnerState = true;
				destroy = true;
				break;
			}
			break;
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