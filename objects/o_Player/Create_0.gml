/// @desc Declare Variables
SPEED = 10
ROT_SPEED = 7

weapon = 1
damageMin = 1
damageMax = 2

SHOT_TIME = 4
shotTimer = SHOT_TIME

dt = 0

AIRSHIP_SPAWN_MAX = 200
airshipSpawnTimer = AIRSHIP_SPAWN_MAX
airships[0] = instance_create_layer( 0,0,"Enemies",o_Airship )
curAirship = 1

damageNums[0] = instance_create_layer( 9999,9999,"HitNumbers",o_DamageNum )
curDamageNum = 1