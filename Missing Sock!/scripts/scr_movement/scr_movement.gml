function scr_playerHorizontalMovement()
{	
	var horizontal=keyboard_check(rightKey)-keyboard_check(leftKey);
	
	hspeed+=horizontal*acceleration;
	
	if horizontal==0
	{
		hspeed-=sign(hspeed)*deceleration;
	}
	
	if abs(hspeed)<deceleration
	{
		hspeed=0;
	}
		
	if abs(hspeed)>maximumSpeed
	{
		hspeed=maximumSpeed*horizontal
	}
	
	if horizontal!=0
	{
		image_xscale=horizontal
	}
}

function scr_playerVerticalMovement()
{	
	if (live_call()) return live_result;
	
	var sys_float = part_system_create();
	part_system_draw_order( sys_float, true);
	part_system_depth(sys_float,depth+1)
	
	var em_float = part_emitter_create( sys_float );
	part_emitter_region( sys_float, em_float, -8, 8, -4.5, 4.5, ps_shape_rectangle, ps_distr_linear );

	part_system_position(sys_float, x, bbox_bottom);
	
	if keyboard_check_pressed(jumpKey)
	{
		if jumps>0
		{
			part_emitter_burst(sys_float, em_float, type_floatBurst, 10);
			vspeed=-jumpSpeed;
			jumps--;
		}
	}
	
	if !place_meeting(x,y+1,o_block) and (!place_meeting(x,y+1,o_semiBlock) or keyboard_check(ord("S")))
	{
		vspeed+=gravitation;
		if keyboard_check(jumpKey)
		{
			vspeed=min(vspeed,floatSpeed);
			part_emitter_burst(sys_float, em_float, type_float, 1);
			part_emitter_burst(sys_float, em_float, type_floatBurst, 1);
		}
	}
	else
	{
		if jumps!=maxJumps
		{
			jumps=maxJumps
		}
	}
}

function scr_collision()
{	
	var result=false
	if place_meeting(x+hspeed,y,o_block)
	{
		while(place_free(x+sign(hspeed),y))
		{
			x+=sign(hspeed);
		}
		
		hspeed=0;
		result=true
	}
	
	if place_meeting(x,y+vspeed,o_block)
	{
		while(place_free(x,y+sign(vspeed)))
		{
			y+=sign(vspeed);
		}
		
		vspeed=0;
		result=true
	}
	
	if place_meeting(x+hspeed,y+vspeed,o_block)
	{
		while(place_free(x+sign(hspeed),y+sign(vspeed)))
		{
			x+=sign(hspeed);
			y+=sign(vspeed);
		}
		
		hspeed=0;
		vspeed=0;
		result=true
	}
	
	return result
}

function scr_semiCollision()
{	
	if !keyboard_check(ord("S"))
	{
		var semiBlock=instance_nearest(x,y,o_semiBlock)
		
		if place_meeting(x,y+vspeed,o_semiBlock) and vspeed>0 and y+sprite_get_height(sprite_index)/2<semiBlock.y
		{
			while(place_free(x,y+sign(vspeed)))
			{
				y+=sign(vspeed);
			}
		
			vspeed=0;
		}
	
		if vspeed==0
		{
			while(place_meeting(x,y,o_semiBlock))
			{
				y--;
			}
		}
	}
}