///@description Initialize Variables

//Other Variables

state = 0;
stateEx = 0;
active = true;
destroy = false;
stopsCutscene = false;
playerName = "";
p1 = -1;
with (obj_Player) if (player == 0) other.p1 = id;

//Timers

stateExTimer = -1;