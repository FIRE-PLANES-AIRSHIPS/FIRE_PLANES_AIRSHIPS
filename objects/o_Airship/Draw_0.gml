draw_self()

draw_healthbar( x + 0,y + 10,x + 200,y + 20,hp / HP_MAX * 100,$FF0000FF & $FFFFFF,$FF00FF00 & $FFFFFF,$FF00FF00 & $FFFFFF,0,( ( $FF0000FF>>24 ) != 0 ),( ( $FF000000>>24 ) != 0 ) )

if( random( 10 ) < 5 )
	image_blend = c_white