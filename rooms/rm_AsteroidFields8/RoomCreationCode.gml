///@description Room Creation Code

#region Room Setup
var music = mus_AsteroidFields;
if (audio_is_playing(mus_AsteroidFields))
{
	var music = mus_AsteroidFields;
}
else if (audio_is_playing(mus_KazooFields))
{
	var music = mus_KazooFields;
}
else
{
	var music = mus_AsteroidFields;
	
	var musicRng = irandom_range(0,97);
	if (musicRng == 0) music = mus_KazooFields;
}

scr_RoomSetup(roomSetup.ggs_AsteroidFields,music);
#endregion