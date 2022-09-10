///@description Initialize Variables

active = false; // whether or not the enemy is active. Turns true when the player gets close (ie, J2 appears in the camera view relative to the player)

attackNumber = enemyAttacks.capsuleJ2_hovering; // possible actions: enemyAttacks.capsuleJ2_hovering, enemyAttacks.capsuleJ2_dashStart, enemyAttacks.capsuleJ2_jetDash, enemyAttacks.capsuleJ2_bounceBack (other strings use the default walking case)
//attackNumber = enemyAttacks.capsuleJ2_dashStart;

image_speed = 0.6; // setting speed of the walking animation

has_landed = false;
can_rocketdash = false;

hover_dir = 1;

track_x = true;
track_y = true;

action_timer = 80; // used for the dashstart and jetdash actions, and the cooldown before another dash can be made

tracking_range = 120;

//hover_time = 60*9;

h_accel = 0.08;
h_maxspeed = 1.65;
h_speed = 0;

ascend_accel = 0.08;
ascend_max = 1.25;
grav = 0.12;
fall_max = 2.85;

v_speed = 0;

spr_dir = image_xscale;

// find player object
tracking_obj = obj_Player;

// find collision object (will need to update this to support all tiles in integration)
coll_obj = obj_Wall;

// jetdash variables
v_range = 30; // the vertical range J2 looks for when trying to jetdash

// jetflame variables
jet_flametime = 0;