{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_AsteroidFields7",
  "creationCodeFile": "${project_dir}/rooms/rm_AsteroidFields7/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_2BABD852_1_1_1_4","path":"rooms/rm_AsteroidFields7/rm_AsteroidFields7.yy",},
    {"name":"inst_457A59D_1_1_1_4","path":"rooms/rm_AsteroidFields7/rm_AsteroidFields7.yy",},
    {"name":"inst_5DF36C29_1_1_1_4","path":"rooms/rm_AsteroidFields7/rm_AsteroidFields7.yy",},
    {"name":"inst_A59FDFA_4_1_1_4","path":"rooms/rm_AsteroidFields7/rm_AsteroidFields7.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets","assets":[],"depth":0,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":100,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_A59FDFA_4_1_1_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Player","path":"objects/obj_Player/obj_Player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":60.0,"y":636.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemies","depth":200,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFieldsFront","depth":300,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-2201,0,-14,-2147483648,-149,0,-14,-2147483648,-149,0,-14,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-108,0,-12,-2147483648,-40,0,-3,-2147483648,-1002,0,-326,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"TopCollision","depth":400,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Environment","depth":500,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2BABD852_1_1_1_4","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":108.0,"y":640.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Pillars","depth":600,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5DF36C29_1_1_1_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Background_AsteroidFields1","path":"objects/obj_Background_AsteroidFields1/obj_Background_AsteroidFields1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":180.0,"y":624.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFieldsSlopes","depth":700,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4890,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFields","depth":800,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4238,0,-6,3,-157,0,-6,57,-483,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFields3D1","depth":900,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4890,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFields3D2","depth":1000,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4890,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFieldsLadders","depth":1100,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,-5,-2147483648,-158,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields","path":"tilesets/ts_AsteroidFields/ts_AsteroidFields.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","depth":1200,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"BackAssets","assets":[],"depth":1300,"effectEnabled":true,"effectType":null,"gridX":6,"gridY":6,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFieldsBack","depth":1400,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4890,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields_Back","path":"tilesets/ts_AsteroidFields_Back/ts_AsteroidFields_Back.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tileAsteroidFieldsStars","depth":1500,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":30,"SerialiseWidth":163,"TileCompressedData":[
-4890,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_AsteroidFields_Stars","path":"tilesets/ts_AsteroidFields_Stars/ts_AsteroidFields_Stars.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Gradient","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":1600,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg_Gradient1","path":"sprites/bg_Gradient1/bg_Gradient1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":634,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"AsteroidFields_Cube_Front","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1700,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg_AsteroidFields_Debris_Blue_Front","path":"sprites/bg_AsteroidFields_Debris_Blue_Front/bg_AsteroidFields_Debris_Blue_Front.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":170,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"AsteroidFields_Cube_Mid","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1800,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg_AsteroidFields_Debris_Blue_Mid","path":"sprites/bg_AsteroidFields_Debris_Blue_Mid/bg_AsteroidFields_Debris_Blue_Mid.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":170,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"AsteroidFields_Cube_Back","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1900,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg_AsteroidFields_Debris_Blue_Back","path":"sprites/bg_AsteroidFields_Debris_Blue_Back/bg_AsteroidFields_Debris_Blue_Back.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":170,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"BackEnvironment","depth":2000,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_457A59D_1_1_1_4","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_AsteroidFieldsBackgroundController","path":"objects/obj_AsteroidFieldsBackgroundController/obj_AsteroidFieldsBackgroundController.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background_Parallax1","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":2100,"effectEnabled":true,"effectType":null,"gridX":24,"gridY":24,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg_AsteroidFields_Sky","path":"sprites/bg_AsteroidFields_Sky/bg_AsteroidFields_Sky.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Asteroid Fields",
    "path": "folders/Rooms/Stages/Chapter 1/Asteroid Fields.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 720,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 3912,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}