function scr_bug(_bugSpeed,_path=noone)
{
	maxBugSpeed=_bugSpeed
	bugSpeed=maxBugSpeed
	
	pointCounter=0;
	px=x
	py=y
	
	path=_path
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
	x+=irandom_range(-bugSpeed,bugSpeed)
	y+=irandom_range(-bugSpeed,bugSpeed)
}

function scr_moveByPath()
{	
	if (point_distance(x,y,px,py)<2)
	{
		pointCounter++;
			
		if pointCounter>=path_get_number(path)
		{
			pointCounter=0;
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

//SPEEDMANIPULATION

function scr_slowDownWithMagic(slowingDownFactor,strike=false)
{
	value=scr_calculateFreezeValue(strike)
	bugSpeed=maxBugSpeed-min(slowingDownFactor*value,maxBugSpeed)
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
	else
	{
		scr_instantSpeedRecover()
	}
}

//ATTRACTION

function scr_attractToElf(attractionFactor,strike=false)
{
	if (live_call()) return live_result;//!!!
	
	value=scr_calculateAttractValue(strike)
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
		instance_destroy();
	}
}