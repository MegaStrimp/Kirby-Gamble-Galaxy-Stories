///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = .02;
spdMin = .02;
spdMax = .2;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_BloodGordo_Normal_Idle;
sprAngry = spr_BloodGordo_Normal_Angry;
sprCautious = spr_BloodGordo_Normal_Cautious;
sprSleep = spr_BloodGordo_Normal_Sleep;
sprTriggered = spr_BloodGordo_Normal_Triggered;
sprHurt = -1;
sprAura = spr_BloodGordo_Normal_Aura;

//Other Variables

paletteIndex = spr_BloodGordo_Normal_Palette_BloodyThorns;
hp = bloodGordo_Hp;
dmg = bloodGordo_ContactDamage;
points = bloodGordo_Points;
hurtable = false;
hasGravity = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = true;
hasXKnockback = false;
hasYKnockback = false;
triggered = false;
triggerTreshold = -1;
triggerTresholdMax = 20;
retreated = true;
coreX = xstart;
coreY = ystart;
radius = 62;