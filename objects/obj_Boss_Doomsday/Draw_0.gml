///@description Draw

#region Event Inherited
event_inherited();
#endregion

switch (phase)
{
	#region Default
	default:
	#region Draw Aura
	draw_sprite_ext(sprAura,auraIndex,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
	#endregion
	
	#region Draw Eye
	if (!global.pause)
	{
		eyeX = lerp(eyeX,x,.5);
		eyeY = lerp(eyeY,y,.5);
		eyeX = clamp(eyeX,x - 6,x + 6);
		eyeY = clamp(eyeY,y - 6,y + 6);
	}
	
	draw_sprite_ext(currentEyeSprite,eyeIndex,eyeX + ((canShakeX) * drawShakeX),eyeY + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
	#endregion
	break;
	#endregion
	
	#region Ready Phase 1
	case 0:
	#region Draw Eye
	var eyeShakeX = irandom_range(-2,2);
	var eyeShakeY = irandom_range(-2,2);
	var eyeShakeX = 0;
	var eyeShakeY = 0;
	
	if (spawnState >= 1) draw_sprite_ext(sprSpawnEye,spawnEyeIndex,x + eyeShakeX,y + eyeShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
	#endregion
	
	#region Draw Eye Flash
	if (spawnState >= 2) draw_sprite_ext(sprEyeFlash,spawnEyeFlashIndex,x,y,abs(image_xscale),abs(image_yscale),imageAngle,image_blend,image_alpha);
	#endregion
	break;
	#endregion
}

#region Debug
/*
draw_text(x,y - 12,string(state);
*/
#endregion
