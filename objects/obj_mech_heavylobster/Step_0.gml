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
	#endregion
	
	#region Movement
	if (!attack)
	{
		if (keyRightHold)
		{
			dirX = 1;
			walkDirX = 1;
			hsp = movespeed * walkDirX;
		}
		if (keyLeftHold)
		{
			dirX = -1;
			walkDirX = -1;
			hsp = movespeed * walkDirX;
		}
	}
	
	if ((attack) or (((!keyRightHold) and (!keyLeftHold)) or ((keyRightHold) and (keyLeftHold))))
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
	#endregion
	
	#region Jump
	if ((grounded) and (!wallAbove) and (keyJumpPressed))
	{
		vsp -= jumpspeed;
	}
	#endregion
	
	#region Collision
	scr_Player_Collision(playerMechs.heavyLobster);
	#endregion
	
	#region Positions
	bodyX = x;
	bodyY = y;
	
	if(hsp == 0){
		stepDir = 1;
	}
	if(movingFoot == 0){
		footFrontHeight += stepSpeed*stepDir;
		if(footFrontHeight < stepHeight && hsp != 0){
			footFrontHeight = stepHeight;
			stepDir = 1;
		}else if(footFrontHeight > 0){
			footFrontHeight = 0;
			stepDir = -1;
			movingFoot = 1;
		}	
	}else{
		footBackHeight += stepSpeed*stepDir;
		if(footBackHeight < stepHeight && hsp != 0){
			footBackHeight = stepHeight;
			stepDir = 1;
		}else if(footBackHeight > 0){
			footBackHeight = 0;
			stepDir = -1;
			movingFoot = 0;
		}
	}
	
	footFrontX = x + (-10 * dirX);
	footFrontY = y + footFrontYOffset + footFrontHeight;
	footFrontIndex = sprFoot;
	if(footFrontHeight < 0){
		footFrontIndex = sprFootAngled;
	}
	if (vsp == 0)
	{
		if (place_meeting(footFrontX,footFrontY + 14,obj_ParentWall))
		{
			var collidedWall = instance_place(footFrontX,footFrontY + 14,obj_ParentWall);
			if(footFrontHeight >= 0){
				footFrontY = collidedWall.bbox_top - 13;
			}
		}
		else
		{
			footFrontIndex = sprFootAngled;
		}
	}
	
	footBackX = x + (-8 * dirX);
	footBackY = y + footFrontYOffset + footBackHeight;
	footBackIndex = sprFoot;
	if(footBackHeight < 0){
		footBackIndex = sprFootAngled;
	}
	if (vsp == 0)
	{
		if (place_meeting(footBackX,footBackY + 17,obj_ParentWall))
		{
			var collidedWall = instance_place(footBackX,footBackY + 17,obj_ParentWall);
			if(footBackHeight >= 0){
				footBackY = collidedWall.bbox_top - 16;
			}
		}
		else
		{
			footBackIndex = sprFootAngled;
		}
	}
	
	clawFrontXOffset = lerp(clawFrontXOffset,footTurn,.2);
	clawFrontX = x + ((24 + clawFrontXOffset) * dirX);
	clawFrontY = y + 19;
	
	clawBackXOffset = 0;
	clawBackX = x + ((24 + clawBackXOffset) * dirX);
	clawBackY = y + 10;
	#endregion
	
	#region Size
	image_xscale = scale * dirX;
	image_yscale = scale;
	#endregion
}