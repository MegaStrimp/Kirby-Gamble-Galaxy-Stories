///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		case 0:
		sprBody = spr_HeavyLobster_Normal_Body;
		sprHorns = spr_HeavyLobster_Normal_Horns;
		sprKnee = spr_HeavyLobster_Normal_Knee;
		sprFoot = spr_HeavyLobster_Normal_Foot;
		sprFootAngled = spr_HeavyLobster_Normal_FootAngled;
		sprClaw = spr_HeavyLobster_Normal_Claw;
		sprClawAttack = spr_HeavyLobster_Normal_ClawAttack;
		sprEye = spr_HeavyLobster_Normal_Eye;
		
		mask_index = spr_HeavyLobster_Normal_Mask;
		break;
	}
	activeLerp = !active;
	
	setupTimer = -1;
}
#endregion

#region Variables
var collidingWall = -1;

grounded = false;
groundedSlopeType = -1;
groundedWallDir = 1;
jumpCoyoteTimeBuffer = max(0,jumpCoyoteTimeBuffer - 1);
if (place_meeting(x,y + 1,obj_ParentWall))
{
	collidingWall = instance_place(x,y + 1,obj_ParentWall);
	if (collidingWall.slope) groundedSlopeType = collidingWall.slopeType;
	groundedWallDir = sign(collidingWall.image_xscale);
	if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyDownHold) or ((downHeld < downHeldPlatformMax) and (playerAbility != playerAbilities.ufo))) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal) and (!place_meeting(x,y + vspFinal,obj_Wall)))))
	{
		grounded = true;
		jumpCoyoteTimeBuffer = jumpCoyoteTimeBufferMax;
	}
}
else if (place_meeting(x,y + 1,obj_Spring))
{
	//var collidingSpring = instance_place(x,y + 1,obj_Spring);
	grounded = true;
}

wallAbove = false;
if (place_meeting(x,y - 1,obj_Wall))
{
	collidingWall = instance_place(x,y - 1,obj_Wall);
	if ((!collidingWall.platform)/* or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))*/) wallAbove = true;
}

jumpInputBuffer = max(0,jumpInputBuffer - 1);

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