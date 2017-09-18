draw_self()

if( canEnter )
{
	var textOffset = 1
	
	draw_set_font( f_Main )
	
	draw_set_color( c_black )
	
	draw_text( 1200 / 2.2 + textOffset,800 / 2.2 + textOffset,"Right click to enter Frigid Cavern!" )
	draw_text( 1200 / 2.2 - textOffset,800 / 2.2 - textOffset,"Right click to enter Frigid Cavern!" )
	draw_text( 1200 / 2.2 + textOffset,800 / 2.2 - textOffset,"Right click to enter Frigid Cavern!" )
	draw_text( 1200 / 2.2 - textOffset,800 / 2.2 + textOffset,"Right click to enter Frigid Cavern!" )
	
	draw_set_color( c_aqua )
	
	draw_text( 1200 / 2.2,800 / 2.2,"Right click to enter Frigid Cavern!" )
}