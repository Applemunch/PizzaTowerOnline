/// @description world control draw
draw_set_font(global.font_small); // pt exclusive
draw_set_halign(fa_center);
draw_set_color(c_white);

// function 7
if WC_showinvisible
{
	with all
	{
	    if sprite_exists(sprite_index)
	    {
			// pt exclusive
	        if variable_instance_exists(self, "xscale")
	        {
	            if variable_instance_exists(self, "yscale")
	                draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, 0.75);
	            else
	                draw_sprite_ext(sprite_index, image_index, x, y, xscale, image_yscale, image_angle, image_blend, 0.75);
	        }
	        else if variable_instance_exists(self, "yscale")
	            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, yscale, image_angle, image_blend, 0.75);
	        else
	            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.75);
		}
	    else
	    {
	        draw_set_alpha(1);
	        draw_set_colour(c_white);
			draw_set_valign(fa_middle);
	        draw_text(x, y, object_get_name(object_index));
			draw_set_valign(fa_top);
	    }
	}
}

// debug selected
if instance_exists(WC_debugselected) && WC_debugselected != global && WC_debuginfo
{
	// draw mask
	if WC_fakedragobj != WC_debugselected
	{
		draw_set_alpha(0.5);
		draw_set_colour(c_red);
		with WC_debugselected
		    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
		draw_set_alpha(1);
	}
	
	if sprite_exists(WC_debugselected.sprite_index)
	{
		// redraw sprite
	    if !WC_debugselected.visible or WC_debugselected.image_alpha <= 0
		{
			// pt exclusive
		    if variable_instance_exists(WC_debugselected, "xscale")
		    {
		        if variable_instance_exists(WC_debugselected, "yscale")
		            draw_sprite_ext(WC_debugselected.sprite_index, WC_debugselected.image_index, WC_debugselected.x, WC_debugselected.y, WC_debugselected.xscale, WC_debugselected.yscale, WC_debugselected.image_angle, WC_debugselected.image_blend, 0.75);
		        else
		            draw_sprite_ext(WC_debugselected.sprite_index, WC_debugselected.image_index, WC_debugselected.x, WC_debugselected.y, WC_debugselected.xscale, WC_debugselected.image_yscale, WC_debugselected.image_angle, WC_debugselected.image_blend, 0.75);
		    }
		    else if variable_instance_exists(WC_debugselected, "yscale")
		        draw_sprite_ext(WC_debugselected.sprite_index, WC_debugselected.image_index, WC_debugselected.x, WC_debugselected.y, WC_debugselected.image_xscale, WC_debugselected.yscale, WC_debugselected.image_angle, WC_debugselected.image_blend, 0.75);
		    else
		        draw_sprite_ext(WC_debugselected.sprite_index, WC_debugselected.image_index, WC_debugselected.x, WC_debugselected.y, WC_debugselected.image_xscale, WC_debugselected.image_yscale, WC_debugselected.image_angle, WC_debugselected.image_blend, 0.75);
		}
		
		// center of sprite
		draw_set_alpha(1);
	    draw_set_colour(c_red);
	    draw_rectangle(WC_debugselected.x - 1, WC_debugselected.y - 1, WC_debugselected.x + 1, WC_debugselected.y + 1, false);
		
		draw_set_alpha(1);
	}
}
draw_set_color(c_white)

// creating object
if WC_creatingobj
{
	if !sprite_exists(object_get_sprite(WC_bepisobj))
	{
	    draw_set_valign(fa_middle);
	    draw_text(floor(mouse_x / WC_draggrid) * WC_draggrid, floor(mouse_y / WC_draggrid) * WC_draggrid, "Spawn Here");
	    draw_set_valign(fa_top);
	}
	else
	    draw_sprite_ext(object_get_sprite(WC_bepisobj), 0, floor(mouse_x / WC_draggrid) * WC_draggrid, floor(mouse_y / WC_draggrid) * WC_draggrid, 1, 1, 0, c_white, 0.5);
}

