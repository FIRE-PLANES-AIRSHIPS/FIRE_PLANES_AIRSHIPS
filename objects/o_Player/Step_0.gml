/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C6D6AA6
/// @DnDArgument : "code" "/// @desc Apply Movement$(13_10)image_angle -= 180$(13_10)$(13_10)// Convert microseconds to something more reasonable. :)$(13_10)dt = delta_time / 30000$(13_10)$(13_10)var deltaX = x - mouse_x$(13_10)var deltaY = mouse_y - y$(13_10)$(13_10)var targetRotation = -darctan2( deltaX,deltaY )$(13_10)$(13_10)// TODO: Make the rotation take the shortest path, always.$(13_10)$(13_10)if( image_angle < targetRotation )$(13_10)	image_angle += ROT_SPEED * dt$(13_10)$(13_10)if( image_angle > targetRotation )$(13_10)	image_angle -= ROT_SPEED * dt$(13_10)$(13_10)// image_angle = targetRotation$(13_10)$(13_10)// Move to mouse and stop when it arrives.$(13_10)if ( sqrt( ( deltaX * deltaX ) + ( deltaY * deltaY ) ) > SPEED )$(13_10){$(13_10)	x += SPEED * dsin( image_angle -   0 ) * dt$(13_10)	y -= SPEED * dcos( image_angle - 180 ) * dt$(13_10)}$(13_10)$(13_10)image_angle += 180$(13_10)$(13_10)// Move stuff around the player.$(13_10)var moveAmount = 1$(13_10)var offset = 1$(13_10)$(13_10)while( x < 1200 / 2 - offset )$(13_10){$(13_10)	x += moveAmount$(13_10)	inst_24B8CE13.x += moveAmount$(13_10)	$(13_10)	for( var i = 0; i < array_length_1d( airships ); ++i )$(13_10)	{$(13_10)		with( airships[i] )$(13_10)			x += moveAmount$(13_10)	}$(13_10)}$(13_10)$(13_10)while( x > 1200 / 2 + offset )$(13_10){$(13_10)	x -=moveAmount$(13_10)	inst_24B8CE13.x -= moveAmount$(13_10)	$(13_10)	for( var i = 0; i < array_length_1d( airships ); ++i )$(13_10)	{$(13_10)		with( airships[i] )$(13_10)			x -= moveAmount$(13_10)	}$(13_10)}$(13_10)$(13_10)while( y < 800 / 2 - offset )$(13_10){$(13_10)	y += moveAmount$(13_10)	inst_24B8CE13.y += moveAmount$(13_10)	$(13_10)	for( var i = 0; i < array_length_1d( airships ); ++i )$(13_10)	{$(13_10)		with( airships[i] )$(13_10)			y += moveAmount$(13_10)	}$(13_10)}$(13_10)$(13_10)while( y > 800 / 2 + offset )$(13_10){$(13_10)	y -= moveAmount$(13_10)	inst_24B8CE13.y -= moveAmount$(13_10)	$(13_10)	for( var i = 0; i < array_length_1d( airships ); ++i )$(13_10)	{$(13_10)		with( airships[i] )$(13_10)			y -= moveAmount$(13_10)	}$(13_10)}"
/// @desc Apply Movement
image_angle -= 180

// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

var deltaX = x - mouse_x
var deltaY = mouse_y - y

var targetRotation = -darctan2( deltaX,deltaY )

// TODO: Make the rotation take the shortest path, always.

if( image_angle < targetRotation )
	image_angle += ROT_SPEED * dt

if( image_angle > targetRotation )
	image_angle -= ROT_SPEED * dt

// image_angle = targetRotation

// Move to mouse and stop when it arrives.
if ( sqrt( ( deltaX * deltaX ) + ( deltaY * deltaY ) ) > SPEED )
{
	x += SPEED * dsin( image_angle -   0 ) * dt
	y -= SPEED * dcos( image_angle - 180 ) * dt
}

image_angle += 180

// Move stuff around the player.
var moveAmount = 1
var offset = 1

while( x < 1200 / 2 - offset )
{
	x += moveAmount
	inst_24B8CE13.x += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x += moveAmount
	}
}

while( x > 1200 / 2 + offset )
{
	x -=moveAmount
	inst_24B8CE13.x -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x -= moveAmount
	}
}

while( y < 800 / 2 - offset )
{
	y += moveAmount
	inst_24B8CE13.y += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y += moveAmount
	}
}

while( y > 800 / 2 + offset )
{
	y -= moveAmount
	inst_24B8CE13.y -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y -= moveAmount
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26DD4940
/// @DnDArgument : "code" "/// @desc Spawn Airships$(13_10)if( airshipSpawnTimer > AIRSHIP_SPAWN_MAX )$(13_10){$(13_10)	airshipSpawnTimer = 0$(13_10)	$(13_10)	airships[curAirship++] = instance_create_layer( 0,0,"Enemies",o_Airship )$(13_10)}$(13_10)else$(13_10)	++airshipSpawnTimer"
/// @desc Spawn Airships
if( airshipSpawnTimer > AIRSHIP_SPAWN_MAX )
{
	airshipSpawnTimer = 0
	
	airships[curAirship++] = instance_create_layer( 0,0,"Enemies",o_Airship )
}
else
	++airshipSpawnTimer