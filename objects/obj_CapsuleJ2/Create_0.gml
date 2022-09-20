/// @description Initialization
// You can write your code in this editor

event_inherited();

randomize();

//active = false; // whether or not the enemy is active. Turns true when the player gets close (ie, J2 appears in the camera view relative to the player)

//current_action = "hovering"; // possible actions: "hovering", "dashstart", "jetdash" (other strings use the default walking case)
current_action = enemyAttacks.capsuleJ2_hovering; 
//current_action = "dashstart";

// Physics

hAccel = 0.08;
hMax = 1.65;
hsp = 0;
jumpSpeed = 0.24;
ascendMax = 1.25;
gravNormal = 0.12;
gravLimitNormal = 2.85;
vsp = 0;

// Sprites

mask_index = spr_24SquareOriginless_Mask;

sprWalk = spr_CapsuleJ2_Normal_Walk;
sprHoverRise = spr_CapsuleJ2_Normal_Hover2;
sprHoverFall = spr_CapsuleJ2_Normal_Hover1;
sprHurt = spr_CapsuleJ2_Normal_Hurt;
sprDashStart = spr_CapsuleJ2_Normal_DashStart;
sprJetDash = spr_CapsuleJ2_Normal_JetDash;

parJetSmoke = spr_Particle_CapsuleJ2Smoke;
parJetFire = spr_Particle_CapsuleJ2Fire;

image_speed = 0.6; // setting speed of the walking animation

// Other variables

palette_index = spr_CapsuleJ2_Normal_Palette_SpeedDemon;
hp = 16;
dmg = 1;
ability = playerAbilities.jet;
points = 200;
has_landed = false;
can_rocketdash = false;
tracking_obj = obj_Player;
v_range = 30; // the vertical range J2 looks for when trying to jetdash
tracking_range = 60;

// Timers

action_timer = 80; // used for the dashstart and jetdash actions, and the cooldown before another dash can be made
jet_flametime = 0;


//// find collision object (will need to update this to support all tiles in integration)
//coll_obj = obj_Wall;