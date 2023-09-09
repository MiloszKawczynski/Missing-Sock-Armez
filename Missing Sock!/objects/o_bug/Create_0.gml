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
	scr_moveBySin(0,0.5,48,500)
	
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
	case("normal"):
	{
		behaviour=normal;
		
		scr_bug(1)
		
		break;
	}
	case("kropkaczka"):
	{
		image_blend=c_fuchsia
		
		behaviour=kropkaczka;
		
		scr_bug(3)
		
		break;
	}
}
