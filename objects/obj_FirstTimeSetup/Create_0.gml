///@description Initialize Variables

#region Other Variables
state = 0;
timer = 0;
setStrings = false;
selection = -1;
subSelection = 0;
#endregion

#region Strings
string_True = str("Options.True");
string_False = str("Options.False");

string_Checks_Authenticating = str("First Time Setup.Checks.Authenticating");
string_Checks_DirectX = str("First Time Setup.Checks.DirectX");
string_Checks_Discord = str("First Time Setup.Checks.Discord");
string_Checks_Found = str("First Time Setup.Checks.Found");
string_Checks_NotFound = str("First Time Setup.Checks.Not Found");
string_Checks_Confirm = str("First Time Setup.Checks.Confirm");

string_SelectLanguage = str("First Time Setup.Language.Select Your Language");

string_AdjustAudio = str("First Time Setup.Audio.Adjust Your Audio");
string_Music = str("Options.Music");
string_SoundEffects = str("Options.Sound Effects");

string_AdjustDisplay = str("First Time Setup.Display.Adjust Your Display");
string_Fullscreen = str("Options.Fullscreen");
string_WindowSize = str("Options.Window Size");

string_End_ConfigComplete = str("First Time Setup.End.Config Complete");
string_End_Done = str("First Time Setup.End.Done");

languageIndex =
[
	"Languages.English",
    "Languages.Turkish",
    "Languages.German",
    "Languages.Italian",
    "Languages.French",
    "Languages.Polish",
    "Languages.Chinese",
    "Languages.Spanish",
    "Languages.Japanese",
    "Languages.Portuguese",
    "Languages.Norwegian",
    "Languages.Arabic"
]

languageArrayLength = languages.length;
#endregion

#region Languages
for (var i = 0; i < languages.length; i++) languageVal[i] = i;

languageArrayLength = languages.length;
#endregion

#region Enums
enum firstTimeSetupStates
{
	auth1,
	auth2,
	auth3,
	auth4,
	auth5,
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