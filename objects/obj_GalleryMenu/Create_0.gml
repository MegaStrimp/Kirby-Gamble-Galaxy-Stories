///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
selectedPlayer = "Kirby";
selectedOwner = 0;
selectedPaint = 0;
page = "playerSelect";
textAlpha = 0;
textY = 147;
goBack = false;
starIndex = 0;

player1Offset = 0;
player2Offset = 0;
skinsOffset = 0;
sprayPaintsOffset = 0;
hatSkinsOffset = 0;
hatPaintsOffset = 0;
familiarsOffset = 0;

player1OffsetLerp = 0;
player2OffsetLerp = 0;
skinsOffsetLerp = 0;
sprayPaintsOffsetLerp = 0;
hatSkinsOffsetLerp = 0;
hatPaintsOffsetLerp = 0;
familiarsOffsetLerp = 0;
kirbyPaintOffsetLerp = 0;

//Characters

var i = 0;

characterTitle[i] = "Kirby";
characterSecretTitle[i] = "?????";
characterUnlocked[i] = global.kirbyUnlocked;
characterUnlockMethod[i] = "Default";
characterOffset[i] = 0;
characterOffsetLerp[i] = 0;
i += 1;

characterTitle[i] = "Gamble";
characterSecretTitle[i] = "??????";
characterUnlocked[i] = global.gambleUnlocked;
characterUnlockMethod[i] = "Default";
characterOffset[i] = 0;
characterOffsetLerp[i] = 0;
i += 1;

characterTitle[i] = "Meta Knight";
characterSecretTitle[i] = "???? ??????";
characterUnlocked[i] = global.metaKnightUnlocked;
characterUnlockMethod[i] = "Default";
characterOffset[i] = 0;
characterOffsetLerp[i] = 0;
i += 1;

characterTitle[i] = "Keeby";
characterSecretTitle[i] = "?????";
characterUnlocked[i] = global.keebyUnlocked;
characterUnlockMethod[i] = "Default";
characterOffset[i] = 0;
characterOffsetLerp[i] = 0;
i += 1;

characterTitle[i] = "Prince Fluff";
characterSecretTitle[i] = "?????? ?????";
characterUnlocked[i] = global.princeFluffUnlocked;
characterUnlockMethod[i] = "Default";
characterOffset[i] = 0;
characterOffsetLerp[i] = 0;
i += 1;

//Paints

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
sprayPaintDescription[i] = "Yellow like a lemon,\nvery sour!";
sprayPaintUnlocked[i] = global.yellowSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Default";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Yellow;
sprayPaintColor[i] = make_color_rgb(248,208,0);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Red";
sprayPaintDescription[i] = "Reminiscent of a ripe\nstrawberry, yum!";
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
sprayPaintDescription[i] = @"Discord's signature mix of
blue and purple.";
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
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Beam Ability Challenge";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Beam;
sprayPaintColor[i] = make_color_rgb(248,216,96);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Stone";
sprayPaintDescription[i] = @"You're gonna need a shower
after getting covered in dirt!";
sprayPaintUnlocked[i] = global.stoneSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Stone Ability Challenge";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Stone;
sprayPaintColor[i] = make_color_rgb(216,136,104);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Mirror";
sprayPaintDescription[i] = "The normal reflection!";
sprayPaintUnlocked[i] = global.mirrorSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Mirror Ability Challenge";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mirror;
sprayPaintColor[i] = make_color_rgb(248,224,248);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Fire";
sprayPaintDescription[i] = "Don't burn yourself on this!";
sprayPaintUnlocked[i] = global.fireSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Fire Ability Challenge";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Fire;
sprayPaintColor[i] = make_color_rgb(248,104,120);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Ice";
sprayPaintDescription[i] = "Brrrrr... its cold!";
sprayPaintUnlocked[i] = global.iceSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Ice Ability Challenge";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Ice;
sprayPaintColor[i] = make_color_rgb(144,248,248);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Plasma";
sprayPaintDescription[i] = "BZZZZZZZRT!";
sprayPaintUnlocked[i] = global.plasmaSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = @"Get a Gold Medal on
Plasma Ability Challenge";
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
sprayPaintDescription[i] = @"Meta Knight's default,
Fight me!";
sprayPaintUnlocked[i] = global.soMetaSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Unlock ???? ??????";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SoMeta;
sprayPaintColor[i] = make_color_rgb(0,0,248);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Telltale Keeby";
sprayPaintDescription[i] = @"Keeby's default,
Golf time already?";
sprayPaintUnlocked[i] = global.telltaleKeebySprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Unlock ?????";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_TelltaleKeeby;
sprayPaintColor[i] = make_color_rgb(255,246,122);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Royal Yarn";
sprayPaintDescription[i] = @"Prince Fluff's default,
It feels like pants!";
sprayPaintUnlocked[i] = global.royalYarnSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Unlock ?????? ?????";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_RoyalYarn;
sprayPaintColor[i] = make_color_rgb(96,212,255);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Smiley White";
sprayPaintDescription[i] = "It's Yellow";
sprayPaintUnlocked[i] = global.smileyWhiteSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Log Into Discord";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SmileyWhite;
sprayPaintColor[i] = make_color_rgb(30,30,30);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

sprayPaintTitle[i] = "Edd";
sprayPaintDescription[i] = "Subhuman!";
sprayPaintUnlocked[i] = global.eddSprayPaintUnlocked;
sprayPaintUnlockMethod[i] = "Log Into Discord";
sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Edd;
sprayPaintColor[i] = make_color_rgb(115,102,98);
sprayPaintOffset[i] = 0;
sprayPaintOffsetLerp[i] = 0;
i += 1;

//Familiars

var i = 0;

familiarTitle[i] = "Gamble";
familiarDescription[i] = @"Kirby's mysterious new companion, he comes
from an unknown world and wants to help stop
the coming threat.";
familiarUnlocked[i] = true;
familiarUnlockMethod[i] = "Default";
familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Gamble;
familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarColor[i] = make_color_rgb(248,160,216);
familiarOffset[i] = 0;
familiarOffsetLerp[i] = 0;
i += 1;

familiarTitle[i] = "Happy Pea";
familiarDescription[i] = @"A plant has come to help?! He can
keep foes away from Kirby!";
familiarUnlocked[i] = true;
familiarUnlockMethod[i] = "Default";
familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_HappyPea;
familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarColor[i] = make_color_rgb(248,160,216);
familiarOffset[i] = 0;
familiarOffsetLerp[i] = 0;
i += 1;

familiarTitle[i] = "Epic Jar";
familiarDescription[i] = "Explosive!";
familiarUnlocked[i] = true;
familiarUnlockMethod[i] = "Default";
familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_EpicJar;
familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarColor[i] = make_color_rgb(248,160,216);
familiarOffset[i] = 0;
familiarOffsetLerp[i] = 0;
i += 1;

familiarTitle[i] = "Krackle";
familiarDescription[i] = "Puff!";
familiarUnlocked[i] = true;
familiarUnlockMethod[i] = "Default";
familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Krackle;
familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
familiarColor[i] = make_color_rgb(248,160,216);
familiarOffset[i] = 0;
familiarOffsetLerp[i] = 0;
i += 1;

//Background

var gold = irandom_range(0,9);
if (gold == 0) layer_background_change(layer_background_get_id("CustomizeBackground"),bg_Customize_Gold);
layer_background_xscale(layer_background_get_id("CustomizeBackground"),.75);
layer_background_yscale(layer_background_get_id("CustomizeBackground"),.75);

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";