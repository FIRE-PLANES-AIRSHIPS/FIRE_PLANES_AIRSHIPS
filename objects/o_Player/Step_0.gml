if( room == 1 )
	mapName = inst_24B8CE13
else if( room == 2 )
	mapName = inst_18057F1F

// Apply Movement
image_angle -= 180

// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

var deltaX = x - mouse_x
var deltaY = mouse_y - y

var targetRotation = -darctan2( deltaX,deltaY )

// TODO: Make the rotation take the shortest path, always.
// if( targetRotation - image_angle > targetRotation + image_angle )
// 	image_angle += 360

// show_debug_message( string( targetRotation ) + " " + string( image_angle ) )

// Ensure the plane takes the shortest route turning.
/*
if( targetRotation > 160 && image_angle < -160 )
	image_angle *= -1

if( targetRotation < -160 && image_angle > 160 )
	image_angle *= -1
*/

var goMinus = image_angle
var goPlus = image_angle

var willGoMinus = 0
var willGoPlus = 0

while( goMinus != round( targetRotation ) )
{
	++willGoMinus
	
	if( goMinus < -180 )
		goMinus = 180
	else
		--goMinus
}

while( goPlus != round( targetRotation ) )
{
	++willGoPlus
	
	if( goPlus > 180 )
		goPlus = -180
	else
		++goPlus
}

{
	if( image_angle < targetRotation )
	// if( willGoPlus > willGoMinus )
		image_angle += ROT_SPEED * dt
	
	if( image_angle > targetRotation )
	// if( willGoPlus < willGoMinus )
		image_angle -= ROT_SPEED * dt
}

// image_angle = targetRotation

// Move to mouse and stop when it arrives.
if ( sqrt( ( deltaX * deltaX ) + ( deltaY * deltaY ) ) > SPEED )
{
	x += SPEED * dsin( image_angle -   0 ) * dt
	y -= SPEED * dcos( image_angle - 180 ) * dt
}

image_angle += 180

// Move stuff around the player, keeping player in the center of the screen.
var moveAmount = 1
var offset = 1

while( x < 1200 / 2 - offset )
{
	x += moveAmount
	mapName.x += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			x += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			x += moveAmount
	}
}

while( x > 1200 / 2 + offset )
{
	x -= moveAmount
	mapName.x -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			x -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			x -= moveAmount
	}
}

while( y < 800 / 2 - offset )
{
	y += moveAmount
	mapName.y += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			y += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			y += moveAmount
	}
}

while( y > 800 / 2 + offset )
{
	y -= moveAmount
	mapName.y -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			y -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			y -= moveAmount
	}
}

// Keep player within the map boundaries.
while( mapName.x > 0 )
{
	x -= moveAmount
	mapName.x -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			x -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			x -= moveAmount
	}
}

while( mapName.x + 6000 < 1200 )
{
	x += moveAmount
	mapName.x += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			x += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			x += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			x += moveAmount
	}
}

while( mapName.y > 0 )
{
	y -= moveAmount
	mapName.y -= moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			y -= moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			y -= moveAmount
	}
}

while( mapName.y + 4000 < 800 )
{
	y += moveAmount
	mapName.y += moveAmount
	
	for( var i = 0; i < array_length_1d( airships ); ++i )
	{
		with( airships[i] )
			y += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( damageNums ); ++i )
	{
		with( damageNums[i] )
			y += moveAmount
	}
	
	for( var i = 0; i < array_length_1d( planes ); ++i )
	{
		with( planes[i] )
			y += moveAmount
	}
}

// Keep player "on screen".
while( x < 0 )
	++x

while( x > 1200 )
	--x

while( y < 0 )
	++y

while( y > 800 )
	--y

if( room == 1 )
{
	// Spawn Airships!
	if( airshipSpawnTimer > AIRSHIP_SPAWN_MAX )
	{
		airshipSpawnTimer = 0
		
		// airships[curAirship++] = instance_create_layer( 0,0,"Enemies",o_Airship )
	}
	else
		++airshipSpawnTimer
	
	// Spawn Planes!
	if( planeSpawnTimer > PLANE_SPAWN_MAX )
	{
		planeSpawnTimer = 0
		
		planes[curPlane++] = instance_create_layer( 0,0,"Enemies",o_EnemyPlane )
	}
	else
		++planeSpawnTimer
	
	// Deal with invulnerability phase.
	if( invulPhase <= INVUL_TIME )
	{
		++invulPhase
		
		if( invulPhase % 5 == 0 )
			++image_index
		
		// show_debug_message( invulPhase )
	}
}

image_blend = c_white
canEnter = false