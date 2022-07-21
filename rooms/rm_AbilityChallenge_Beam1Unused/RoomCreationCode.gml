///@description Room Creation Code

//Variables

global.discordDetailText = "Ability Challenge - Beam";
global.discordLargeImage = "beam_icon";
global.abilityP1 = playerAbilities.beam;

//Stage Number

global.stageNumber = 0;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("AbilityChallenge_Background"),.75);
layer_background_yscale(layer_background_get_id("AbilityChallenge_Background"),.75);

//Music

if (!audio_is_playing(mus_AbilityChallenge))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_AbilityChallenge,0,true);
}