// Declare Variables
SPEED = 10
ROT_SPEED = 7

weapon = 1
damageMin = 1
damageMax = 2

SHOT_TIME = 4
shotTimer = SHOT_TIME

dt = 0

AIRSHIP_SPAWN_MAX = 250
airshipSpawnTimer = AIRSHIP_SPAWN_MAX
for( var i = 0; i < 5; ++i )
	airships[i] = instance_create_layer( 0,0,"Enemies",o_Airship )
curAirship = 5

PLANE_SPAWN_MAX = 15
planeSpawnTimer = PLANE_SPAWN_MAX
planes[0] = instance_create_layer( 0,0,"Enemies",o_EnemyPlane )
curPlane = 1

damageNums[0] = instance_create_layer( 9999,9999,"HitNumbers",o_DamageNum )
curDamageNum = 1

INVUL_TIME = 50
invulPhase = INVUL_TIME + 1

HP_MAX = 20
hp = HP_MAX

canEnter = false

mapName = inst_24B8CE13