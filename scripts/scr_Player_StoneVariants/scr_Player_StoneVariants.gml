///@description Player - Stone Variants
///@param {real} player Which player to check.

function scr_Player_StoneVariants(argument0,argument1)
{
	/*
	0 - Stone Sprite
	1 - Weight (How common the variant is)
	*/
	
	#region Arguments
	var character = argument0;
	var player = argument1;
	#endregion
	
	#region Stones
	var i = 0;
	
	switch (character)
	{
		#region Default/Kirby
		default:
		switch (player)
		{
			#region Default/P1
			default:
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_8t;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_KirbyStatue;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_StarRock;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Fist;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Brick;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_LuckyBlock;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_I3;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Buff;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Thwomp;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Cotta;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Glove;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Kabu;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_MysticDoo;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Traitors;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_8Bit;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_BossButch;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Possessed;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Isaac;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Pizzaface;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Samus;
			stoneVariantArray[i][1] = 2;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_3DS;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Pokey;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P1_Pikmin;
			stoneVariantArray[i][1] = 1;
			break;
			#endregion
			
			#region P2
			case 1:
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_8t;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_KirbyStatue;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_StarRock;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Fist;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Brick;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_LuckyBlock;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_I3;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Buff;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Thwomp;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Cotta;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Glove;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Kabu;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_MysticDoo;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Traitors;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_8Bit;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_BossButch;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Possessed;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Isaac;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Pizzaface;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Samus;
			stoneVariantArray[i][1] = 2;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_3DS;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Pokey;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P2_Pikmin;
			stoneVariantArray[i][1] = 1;
			break;
			#endregion
			
			#region P3
			case 2:
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_8t;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_KirbyStatue;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_StarRock;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Fist;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Brick;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_LuckyBlock;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_I3;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Buff;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Thwomp;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Cotta;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Glove;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Kabu;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_MysticDoo;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Traitors;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_8Bit;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_BossButch;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Possessed;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Isaac;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Pizzaface;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Samus;
			stoneVariantArray[i][1] = 2;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_3DS;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Pokey;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P3_Pikmin;
			stoneVariantArray[i][1] = 1;
			break;
			#endregion
			
			#region P4
			case 3:
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_8t;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_KirbyStatue;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_StarRock;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Fist;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Brick;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_LuckyBlock;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_I3;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Buff;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Thwomp;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Cotta;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Glove;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Kabu;
			stoneVariantArray[i][1] = 5;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_MysticDoo;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Traitors;
			stoneVariantArray[i][1] = 4;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_8Bit;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_BossButch;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Possessed;
			stoneVariantArray[i][1] = 3;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Isaac;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Pizzaface;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Samus;
			stoneVariantArray[i][1] = 2;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_3DS;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Pokey;
			stoneVariantArray[i][1] = 1;
			i += 1;
			stoneVariantArray[i][0] = spr_Kirby_Normal_StoneVariant_P4_Pikmin;
			stoneVariantArray[i][1] = 1;
			break;
			#endregion
		}
		break;
		#endregion
		
		#region Gooey
		case playerCharacters.gooey:
		switch (player)
		{
			#region Default/P1
			default:
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Slider;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Chuchu;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Blocky;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Efreeti;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_CaptainStitch;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_AltFriends;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Kirby;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P1_Jelly;
			stoneVariantArray[i][1] = 1;
			i += 1;
			break;
			#endregion
			
			#region P2
			case 1:
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Slider;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Chuchu;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Blocky;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Efreeti;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_CaptainStitch;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_AltFriends;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Kirby;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P2_Jelly;
			stoneVariantArray[i][1] = 1;
			i += 1;
			break;
			#endregion
			
			#region P3
			case 2:
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Slider;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Chuchu;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Blocky;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Efreeti;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_CaptainStitch;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_AltFriends;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Kirby;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P3_Jelly;
			stoneVariantArray[i][1] = 1;
			i += 1;
			break;
			#endregion
			
			#region P4
			case 3:
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Normal;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Slider;
			stoneVariantArray[i][1] = 10;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Chuchu;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Blocky;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Efreeti;
			stoneVariantArray[i][1] = 8;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_CaptainStitch;
			stoneVariantArray[i][1] = 7;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_AltFriends;
			stoneVariantArray[i][1] = 6;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Kirby;
			stoneVariantArray[i][1] = 9;
			i += 1;
			stoneVariantArray[i][0] = spr_Gooey_Normal_StoneVariant_P4_Jelly;
			stoneVariantArray[i][1] = 1;
			i += 1;
			break;
			#endregion
		}
		break;
		#endregion
	}
	#endregion
}