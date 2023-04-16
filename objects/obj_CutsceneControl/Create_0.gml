///@description Initialize Variables

//Other Variables

state = 0;
stateEx = 0;
active = true;
destroy = false;
stopsCutscene = false;
p1 = -1;
with (obj_Player) if (player == 0) other.p1 = id;
targetPalette = -1;

//Timers

stateExTimer = -1;

//Enum

enum cutscenes
{
	story_BewareTheBeast,
	story_Intro,
	story_MeetingGamble,
	story_MeetingMetaKnight,
	story_HalberdEmergency,
	story_ArrivingAtAsteroidFields,
	story_ExplainingEverything,
	story_Dethroned,
	
	exTut_Treasure,
	exTut_AntiFloat,
	
	npc_GreenGreens_AdultDee,
	npc_GreenGreens_SignmasterDee,
	npc_GreenGreens_BebuDee,
	npc_GreenGreens_CospiracyDee,
	npc_GreenGreens_GladBouncy,
	npc_GreenGreens_LumberjackKibble,
	npc_GreenGreens_TrappedDee1,
	npc_GreenGreens_TrappedDee2,
	npc_GreenGreens_TrappedDee3,
	npc_GreenGreens_TrappedDee4,
	
	npc_Gamblion_DreamySpirit_Test
}
