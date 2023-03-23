///@description Draw GUI

#region Boss Healthbar
if (hbActive)
{
	bossHealthbarAlpha = 1;
	
	with (obj_Player)
	{
		if (point_in_rectangle(x,y,279,2,475,32)) bossHealthbarAlpha = .5;
	}
	
	switch (healthbarIndex)
	{
		#region Mini-Boss
		case 1:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite_ext(sprBossIcon,0,306 + bossHealthbarShakeX,7 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_MiniBoss_Bg,0,333 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_MiniBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerBack),333 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_MiniBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerFront),333 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_MiniBoss_Border,0,303 + bossHealthbarShakeX,4 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if (sprBossText != -1) draw_sprite_ext(sprBossText,0,340 + bossHealthbarShakeX,2 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		break;
		#endregion
		
		#region Flux Mini-Boss
		case 2:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite_ext(sprBossIcon,0,284 + bossHealthbarShakeX,10 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_Flux_Bg,0,328 + bossHealthbarShakeX,28 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Flux_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerBack),328 + bossHealthbarShakeX,28 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Flux_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerFront),328 + bossHealthbarShakeX,28 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_Flux_Border,0,278 + bossHealthbarShakeX,4 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if (sprBossText != -1) draw_sprite_ext(sprBossText,0,329 + bossHealthbarShakeX,7 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		break;
		#endregion
		
		#region Boss
		case 3:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite_ext(sprBossIcon,0,283 + bossHealthbarShakeX,9 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_Boss_Bg,0,309 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Boss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerBack),309 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerFront),309 + bossHealthbarShakeX,20 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_Boss_Border,0,279 + bossHealthbarShakeX,4 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if (sprBossText != -1) draw_sprite_ext(sprBossText,0,316 + bossHealthbarShakeX,2 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		break;
		#endregion
		
		#region Doomsday
		case 4:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		draw_sprite_ext(spr_Healthbar_Doomsday_Bg,0,187 + bossHealthbarShakeX,31 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Doomsday_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerBack),187 + bossHealthbarShakeX,31 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_Doomsday_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerFront),187 + bossHealthbarShakeX,31 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_Doomsday_Border,0,133 + bossHealthbarShakeX,4 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if (sprBossText != -1) draw_sprite_ext(sprBossText,0,194 + bossHealthbarShakeX,13 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		break;
		#endregion
		
		#region NES Boss
		case 5:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite_ext(sprBossIcon,0,287 + bossHealthbarShakeX,6 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if ((global.shaders) and (hbPalette != -1)) pal_swap_set(hbPalette,1,false);
		//draw_sprite_ext(sprite_index,image_index,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
		if ((global.shaders) and (hbPalette != -1)) pal_swap_reset();
		draw_sprite_ext(spr_Healthbar_NESBoss_Bg,0,311 + bossHealthbarShakeX,18 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_NESBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_NESBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_NESBoss_InnerBack),311 + bossHealthbarShakeX,18 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_part_ext(spr_Healthbar_NESBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_NESBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_NESBoss_InnerFront),311 + bossHealthbarShakeX,18 + bossHealthbarShakeY,1,1,image_blend,bossHealthbarAlpha);
		draw_sprite_ext(spr_Healthbar_NESBoss_Border,0,283 + bossHealthbarShakeX,2 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		if (sprBossText != -1) draw_sprite_ext(sprBossText,0,316 + bossHealthbarShakeX,3 + bossHealthbarShakeY,1,1,image_angle,image_blend,bossHealthbarAlpha);
		break;
		#endregion
	}
}
#endregion