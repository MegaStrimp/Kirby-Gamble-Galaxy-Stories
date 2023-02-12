///@description Initialize Variables

#region Other Variables
state = 0;
timer = 0;
#endregion

#region Enums
enum firstTimeSetupStates
{
	auth1,
	auth2,
	auth3,
	directX,
	discord,
	language,
	audio,
	display,
	configComplete,
	done,
	transition
}
#endregion

#region Timer
stateTimer = 30;
#endregion