
//Draw
if obj_player1.spotlight = false
pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
if obj_player1.spotlight = true
pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)

draw_sprite(sprite, -1,X,Y)

shader_reset()