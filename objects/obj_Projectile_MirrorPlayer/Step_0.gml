///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Variables
	
	scr_Player_Inputs(player);
	
	if (instance_exists(owner))
    {
		//Afterimage
		
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.sprite_index = spriteIndex;
		afterimage.image_index = imageIndex;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .5;
		afterimage.paletteIndex = spr_Kirby_Normal_Palette_Misc_MirrorCyan;
		
        if (state == 0)
        {
            //Angle
            
			if ((!global.cutscene) and (!enemy))
			{
				with (owner)
				{
		            if (keyUpHold)
		            {
		                other.angleSpd = 5;
		            }
		            if (keyDownHold)
		            {
		                other.angleSpd = -5;
		            }
	            }
			}
			angle += angleSpd;
            if (angle >= 360) angle -= 360;
			angleSpd = lerp(angleSpd,0,.25);
    
            Center_X = owner.x;
            Center_Y = owner.y;
            x = lengthdir_x(orbit, angle) + Center_X;
            y = lengthdir_y(orbit, angle) + Center_Y;
            
            orbit += spd * dirX;
			
            //Animation
            
            if (orbit == (orbitMax * dirX))
            {
                if ((reverseTimer == -1) and (!reversed)) reverseTimer = 15;
				scaleExX = -.25;
				scaleExY = .25;
            }
            if (abs(orbit) >= orbitMax) or (orbit == 0)
            {
                imageIndex = 1;
            }
            else
            {
                imageIndex = 0;
				scaleExX = .25;
				scaleExY = -.25;
            }
            
            if (reversed)
            {
                if (orbit == 0)
                {
                    image_xscale = 1;
                    dirX = 1;
                    spd = 0;
                    if (restoreTimer == -1) restoreTimer = 15;
                }
                fricSpd = 0;
                orbit = clamp(orbit,-orbitMax,orbitMax);
            }
            else
            {
                fricSpd = .1;
                orbit = clamp(orbit,-orbitMax,orbitMax);
            }
            
            if ((!enemy) and (owner.attack = false) and
			((owner.player == 0) and (global.abilityP1 != playerAbilities.mirror))
			or ((owner.player == 1) and (global.abilityP2 != playerAbilities.mirror))
			or ((owner.player == 2) and (global.abilityP3 != playerAbilities.mirror))
			or ((owner.player == 3) and (global.abilityP4 != playerAbilities.mirror)))
            {
                instance_destroy();
            }
			
			//Animation
			
			scaleExX = lerp(scaleExX,0,scaleExSpd);
			scaleExY = lerp(scaleExY,0,scaleExSpd);
        }
		else if (state == 1)
		{
			//Movement
			
			if (abs(fric) < abs(spdBuiltIn))
			{
				fric += fricSpd;
			}
			else
			{
				fric = spdBuiltIn;
			}
			
			speed = spdBuiltIn - fric;
		    if (speed == 0)
		    {
		        if (restoreTimer == -1) restoreTimer = 30;
		    }
		    imageIndex = 1;
		}
		else if (state == 2)
		{
		    if (restoreTimer == -1) restoreTimer = 20;
		    imageIndex = 1;
		}
		
		//Reverse Timer
		
		if (reverseTimer > 0)
		{
			reverseTimer -= 1;
		}
		else if (reverseTimer == 0)
		{
			dirX = -dirX;
	        if (state == 0) angle = angle + (180 * -dirX);
	        reversed = true;
			reverseTimer = -1;
		}
		
		//Restore Timer
		
		if (restoreTimer > 0)
		{
			restoreTimer -= 1;
		}
		else if (restoreTimer == 0)
		{
			#region Variables
			switch (owner.player)
			{
				case 0:
				var playerAbility = global.abilityP1;
				var playerCharacter = global.characterP1;
				var playerSprayPaint = global.sprayPaintP1;
				break;
				
				case 1:
				var playerAbility = global.abilityP2;
				var playerCharacter = global.characterP2;
				var playerSprayPaint = global.sprayPaintP2;
				break;
				
				case 2:
				var playerAbility = global.abilityP3;
				var playerCharacter = global.characterP3;
				var playerSprayPaint = global.sprayPaintP3;
				break;
				
				case 3:
				var playerAbility = global.abilityP4;
				var playerCharacter = global.characterP4;
				var playerSprayPaint = global.sprayPaintP4;
				break;
			}
			#endregion
			if (state == 0)
	        {
	            if (owner.state == playerStates.mirrorDash)
	            {
	                owner.visible = true;
	                owner.attackTimer = 0;
					if ((owner.canFallRoll) and (owner.carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) owner.fallRoll = true;
	                owner.invincible = false;
	                owner.state = playerStates.normal;
	            }
	        }
	        if ((state == 1) or (state == 2))
	        {
	            if (lastReflection)
	            {
	                owner.visible = true;
	                owner.attackTimer = 0;
					if ((owner.canFallRoll) and (owner.carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) owner.fallRoll = true;
	                owner.invincible = false;
	                owner.state = playerStates.normal;
	            }
	        }
	        instance_destroy();
			restoreTimer = -1;
		}
    }
    else
    {
        instance_destroy();
    }
	
	//Position
	
	x += hsp;
	y += vsp;
}
else
{
	speed = 0;
}