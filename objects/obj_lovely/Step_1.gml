///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Lovely_Normal_Face;
		sprAttack = spr_Lovely_Normal_Face_Attack;
		sprAttackDiagonal = spr_Lovely_Normal_Face_Attack_Diagonal;
		sprFaceIdle = spr_Lovely_Normal_Eyes_Blink;
		sprFaceWink = spr_Lovely_Normal_Eyes_Wink;
		sprFaceDamage = spr_Lovely_Normal_Eyes_Damaged;
		sprBalls = spr_Lovely_Normal_Balls;
		sprHurt = -1;
		break;
		#endregion
	}
	spriteIndex = sprIdle;
	sprFace = sprFaceIdle;
}
#endregion

#region Event Inherited
event_inherited();
#endregion