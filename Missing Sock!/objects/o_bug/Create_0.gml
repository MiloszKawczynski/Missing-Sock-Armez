image_speed=0;

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

kropkaczka=function()
{
	scr_moveByPath()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_slowDownWithMagic(maxBugSpeed,true)
		scr_attractToElf(3)
		scr_catch(15)
	}
	
	scr_normalSpeedRecover(0.01)
}

switch(type)
{
	case("lotek"):
	{
		image_index=2;
		
		behaviour=normal;
		
		scr_bug(3,,,20)
		
		break;
	}
	case("kropkaczka"):
	{
		image_index=1;
		
		behaviour=kropkaczka;
		
		scr_bug(3,pth_kropkaczka,true)
		
		break;
	}
}
