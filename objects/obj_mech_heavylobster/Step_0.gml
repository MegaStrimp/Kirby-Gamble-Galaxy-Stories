///@description Main

#region Inputs
scr_Player_Inputs(player);
#endregion

if (!global.pause)
{
	#region Variables
	var grounded = false;
	if (place_meeting(x,y + 1,obj_ParentWall))
	{
		var collidingWall = instance_place(x,y + 1,obj_ParentWall);
		if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal)))) grounded = true;
	}
	else if (place_meeting(x,y + 1,obj_Spring))
	{
		//var collidingSpring = instance_place(x,y + 1,obj_Spring);
		grounded = true;
	}
	
	var wallAbove = false;
	if (place_meeting(x,y - 1,obj_Wall))
	{
		var collidingWall = instance_place(x,y - 1,obj_Wall);
		if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))) wallAbove = true;
	}
	
	var footFrontGrounded = false;
	if (place_meeting(footFrontX,footFrontY - 27,obj_Wall))
	{
		footFrontGrounded = true;
		if (footFrontVsp > .5)
		{
			if (audio_is_playing(snd_HeavyLobsterWalk1)) audio_stop_sound(snd_HeavyLobsterWalk1);
			if (audio_is_playing(snd_HeavyLobsterWalk2)) audio_stop_sound(snd_HeavyLobsterWalk2);
			audio_play_sound(snd_HeavyLobsterWalk1,0,false);
			clawFrontY += 3;
			clawBackY += 3;
			bodyY += 5;
			hornIndex = 0;
			footFrontWalking = false;
		}
		footFrontGravFinal = 0;
		footFrontVsp = 0;
	}
	
	var footBackGrounded = false;
	if (place_meeting(footBackX,footBackY - 21,obj_Wall))
	{
		footBackGrounded = true;
		if (footBackVsp > .5)
		{
			if (audio_is_playing(snd_HeavyLobsterWalk1)) audio_stop_sound(snd_HeavyLobsterWalk1);
			if (audio_is_playing(snd_HeavyLobsterWalk2)) audio_stop_sound(snd_HeavyLobsterWalk2);
			audio_play_sound(snd_HeavyLobsterWalk2,0,false);
			clawFrontY += 3;
			clawBackY += 3;
			bodyY += 3;
			hornIndex = 0;
			footBackWalking = false;
		}
		footBackGravFinal = 0;
		footBackVsp = 0;
	}
	#endregion
	
	#region Movement
	if ((!attack) and (active))
	{
		if (keyRightHold)
		{
			footTurnRecoil = true;
			dirX = 1;
			walkDirX = 1;
			hsp = movespeed * walkDirX;
		}
		if (keyLeftHold)
		{
			footTurnRecoil = true;
			dirX = -1;
			walkDirX = -1;
			hsp = movespeed * walkDirX;
		}
	}
	
	if ((attack) or (!active) or (((!keyRightHold) and (!keyLeftHold)) or ((keyRightHold) and (keyLeftHold))))
	{
		hsp = 0;
	}
	#endregion
	
	#region Gravity
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	if (footFrontVsp < gravLimitFoot)
	{
		footFrontVsp += gravFoot;
	}
	else
	{
		footFrontVsp = gravLimitFoot;
	}
	
	if (footBackVsp < gravLimitFoot)
	{
		footBackVsp += gravFoot;
	}
	else
	{
		footBackVsp = gravLimitFoot;
	}
	#endregion
	
	#region Jump
	if ((active) and (grounded) and (!wallAbove) and (keyJumpPressed))
	{
		footFrontVsp = -1.5;
		footBackJumpTimer = footBackJumpTimerMax;
		vsp -= jumpspeed;
	}
	
	footFrontXOffset = x + (-10 * dirX);
	footBackXOffset = x + (-8 * dirX);
	#endregion
	
	#region Positions
	activeLerp = lerp(activeLerp,!active,.2);
	
	bodyX = x;
	bodyY = lerp(bodyY,y + (activeLerp * 20),.2 + (!grounded * .2));
	
	if ((!footFrontGrounded) or (!grounded)) footFrontX = lerp(footFrontX,footFrontXOffset + (footFrontWalking * vsp),.2);
	footFrontY = clamp(footFrontY,y - 10,y + footFrontYOffset + (10 * !grounded));
	if ((footFrontGrounded) or (grounded))
	{
		footFrontIndex = sprFoot;
	}
	else
	{
		footFrontIndex = sprFootAngled;
	}
	
	if ((!footBackGrounded) or (!grounded)) footBackX = lerp(footBackX,footBackXOffset + (footBackWalking * vsp),.2);
	footBackIndex = sprFoot;
	footBackY = clamp(footBackY,y - 16,y + footBackYOffset + (10 * !grounded));
	if ((footBackGrounded) or (grounded))
	{
		footBackIndex = sprFoot;
	}
	else
	{
		footBackIndex = sprFootAngled;
	}
	
	clawFrontXOffset = lerp(clawFrontXOffset,footTurn,.2);
	clawFrontX = x + ((24 + (clawFrontXOffset * 6)) * dirX);
	clawFrontY = lerp(clawFrontY,y + 19 + (activeLerp * 10),.2);
	
	clawBackXOffset = lerp(clawBackXOffset,!footTurn,.2);
	clawBackX = x + ((24 + (clawBackXOffset * 6)) * dirX);
	clawBackY = lerp(clawBackY,y + 10 + (activeLerp * 10),.2);
	#endregion
	
	#region Horn Animation
	if (hornIndex < sprite_get_number(sprHorns) - 1) hornIndex += sprite_get_speed(sprHorns) / 60;
	#endregion
	
	#region Size
	image_xscale = scale * dirX;
	image_yscale = scale;
	#endregion
	
	#region Foot Back Jump Timer
	if (footBackJumpTimer > 0)
	{
		footBackJumpTimer -= 1;
	}
	else if (footBackJumpTimer == 0)
	{
		footBackVsp = -1.5;
		footBackJumpTimer = -1;
	}
	#endregion
	
	#region Foot Turn Timer
	if (footTurnTimer > 0)
	{
		footTurnTimer -= 1;
	}
	else if (footTurnTimer == 0)
	{
		if ((footTurnRecoil) or ((grounded) and (hsp != 0)))
		{
			if (footTurnRecoil) footTurnRecoil = false;
			if (footTurn)
			{
				footBackVsp = -1;
				footBackWalking = true;
				
			}
			else
			{
				footFrontVsp = -1;
				footFrontWalking = true;
			}
			footTurn = !footTurn;
			footTurnTimer = footTurnTimerMax;
		}
	}
	#endregion
	
	#region Collision
	scr_Player_Collision(playerMechs.heavyLobster);
	#endregion
	
	#region Foot Vsp
	footFrontY += footFrontVsp + vsp;
	footBackY += footBackVsp + vsp;
	#endregion
}

if (keyboard_check_pressed(ord("A"))) active = !active;