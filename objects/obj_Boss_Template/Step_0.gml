///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		break;
		#endregion
	}
}
#endregion

#region Death
if (death)
{
	//Reset All Timers
	
	attackNumber = -1;
	attackChooseTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Healthbar
if (!childPauseHard)
{
	if (hbActive)
	{
		if (hbSetup)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			bossHbHp += hp / 60;
			if (bossHbHp >= hp)
			{
				bossHbHp = hp;
				hbSetup = false;
			}
		}
		else
		{
			bossHbHp = hp;
		}
	}
}
#endregion

#region Hurt Player
if (!death) scr_Enemy_HurtsPlayer(dmg);
#endregion

if ((!global.pause) and (((!global.cutscene) or ((global.cutscene) and (phase == 0))) and (pausedInCutscenes)))
{
	#region Phases
	switch (phase)
	{
		#region Ready Phase 1
		case 0:
		break;
		#endregion
		
		#region Phase 1
		case 1:
		#region Animation
		image_speed = 1;
		#endregion
		break;
		#endregion
		
		#region Ready Phase 2
		case 2:
		break;
		#endregion
		
		#region Phase 2
		case 3:
		break;
		#endregion
	}
	#endregion
	
	#region Timers
	#region Spawn State Timer
	if (spawnStateTimer > 0)
	{
		spawnStateTimer -= 1;
	}
	else if (spawnStateTimer == 0)
	{
		spawnState += 1;
		switch (spawnState)
		{
			case 0:
			break;
		}
		spawnStateTimer = -1;
	}
	#endregion
	
	#region Phase Change Timer
	if (phaseChangeTimer > 0)
	{
		phaseChangeTimer -= 1;
	}
	else if (phaseChangeTimer == 0)
	{
		switch (phase)
		{
			case 0:
			global.cutscene = false;
			spawnState = 0;
			attackChooseTimer = attackChooseTimerMax;
			hbActive = true;
			hurtable = true;
			break;
		}
		phaseChangeTimer = -1;
	}
	#endregion
	
	#region Attack Choose Timer
	if (attackChooseTimer > 0)
	{
		attackChooseTimer -= 1;
	}
	else if (attackChooseTimer == 0)
	{
		attackNumber = -1;
		switch (phase)
		{
			case 1:
			attackNumber = choose();
			break;
		}
		
		switch (attackNumber)
		{
			case 0:
			break;
		}
		attackChooseTimer = -1;
	}
	#endregion
	#endregion
}
else
{
	image_speed = 0;
}