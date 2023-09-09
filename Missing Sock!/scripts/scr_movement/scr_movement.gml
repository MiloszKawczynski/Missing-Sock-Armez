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
}

function scr_playerVerticalMovement()
{		
	if keyboard_check_pressed(jumpKey)
	{
		if jumps>0
		{
			vspeed=-jumpSpeed;
			jumps--;
		}
	}
	
	if !place_meeting(x,y+1,o_block) and !place_meeting(x,y+1,o_semiBlock)
	{
		vspeed+=gravitation;
		if keyboard_check(jumpKey)
		{
			vspeed=min(vspeed,floatSpeed);
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
	if place_meeting(x+hspeed,y,o_block)
	{
		while(place_free(x+sign(hspeed),y))
		{
			x+=sign(hspeed);
		}
		
		hspeed=0;
	}
	
	if place_meeting(x,y+vspeed,o_block)
	{
		while(place_free(x,y+sign(vspeed)))
		{
			y+=sign(vspeed);
		}
		
		vspeed=0;
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
	}
}

function scr_semiCollision()
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