// dragging
if instance_exists(WC_dragobj)
{
	if sprite_exists(WC_dragobj.sprite_index)
	{
		// pt exclusive
	    if variable_instance_exists(WC_dragobj, "xscale")
	    {
	        if variable_instance_exists(WC_dragobj, "yscale")
	            draw_sprite_ext(WC_dragobj.sprite_index, WC_dragobj.image_index, WC_dragobj.x, WC_dragobj.y, WC_dragobj.xscale, WC_dragobj.yscale, WC_dragobj.image_angle, WC_dragobj.image_blend, 0.75);
	        else
	            draw_sprite_ext(WC_dragobj.sprite_index, WC_dragobj.image_index, WC_dragobj.x, WC_dragobj.y, WC_dragobj.xscale, WC_dragobj.image_yscale, WC_dragobj.image_angle, WC_dragobj.image_blend, 0.75);
	    }
	    else if variable_instance_exists(WC_dragobj, "yscale")
	        draw_sprite_ext(WC_dragobj.sprite_index, WC_dragobj.image_index, WC_dragobj.x, WC_dragobj.y, WC_dragobj.image_xscale, WC_dragobj.yscale, WC_dragobj.image_angle, WC_dragobj.image_blend, 0.75);
	    else
	        draw_sprite_ext(WC_dragobj.sprite_index, WC_dragobj.image_index, WC_dragobj.x, WC_dragobj.y, WC_dragobj.image_xscale, WC_dragobj.image_yscale, WC_dragobj.image_angle, WC_dragobj.image_blend, 0.75);
	}
	
	// mask
	if WC_debugselected != WC_dragobj
	{
		draw_set_colour(c_red);
		draw_set_alpha(0.25);
		draw_rectangle(WC_dragobj.bbox_left, WC_dragobj.bbox_top, WC_dragobj.bbox_right, WC_dragobj.bbox_bottom, false);
		draw_set_alpha(1);
	}
}

// fake dragging
if WC_fakedragobj != noone
{
	if sprite_exists(WC_fakedragobj.sprite_index)
	{
		// pt exclusive
	    if variable_instance_exists(WC_fakedragobj, "xscale")
	    {
	        if variable_instance_exists(WC_fakedragobj, "yscale")
	            draw_sprite_ext(WC_fakedragobj.sprite_index, WC_fakedragobj.image_index, (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), WC_fakedragobj.xscale, WC_fakedragobj.yscale, WC_fakedragobj.image_angle, WC_fakedragobj.image_blend, 0.75);
	        else
	            draw_sprite_ext(WC_fakedragobj.sprite_index, WC_fakedragobj.image_index, (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), WC_fakedragobj.xscale, WC_fakedragobj.image_yscale, WC_fakedragobj.image_angle, WC_fakedragobj.image_blend, 0.75);
	    }
	    else if variable_instance_exists(WC_fakedragobj, "yscale")
	        draw_sprite_ext(WC_fakedragobj.sprite_index, WC_fakedragobj.image_index, (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), WC_fakedragobj.image_xscale, WC_fakedragobj.yscale, WC_fakedragobj.image_angle, WC_fakedragobj.image_blend, 0.75);
	    else
	        draw_sprite_ext(WC_fakedragobj.sprite_index, WC_fakedragobj.image_index, (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), WC_fakedragobj.image_xscale, WC_fakedragobj.image_yscale, WC_fakedragobj.image_angle, WC_fakedragobj.image_blend, 0.75);
	}
	
	// mask
	draw_set_colour(c_aqua);
	draw_set_alpha(0.25);
	draw_rectangle(
	WC_fakedragobj.bbox_left - WC_fakedragobj.x + (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), 
	WC_fakedragobj.bbox_top - WC_fakedragobj.y + (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), 
	WC_fakedragobj.bbox_right - WC_fakedragobj.x + (floor((mouse_x - WC_moffsetx) / WC_draggrid) * WC_draggrid), 
	WC_fakedragobj.bbox_bottom - WC_fakedragobj.y + (floor((mouse_y - WC_moffsety) / WC_draggrid) * WC_draggrid), false);
	draw_set_alpha(1);
}

// selecting
if WC_selectobj != 0
{
	draw_set_valign(fa_middle);
	switch WC_selectobj
	{
		case 1: // set
			draw_set_colour(c_white);
			break;
		case 2: // freeze
			draw_set_colour(merge_colour(c_white, c_aqua, 0.25));
			break;
		case 3: // script
			draw_set_colour(c_ltgray);
			break;
		case 4: // debug
			draw_set_colour(merge_colour(c_white, c_orange, 0.25));
			break;
		case 6: // monitor
			draw_set_colour(merge_colour(c_white, c_lime, 0.25));
			break;
		
		default:
			draw_set_colour(c_gray);
			break;
	}
	
	if !instance_exists(WC_bepisobj)
	    draw_text(mouse_x, mouse_y, "Select Object");
	else
	    draw_text(mouse_x + choose(1, -1), mouse_y, object_get_name(WC_bepisobj.object_index));
	
	draw_set_valign(fa_top);
}