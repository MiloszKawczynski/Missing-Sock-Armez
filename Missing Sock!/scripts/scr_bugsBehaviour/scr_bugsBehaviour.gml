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
	recoverTimer=0;
}

//CALCULATIONS

function scr_calculateFreezeValue(strike=false)
{
	var value=(o_magicNet.freezeHold/o_magicNet.maxFreezeHold)
	if strike
	{
		value=o_magicNet.freezeStrike
	}
	return value
}

function scr_calculateAttractValue(strike=false)
{
	var value=(o_magicNet.attractHold/o_magicNet.maxAttractHold)
	if strike
	{
		value=o_magicNet.attractStrike
	}
	return value
}

//MOVEMENTS

function scr_chaoticMovement()
{
	if point_distance(x,y,px,py)<2
	{
		px=x+irandom_range(-range,range)
		py=y+irandom_range(-range,range)
	}
	
	var dir=point_direction(x,y,px,py)
	
	x+=lengthdir_x(bugSpeed,dir)
	y+=lengthdir_y(bugSpeed,dir)
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
	if place_free(x+side,y)
	{
		x+=side
	}
	else
	{
		side*=-1
	}
}

//SPEEDMANIPULATION

function scr_slowDownWithMagic(slowingDownFactor,strike=false)
{
	value=scr_calculateFreezeValue(strike)
	if strike and value==false
	{
		return
	}
	bugSpeed=min(maxBugSpeed-min(slowingDownFactor*value,maxBugSpeed),bugSpeed)
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
	if bugSpeed<maxBugSpeed
	{
		bugSpeed+=recoveringValue
	}
}

function scr_curveSpeedRecover(chanel)
{
	if bugSpeed<maxBugSpeed
	{
		recoverTimer+=0.01
		bugSpeed=animcurve_get_point(ac_speedRecovery,chanel,recoverTimer)*maxBugSpeed
	}
	else
	{
		recoverTimer=0;
	}
}

//ATTRACTION

function scr_attractToElf(attractionFactor,strike=false)
{	
	value=scr_calculateAttractValue(strike)
	if strike and value==false
	{
		return
	}
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
		ds_list_add(global.catchedBugs,type)
		instance_destroy();
	}
}