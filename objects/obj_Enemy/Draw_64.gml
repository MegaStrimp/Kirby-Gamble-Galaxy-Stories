///@description Draw GUI

//Mini Boss Healthbar

if (isMiniBoss)
{
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_MiniBoss_Border) / 2),camera_get_view_y(gameView) + 5);
	draw_sprite(spr_Healthbar_MiniBoss_Bg,0,328,28);
	draw_sprite_part(spr_Healthbar_MiniBoss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerBack),328,28);
	draw_sprite_part(spr_Healthbar_MiniBoss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_MiniBoss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_MiniBoss_InnerFront),328,28);
	draw_sprite(spr_Healthbar_MiniBoss_Border,0,278,4);
}

//Boss Healthbar

if (isBoss)
{
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,98,11);
	draw_sprite(spr_Healthbar_Boss_Bg,0,144,31);
	draw_sprite_part(spr_Healthbar_Boss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerBack),144,31);
	draw_sprite_part(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerFront),144,31);
	draw_sprite(spr_Healthbar_Boss_Border,0,90,4);
}