///description Customize - Paints

function scr_Customize_Paints()
{
	var i = 0;

	sprayPaintTitle[i] = "Friendly Pink";
	sprayPaintDescription[i] = "Kirby's Default!";
	sprayPaintUnlocked[i] = global.friendlyPinkSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Default";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_FriendlyPink;
	sprayPaintColor[i] = make_color_rgb(248,160,216);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Yellow";
	sprayPaintDescription[i] = "Yellow like a lemon, very sour!";
	sprayPaintUnlocked[i] = global.yellowSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Default";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Yellow;
	sprayPaintColor[i] = make_color_rgb(248,208,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Red";
	sprayPaintDescription[i] = "Reminiscent of a ripe strawberry, yum!";
	sprayPaintUnlocked[i] = global.redSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Default";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Red;
	sprayPaintColor[i] = make_color_rgb(248,0,56);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Green";
	sprayPaintDescription[i] = "Don't worry, it isn't sick!";
	sprayPaintUnlocked[i] = global.greenSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Default";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Green;
	sprayPaintColor[i] = make_color_rgb(120,248,40);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Dreamy Blueberry";
	sprayPaintDescription[i] = "Resembling a tasty blueberry!";
	sprayPaintUnlocked[i] = global.dreamyBlueberrySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Default";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_DreamyBlueberry;
	sprayPaintColor[i] = make_color_rgb(160,229,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Waddle Waddle";
	sprayPaintDescription[i] = "Wanya wanya?";
	sprayPaintUnlocked[i] = global.waddleWaddleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Fill xxx entries in the Bestiary";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_WaddleWaddle;
	sprayPaintColor[i] = make_color_rgb(248,120,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Mystic";
	sprayPaintDescription[i] = "Accompanied by nasty flux!";
	sprayPaintUnlocked[i] = global.mysticSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Fill xxx entries in the Bestiary";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mystic;
	sprayPaintColor[i] = make_color_rgb(144,92,196);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Shadow of the Mirror";
	sprayPaintDescription[i] = "Mischievous reflection!";
	sprayPaintUnlocked[i] = global.shadowOfTheMirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Fill xxx entries in the Bestiary";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
	sprayPaintColor[i] = make_color_rgb(39,10,47);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Greenjolt";
	sprayPaintDescription[i] = "Gamejolt green!";
	sprayPaintUnlocked[i] = global.greenjoltSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Log Into Gamejolt";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_GreenJolt;
	sprayPaintColor[i] = make_color_rgb(176,255,81);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Butter Knife";
	sprayPaintDescription[i] = "Pairs nicely with toast.";
	sprayPaintUnlocked[i] = global.butterKnifeSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Log Into Gamejolt";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_ButterKnife;
	sprayPaintColor[i] = make_color_rgb(239,237,122);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Blurple";
	sprayPaintDescription[i] = "Discord's signature mix of blue and purple.";
	sprayPaintUnlocked[i] = global.blurpleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Log Into Discord";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Blurple;
	sprayPaintColor[i] = make_color_rgb(182,153,239);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Beam";
	sprayPaintDescription[i] = "Bright orange of a beam whip!";
	sprayPaintUnlocked[i] = global.beamSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Beam Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Beam;
	sprayPaintColor[i] = make_color_rgb(248,216,96);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Stone";
	sprayPaintDescription[i] = "You're gonna need a shower after getting covered in dirt!";
	sprayPaintUnlocked[i] = global.stoneSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Stone Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Stone;
	sprayPaintColor[i] = make_color_rgb(216,136,104);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Mirror";
	sprayPaintDescription[i] = "The normal reflection!";
	sprayPaintUnlocked[i] = global.mirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Mirror Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintColor[i] = make_color_rgb(248,224,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Fire";
	sprayPaintDescription[i] = "Don't burn yourself on this!";
	sprayPaintUnlocked[i] = global.fireSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Fire Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Fire;
	sprayPaintColor[i] = make_color_rgb(248,104,120);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Ice";
	sprayPaintDescription[i] = "Brrrrr... its cold!";
	sprayPaintUnlocked[i] = global.iceSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Ice Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Ice;
	sprayPaintColor[i] = make_color_rgb(144,248,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Plasma";
	sprayPaintDescription[i] = "BZZZZZZZRT!";
	sprayPaintUnlocked[i] = global.plasmaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Get a Gold Medal on Plasma Ability Challenge";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Plasma;
	sprayPaintColor[i] = make_color_rgb(176,248,104);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Unearthly Hand";
	sprayPaintDescription[i] = "Gamble's default!";
	sprayPaintUnlocked[i] = global.unearthlyHandSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Unlock ??????";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_UnearthlyHand;
	sprayPaintColor[i] = make_color_rgb(255,217,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "So Meta";
	sprayPaintDescription[i] = "Meta Knight's default, Fight me!";
	sprayPaintUnlocked[i] = global.soMetaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Unlock ???? ??????";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SoMeta;
	sprayPaintColor[i] = make_color_rgb(0,0,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Telltale Keeby";
	sprayPaintDescription[i] = "Keeby's default, Golf time already?";
	sprayPaintUnlocked[i] = global.telltaleKeebySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Unlock ?????";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_TelltaleKeeby;
	sprayPaintColor[i] = make_color_rgb(255,246,122);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Royal Yarn";
	sprayPaintDescription[i] = "Prince Fluff's default, It feels like pants!";
	sprayPaintUnlocked[i] = global.royalYarnSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "Unlock ?????? ?????";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_RoyalYarn;
	sprayPaintColor[i] = make_color_rgb(96,212,255);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Smiley White";
	sprayPaintDescription[i] = "...";
	sprayPaintUnlocked[i] = global.smileyWhiteSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "...";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SmileyWhite;
	sprayPaintColor[i] = make_color_rgb(30,30,30);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;

	sprayPaintTitle[i] = "Edd";
	sprayPaintDescription[i] = "Subhuman!";
	sprayPaintUnlocked[i] = global.eddSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "...";
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Edd;
	sprayPaintColor[i] = make_color_rgb(115,102,98);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
}