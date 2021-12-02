///@description Creation Code

//Characters

/*
	0 - Kirby
	1 - Waddle Doo
	2 - Wheelie
	3 - Chef Kawasaki
	4 - King Dedede
	5 - Meta Knight
	---
	0 - Character Name
	1 - Line Sprite
	2 - Idle Front Sprite
	3 - Idle Back Sprite
	4 - Attack Sprite
	5 - Hurt Sprite
*/

character[0][0] = "Kirby";
character[0][1] = spr_SamuraiKirby_Hud_LineKirby;
character[0][2] = spr_SamuraiKirby_Kirby_IdleFront;
character[0][3] = spr_SamuraiKirby_Kirby_IdleBack;
character[0][4] = spr_SamuraiKirby_Kirby_Attack;
character[0][5] = spr_SamuraiKirby_Kirby_Hurt;

character[1][0] = "Waddle Doo";
character[1][1] = spr_SamuraiKirby_Hud_LineWaddleDoo;
character[1][2] = spr_SamuraiKirby_WaddleDoo_IdleFront;
character[1][3] = spr_SamuraiKirby_Kirby_IdleBack;

character[2][0] = "Wheelie";
character[2][1] = spr_SamuraiKirby_Hud_LineWheelie;
character[2][2] = spr_SamuraiKirby_Wheelie_IdleFront;
character[2][3] = spr_SamuraiKirby_Kirby_IdleBack;

character[3][0] = "Chef Kawasaki";
character[3][1] = spr_SamuraiKirby_Hud_LineChefKawasaki;
character[3][2] = spr_SamuraiKirby_ChefKawasaki_IdleFront;
character[3][3] = spr_SamuraiKirby_Kirby_IdleBack;

character[4][0] = "King Dedede";
character[4][1] = spr_SamuraiKirby_Hud_LineKingDedede;
character[4][2] = spr_SamuraiKirby_KingDedede_IdleFront;
character[4][3] = spr_SamuraiKirby_Kirby_IdleBack;

character[5][0] = "Meta Knight";
character[5][1] = spr_SamuraiKirby_Hud_LineMetaKnight;
character[5][2] = spr_SamuraiKirby_MetaKnight_IdleFront;
character[5][3] = spr_SamuraiKirby_Kirby_IdleBack;

//Other Variables

gameState = "ready";
blackBoxState = 0;
p1Character = 0;
p2Character = 1;
blackAlphaBox = false;
blackAlphaVal = blackAlphaBox;
LineCharacterPos = 0;

//Timers

blackBoxTimer = 60;