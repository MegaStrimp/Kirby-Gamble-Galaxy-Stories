///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
    //Movement
    
	if (!global.cutscene)
	{
		if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
		{
			hsp += accel;
			dir = 1;
		}
		if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
		{
			hsp -= accel;
			dir = -1;
		}
		if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
		{
			vsp -= accel;
		}
		if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
		{
			vsp += accel;
		}
	}
	
	if ((((keyboard_check(keyDown)) and (keyboard_check(keyUp)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))) or ((gamepad_button_check(0,gp_padu)) and (gamepad_button_check(0,gp_padd)) and (!keyboard_check(keyDown)) and (!keyboard_check(keyUp))) or ((!keyboard_check(keyDown)) and (!keyboard_check(keyUp) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))))
	{
		if (vsp >= decel) vsp -= decel;
		if (vsp <= -decel) vsp += decel;
		if ((vsp > -decel) and (vsp < decel)) vsp = 0;
	}
	
	hsp = clamp(hsp, -maxSpeed, maxSpeed);
	vsp = clamp(vsp, -maxSpeed, maxSpeed);
	
	if ((((keyboard_check(keyLeft)) and (keyboard_check(keyRight)) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))) or ((gamepad_button_check(0,gp_padl)) and (gamepad_button_check(0,gp_padr)) and (!keyboard_check(keyLeft)) and (!keyboard_check(keyRight))) or ((!keyboard_check(keyLeft)) and (!keyboard_check(keyRight) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))))))
	{
		var ultiDecel = decel;
		if (hsp >= ultiDecel) hsp -= ultiDecel;
		if (hsp <= -ultiDecel) hsp += ultiDecel;
		if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
	}
    
    //Attack
	
	if (firingDelay > 0)
    {
        firingDelay -= 1;
    }
	
    if ((keyboard_check(keyAttack)) or (gamepad_button_check(0,gp_face2)))
    {
        if (firingDelay == 0)
        {
			switch (powerUp)
			{
				case 0:
				var proj = instance_create_depth(x + hsp,y + vsp,depth,obj_Skylands_Projectile_Player);
                proj.spd = -6;
                proj.sprite_index = sprBullet1;
                proj.direction = 270 + irandom_range(-5,5);
				proj.dmg = 6;
				break;
				
				case 1:
				var proj = instance_create_depth(x + hsp,y + vsp,depth,obj_Skylands_Projectile_Player);
                proj.spd = -9;
                proj.sprite_index = sprBullet2;
                proj.direction = 270 + irandom_range(-5,5);
				proj.dmg = 12;
				break;
				
				case 2:
				for (var i = 0; i < 3; i++)
				{
					var proj = instance_create_depth(x + hsp,y + vsp,depth,obj_Skylands_Projectile_Player);
	                proj.spd = 7;
	                proj.sprite_index = sprBullet3;
	                proj.direction = ((i + 1) * 45) + irandom_range(-5,5);
					proj.dmg = 16;
				}
				break;
			}
            firingDelay = firingDelayMax;
        }
    }
	
    firingDelayMax = 21 - (powerUp * 2);
	
	//Position
	
	x += hsp;
	y += vsp;
	
    x = clamp(x,0,room_width);
    y = clamp(y,0,room_height);
	
	//Character Setup Timer
	
	if (characterSetupTimer > 0)
	{
		characterSetupTimer -= 1;
	}
	else if (characterSetupTimer == 0)
	{
		if (player == 0)
		{
			var sprayPaint = global.sprayPaintP1;
		}
		else
		{
			var sprayPaint = global.sprayPaintP2;
		}
		
		var selectedCharacter = global.characterP1;
		if (player == 1) selectedCharacter = global.characterP2;
		
		paletteIndex = scr_SprayPaint_Setup(sprayPaint,selectedCharacter);
		characterSetupTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	image_xscale = scale * dir;
	image_yscale = scale;
	
	if (sign(hsp) == 0)
	{
		sprite_index = sprIdle;
	}
	else
	{
		sprite_index = sprMove;
	}
}
else
{
    image_speed = 0;
}