///@description Main

#region Inputs
scr_Player_Inputs(player);
#endregion

if (!global.pause)
{
	#region Variables
	grounded = false;
	if (place_meeting(x,y + 1,obj_ParentWall))
	{
		collidingWall = instance_place(x,y + 1,obj_ParentWall);
		if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal)))) grounded = true;
	}
	else if (place_meeting(x,y + 1,obj_Spring))
	{
		//var collidingSpring = instance_place(x,y + 1,obj_Spring);
		grounded = true;
	}
	
	wallAbove = false;
	wallAboveCollidingWall = -1;
	if (place_meeting(x,y - 1,obj_Wall))
	{
		wallAboveCollidingWall = instance_place(x,y - 1,obj_Wall);
		if ((!wallAboveCollidingWall.platform) or ((wallAboveCollidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > wallAboveCollidingWall.y + wallAboveCollidingWall.vsp + 20 + vspFinal)))) wallAbove = true;
	}
	
	footFrontGrounded = false;
	if (place_meeting(bodyX,footFrontY - 27,obj_Wall))
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
	
	footBackGrounded = false;
	if (place_meeting(bodyX,footBackY - 21,obj_Wall))
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
	
	#region Activate
	if (!active)
	{
		with (obj_Player)
		{
			if ((place_meeting(x,y,other)) and (keyUpPressed))
			{
				other.active = true;
				other.owner = id;
				other.player = player;
				other.footTurn = 0;
				other.footTurnRecoil = false;
				other.footFrontWalking = false;
				other.footBackWalking = false;
				other.footTurnTimer = 0;
				visible = false;
				mechIndex = other;
				attackTimer = -1;
				state = playerStates.insideMech;
				
			}
		}
	}
	else
	{
		if (state == heavyLobsterStates.normal)
		with (owner)
		{
			if (keySelectPressed)
			{
				other.owner = -1;
				other.active = false;
				other.footFrontWalking = true;
				other.footBackWalking = true;
				other.footTurnTimer = -1;
				visible = true;
				dir = 1;
				mechIndex = -1;
				invincible = false;
				vsp = -3;
				jumpLimit = false;
				jumpLimitTimer = jumpLimitTimerMax;
				state = playerStates.normal;
			}
		}
	}
	#endregion
	
	#region States
	if (!active) state = heavyLobsterStates.normal;
	
	switch (state)
	{
		#region Normal
		case heavyLobsterStates.normal:
		scr_Mechs_HeavyLobster_States_Normal();
		break;
		#endregion
		
		#region Duck
		case heavyLobsterStates.duck:
		scr_Mechs_HeavyLobster_States_Duck();
		break;
		#endregion
		
		#region Dash Attack
		case heavyLobsterStates.dashAttack:
		break;
		#endregion
		
		#region Fire Attack
		case heavyLobsterStates.fireAttack:
		break;
		#endregion
	}
	#endregion
	
	#region Positions
	activeLerp = lerp(activeLerp,(!active) or (state == heavyLobsterStates.duck) or (state == heavyLobsterStates.dashAttack),.2);
	
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
	clawFrontY = lerp(clawFrontY,y + 19 + (activeLerp * 10),.2 + (!grounded * .2));
	
	clawBackXOffset = lerp(clawBackXOffset,!footTurn,.2);
	clawBackX = x + ((24 + (clawBackXOffset * 6)) * dirX);
	clawBackY = lerp(clawBackY,y + 10 + (activeLerp * 10),.2 + (!grounded * .2));
	#endregion
	
	#region Horn Animation
	if (hornIndex < sprite_get_number(sprHorns) - 1) hornIndex += sprite_get_speed(sprHorns) / 60;
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
	
	#region Size
	image_xscale = scale * dirX;
	image_yscale = scale;
	#endregion
	
	#region Foot Vsp
	footFrontY += footFrontVsp + vsp;
	footBackY += footBackVsp + vsp;
	#endregion
}