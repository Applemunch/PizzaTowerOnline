if noisex != 960 - 415
image_blend = c_black
else
image_blend = c_white

draw_sprite_tiled(spr_versusflame,-1,0,flamey)
if pepx != 0
{
draw_sprite(spr_vspeppinoshadow, 0, pepx,room_height - 357)
draw_sprite(spr_vsnoiseshadow, 0, noisex,room_height - 357)
}
else
{
draw_sprite(spr_vspeppino, 0, pepx,room_height - 357)
draw_sprite(spr_vsnoise, 0, noisex,room_height - 357)
}
draw_sprite(spr_vstitle, 0, shake, vsy + shake)




//Flash
if (flash) && check_shaders() { 
    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
    //Draw
draw_sprite(spr_vspeppino, 0, pepx,room_height - 357)
draw_sprite(spr_vsnoise, 0, noisex,room_height - 357)
draw_sprite(spr_vstitle, 0, shake, vsy + shake)
  // Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)

} else {

}


