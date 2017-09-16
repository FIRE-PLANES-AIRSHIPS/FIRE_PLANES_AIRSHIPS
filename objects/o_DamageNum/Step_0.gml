x += SPEED * dir

y -= JUMP_SPEED
y += grav
grav += GRAV_ACC

if( destCounter > DEST_TIME_MAX )
	instance_destroy()
else
{
	++destCounter
	image_alpha -= 1 / DEST_TIME_MAX
}