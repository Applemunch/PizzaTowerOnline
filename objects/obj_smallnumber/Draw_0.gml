//Draw Text

/*
switch color
{
case 0:
draw_set_color( make_colour_rgb(255, 255, 255))
break
	
	
case 1:
draw_set_color( make_colour_rgb(96, 208, 72))
break

case 2:
draw_set_color( make_colour_rgb(224, 144, 0))
break

case 3:
draw_set_color(make_colour_rgb(248, 0, 0))
break
}
*/

switch negative
{
    case false:
        draw_set_color(make_colour_rgb(255, 255, 255))
        break
    case true:
        draw_set_color(make_colour_rgb(248, 0, 0))
        break
}



draw_set_font(global.smallnumber)
draw_set_halign(fa_center);




shader_reset()


//Flash
if (flash) && check_shaders() { 
    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
draw_text(x,y,number)
  // Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)

} else {
	
	draw_text(x,y,number)

}

