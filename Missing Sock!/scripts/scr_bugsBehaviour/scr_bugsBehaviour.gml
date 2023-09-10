function scr_bug(_bugSpeed,_path=noone,_reverse=false,_range=0)
{
	maxBugSpeed=_bugSpeed
	bugSpeed=maxBugSpeed
	
	pointCounter=0;
	pathIncrease=1;
	px=x
	py=y
	reverse=_reverse
	path=_path
	
	if path!=noone
	{
		path=path_duplicate(_path)
		path_shift(path,x-path_get_point_x(path,0),y-path_get_point_y(path,0))
	}
	
	range=_range
	
	side=1;
	
	stun=0;
}

//MOVEMENTS

function scr_chaoticMovement()
{
	if point_distance(x,y,px,py)<bugSpeed
	{
		px=x+irandom_range(-range,range)
		py=y+irandom_range(-range,range)
	}
	
	var dir=point_direction(x,y,px,py)
	
	hspeed=lengthdir_x(bugSpeed,dir)
	vspeed=lengthdir_y(bugSpeed,dir)
	
	if scr_collision()
	{
		px=x+irandom_range(-range,range)
		py=y+irandom_range(-range,range)
	}
}

function scr_panicMovement()
{
	if point_distance(x,y,px,py)<7
	{
		px=xstart
		py=ystart
	}
	else
	{
		var dir=point_direction(x,y,px,py)
	
		x+=lengthdir_x(bugSpeed,dir)
		y+=lengthdir_y(bugSpeed,dir)
	}
}

function scr_moveByPath()
{	
	if (point_distance(x,y,px,py)<2)
	{
		pointCounter+=pathIncrease;
			
		if pointCounter>=path_get_number(path) or pointCounter<=0
		{
			if reverse
			{
				pathIncrease*=-1
			}
			else
			{
				pointCounter=0;
			}
			return
		}
			
		px=path_get_point_x(path,pointCounter)
		py=path_get_point_y(path,pointCounter)
	}
	
	var len=point_distance(x,y,px,py);
	var dir=point_direction(x,y,px,py);
	
	x+=lengthdir_x(len,dir)/len*bugSpeed;
	y+=lengthdir_y(len,dir)/len*bugSpeed;
}

function scr_moveSideways()
{	
	if !place_meeting(x,y+1,o_block)
	{
		vspeed+=0.2
	}
	
	scr_collision()
	
	
	if place_free(x+side,y)
	{
		x+=side*bugSpeed
	}
	else
	{
		side*=-1
	}
}

function scr_moveBoucing(_vspeed)
{
	if place_meeting(x,y+1,o_block)
	{
		vspeed-=_vspeed*(bugSpeed/maxBugSpeed)
	}
	else
	{
		vspeed+=0.2
	}
	
	scr_collision()
	
	if place_free(x+side*bugSpeed,y)
	{
		x+=side*bugSpeed
	}
	else
	{
		side*=-1
	}
}

function scr_moveInCircles()
{
	direction+=4;
	
	speed=bugSpeed
}

//SPEEDMANIPULATION

function scr_slowDownWithMagic(slowingDownFactor)
{
	value=(o_magicNet.freezeHold/o_magicNet.maxFreezeHold)
	bugSpeed=min(maxBugSpeed-min(slowingDownFactor*value,maxBugSpeed),bugSpeed)
}

function scr_stunCast(stunValue)
{
	if o_magicNet.freezeStrike
	{
		bugSpeed=0;
		stun=stunValue
	}
}

function scr_stun()
{
	if stun>0
	{
		bugSpeed=0;
		stun--;
	}
}

function scr_instantSpeedRecover()
{
	if bugSpeed!=maxBugSpeed
	{
		bugSpeed=maxBugSpeed
	}
}

function scr_normalSpeedRecover(recoveringValue)
{
	if bugSpeed<maxBugSpeed and stun==0
	{
		bugSpeed+=recoveringValue
	}
}

//ATTRACTION

function scr_attractToElf(attractionFactor)
{	
	value=(o_magicNet.attractHold/o_magicNet.maxAttractHold)
	var len=point_distance(x,y,o_elf.x,o_elf.y);
	var dir=point_direction(x,y,o_elf.x,o_elf.y);
	if len!=0
	{
		x+=lengthdir_x(len,dir)/len*value*attractionFactor
		y+=lengthdir_y(len,dir)/len*value*attractionFactor
	}
}

//CATHING

function scr_catch(distance)
{
	if point_distance(x,y,o_elf.x,o_elf.y)<distance
	{
		o_magicNet.image_index=1;
		
		if o_magicNet.attractStrike
		{
			with(o_magicNet)
			{
				part_emitter_burst(sys_catch, em_catch, type_catch, 15);
			}
			ds_list_add(global.catchedBugs,type)
			
			with(o_camera)
			{
				ds_list_add(promptsList,new prompt(other.type))
			}
			
			instance_destroy();
		}
	}
}