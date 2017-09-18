/// @desc Get Hurt By Bullet
hp -= global.curDMG

image_blend = c_red

var num = instance_create_layer( x,y,"HitNumbers",o_DamageNum )
num.image_index = global.curDMG
inst_66F0DA5F.damageNums[inst_66F0DA5F.curDamageNum++] = num

if( hp < 1 )
{
	SPEED = 0
	
	// TODO: Make broken airship sprite have destruction animation on it.
	instance_change( o_BrokenAirship,true )
}