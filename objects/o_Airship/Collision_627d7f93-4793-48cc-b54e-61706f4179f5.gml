/// @desc Get Hurt By Bullet
hp -= global.curDMG

var num = instance_create_layer( x,y,"HitNumbers",o_DamageNum )
num.image_index = global.curDMG
inst_66F0DA5F.damageNums[inst_66F0DA5F.curDamageNum++] = num

if( hp < 1 )
	instance_destroy()