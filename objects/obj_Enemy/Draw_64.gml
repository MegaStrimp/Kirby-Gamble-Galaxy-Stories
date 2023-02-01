///@description Draw GUI

//Boss Healthbar

if (hbActive)
{
	switch (healthbarIndex)
	{
		#region Mini-Boss
		case 1:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,306,7);
		draw_sprite(spr_Healthbar_MiniBoss_Bg,0,333,20);
		draw_sprite_part(spr_Healthbar_MiniBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerBack),333,20);
		draw_sprite_part(spr_Healthbar_MiniBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerFront),333,20);
		draw_sprite(spr_Healthbar_MiniBoss_Border,0,303,4);
		if (sprBossText != -1) draw_sprite(sprBossText,0,340,2);
		break;
		#endregion
		
		#region Flux Mini-Boss
		case 2:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,284,10);
		draw_sprite(spr_Healthbar_Flux_Bg,0,328,28);
		draw_sprite_part(spr_Healthbar_Flux_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerBack),328,28);
		draw_sprite_part(spr_Healthbar_Flux_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Flux_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Flux_InnerFront),328,28);
		draw_sprite(spr_Healthbar_Flux_Border,0,278,4);
		if (sprBossText != -1) draw_sprite(sprBossText,0,329,7);
		break;
		#endregion
		
		#region Boss
		case 3:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,283,9);
		draw_sprite(spr_Healthbar_Boss_Bg,0,309,20);
		draw_sprite_part(spr_Healthbar_Boss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerBack),309,20);
		draw_sprite_part(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerFront),309,20);
		draw_sprite(spr_Healthbar_Boss_Border,0,279,4);
		if (sprBossText != -1) draw_sprite(sprBossText,0,316,2);
		break;
		#endregion
		
		#region Doomsday
		case 4:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		draw_sprite(spr_Healthbar_Doomsday_Bg,0,187,31);
		draw_sprite_part(spr_Healthbar_Doomsday_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerBack),187,31);
		draw_sprite_part(spr_Healthbar_Doomsday_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Doomsday_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Doomsday_InnerFront),187,31);
		draw_sprite(spr_Healthbar_Doomsday_Border,0,133,4);
		if (sprBossText != -1) draw_sprite(sprBossText,0,194,13);
		break;
		#endregion
		
		#region NES Boss
		case 5:
		bossHbHp = max(bossHbHp,0);
		if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
		
		if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,287,6);
		draw_sprite(spr_Healthbar_NESBoss_Bg,0,311,18);
		draw_sprite_part(spr_Healthbar_NESBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_NESBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_NESBoss_InnerBack),311,18);
		draw_sprite_part(spr_Healthbar_NESBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_NESBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_NESBoss_InnerFront),311,18);
		draw_sprite(spr_Healthbar_NESBoss_Border,0,283,2);
		if (sprBossText != -1) draw_sprite(sprBossText,0,316,3);
		break;
		#endregion
	}
}