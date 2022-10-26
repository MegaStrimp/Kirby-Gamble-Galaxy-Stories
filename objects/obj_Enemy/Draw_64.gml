///@description Draw GUI

//Boss Healthbar

switch (healthbarIndex)
{
	#region Mini-Boss
	case 1:
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,284,10);
	if (sprBossText != -1) draw_sprite(sprBossText,0,329,7);
	draw_sprite(spr_Healthbar_MiniBoss_Bg,0,328,28);
	draw_sprite_part(spr_Healthbar_MiniBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerBack),328,28);
	draw_sprite_part(spr_Healthbar_MiniBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerFront),328,28);
	draw_sprite(spr_Healthbar_MiniBoss_Border,0,278,4);
	break;
	#endregion
	
	#region Flux Mini-Boss
	case 2:
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,284,10);
	if (sprBossText != -1) draw_sprite(sprBossText,0,329,7);
	draw_sprite(spr_Healthbar_Flux_Bg,0,328,28);
	draw_sprite_part(spr_Healthbar_Flux_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerBack),328,28);
	draw_sprite_part(spr_Healthbar_Flux_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerFront),328,28);
	draw_sprite(spr_Healthbar_Flux_Border,0,278,4);
	break;
	#endregion
	
	#region Boss
	case 3:
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,98,11);
	if (sprBossText != -1) draw_sprite(sprBossText,0,155,10);
	draw_sprite(spr_Healthbar_Boss_Bg,0,144,31);
	draw_sprite_part(spr_Healthbar_Boss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerBack),144,31);
	draw_sprite_part(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerFront),144,31);
	draw_sprite(spr_Healthbar_Boss_Border,0,90,4);
	break;
	#endregion
	
	#region Doomsday
	case 4:
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossText != -1) draw_sprite(sprBossText,0,194,13);
	draw_sprite(spr_Healthbar_Doomsday_Bg,0,187,31);
	draw_sprite_part(spr_Healthbar_Doomsday_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerBack),187,31);
	draw_sprite_part(spr_Healthbar_Doomsday_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerFront),187,31);
	draw_sprite(spr_Healthbar_Doomsday_Border,0,133,4);
	break;
	#endregion
}