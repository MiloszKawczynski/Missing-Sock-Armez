normal=function()
{
	scr_chaoticMovement()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_slowDownWithMagic(maxBugSpeed)
		scr_attractToElf(3)
		scr_catch(15)
	}
	else
	{
		scr_instantSpeedRecover()
	}
}

normal2=function()
{
	scr_moveByPath()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_slowDownWithMagic(maxBugSpeed)
		scr_attractToElf(3)
		scr_catch(15)
	}
	else
	{	
		scr_normalSpeedRecover(0.01)
	}
}

switch(type)
{
	case("normal"):
	{
		behaviour=normal;
		
		scr_bug(1)
		
		break;
	}
	case("normal2"):
	{
		image_blend=c_red
		
		behaviour=normal2;
		
		scr_bug(1,pth_2)
		
		break;
	}
}
