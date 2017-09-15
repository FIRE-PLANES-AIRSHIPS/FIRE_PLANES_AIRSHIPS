/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E657EAF
/// @DnDArgument : "code" "if( shotTimer > SHOT_TIME )$(13_10){$(13_10)	shotTimer = 0$(13_10)	$(13_10)	var bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )$(13_10)	bullet.image_angle = image_angle$(13_10)	$(13_10)	bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )$(13_10)	bullet.image_angle = image_angle + 15$(13_10)	$(13_10)	bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )$(13_10)	bullet.image_angle = image_angle - 15$(13_10)}$(13_10)else$(13_10)	shotTimer += 1 * dt"
if( shotTimer > SHOT_TIME )
{
	shotTimer = 0
	
	var bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
	bullet.image_angle = image_angle
	
	bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
	bullet.image_angle = image_angle + 15
	
	bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
	bullet.image_angle = image_angle - 15
}
else
	shotTimer += 1 * dt