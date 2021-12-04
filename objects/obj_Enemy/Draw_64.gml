/// @description Draw GUI

//Boss Healthbar

if (isBoss)
{
	bossHbHp = max(bossHbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,bossHbHp,.025);
	
	if (sprBossIcon != -1) draw_sprite(sprBossIcon,0,(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_Boss_Border) / 2),camera_get_view_y(gameView) + 6);
	draw_sprite(spr_Healthbar_Boss_Bg,0,316,27);
	draw_sprite_part(spr_Healthbar_Boss_InnerBack,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerBack) * (healthbarBackHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerBack),316,27);
	draw_sprite_part(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * (bossHbHp / hpMax),sprite_get_height(spr_Healthbar_Boss_InnerFront),316,27);
	draw_sprite(spr_Healthbar_Boss_Border,0,264,2);
}


