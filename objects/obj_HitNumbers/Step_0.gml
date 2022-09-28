///@description Main

if (!global.pause)
{
	#region Color
	if (canChangeColor)
	{
		red = lerp(red,redTarget,.05);
		green = lerp(green,greenTarget,.05);
		blue = lerp(blue,blueTarget,.05);
		color = make_color_rgb(red,green,blue);
	}
	#endregion
	
	#region Rotation
	if (angleSpd != 0)
	{
		image_angle += angleSpd;
	}
	#endregion
	
	#region Movement
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	if (clampY) vsp = max(0,vsp);
	
	x += hsp;
	y += vsp;
	#endregion
	
	#region Destroy
	if (destroy)
	{
		image_alpha -= .05;
		if (image_alpha <= 0) instance_destroy();
	}
	#endregion
	
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if ((splitAmount != 0) and (string_length(number) > 1))
		{
			var charCount1 = floor(string_length(number) / 2);
			var charCount2 = string_length(number) - charCount1;
			
			var dmg1 = "";
			var dmg2 = "";
			
			for (var i = 0; i < charCount1; ++i)
			{
				dmg1 += string_char_at(number,i);
			}
			
			for (var i = charCount1 + 1; i <= charCount1 + charCount2; ++i)
			{
				dmg2 += string_char_at(number,i);
			}
			
			for (var i = 0; i < splitAmount; i++)
			{
				var dir = 1;
				if ((i % 2) == 0) dir = -1;
				var hitNumber = instance_create_depth(x + (6 * dir),y,-900,obj_HitNumbers);
				hitNumber.number = dmg2;
				if ((i % 2) == 0) hitNumber.number = dmg1;
				hitNumber.hsp = dir;
				hitNumber.vsp = vsp;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = color;
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
			}
			instance_destroy();
		}
		destroy = true;
		destroyTimer = -1;
	}
	#endregion
	
	#region Flash Timer
	if (flashTimer > 0)
	{
		flashTimer -= 1;
	}
	else if (flashTimer == 0)
	{
		color = flashColor[flashColorCount];
		flashColorCount += 1;
		if (flashColorCount >= (array_length(flashColor))) flashColorCount -= array_length(flashColor);
		flashTimer = flashTimerMax;
	}
	#endregion
}