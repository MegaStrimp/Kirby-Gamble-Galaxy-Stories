///@description Main

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

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	#region Hurt Player
	if (!death) scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
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
		
		auraIndex += .2;
		if (auraIndex >= sprite_get_number(sprAura)) auraIndex -= sprite_get_number(sprAura);
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
		
		#region Death
		case 4:
		break;
		#endregion
	}
	#endregion
	
	#region Timers
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
			hurtable = true;
			attackChooseTimer = attackChooseTimerMax;
			bossHbHp = hp;
			phase += 1;
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