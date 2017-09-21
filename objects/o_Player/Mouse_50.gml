if( shotTimer > SHOT_TIME )
{
	audio_play_sound( a_Bullet,0,false )
	
	shotTimer = 0
	
	if( weapon == 1 )
	{
		var bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle + random_range( -5,5 )
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
	}
	else if( weapon == 2 )
	{
		var bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
		
		bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle + 15
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
		
		bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle - 15
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
	}
	else if( weapon == 3 )
	{
		var bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
		
		bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle + 120
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
		
		bullet = instance_create_layer( x,y,"Bullets",o_PlayerBullet )
		bullet.image_angle = image_angle - 120
		bullet.damage = ceil( random_range( damageMin,damageMax ) - 0.5 )
	}
}
else
	shotTimer += 1 * dt