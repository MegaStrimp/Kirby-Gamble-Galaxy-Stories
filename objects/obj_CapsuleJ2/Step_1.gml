///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
    switch (character)
    {
        //Normal

        case 0:
        sprWalk = spr_CapsuleJ2_Normal_Walk;
        sprDashStart = spr_CapsuleJ2_Normal_DashStart;
		sprHoverRise = spr_CapsuleJ2_Normal_Hover2;
		sprHoverFall = spr_CapsuleJ2_Normal_Hover1;
        sprJetDash = spr_CapsuleJ2_Normal_JetDash;
        sprHurt = spr_CapsuleJ2_Normal_Hurt;
        break;
    }
}
#endregion

#region Event Inherited
event_inherited();
#endregion