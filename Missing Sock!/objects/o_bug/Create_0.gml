image_speed=0;

lotek=function()
{
	scr_chaoticMovement()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(2,true)
		scr_attractToElf(2)
		scr_catch(15)
	}

	scr_normalSpeedRecover(0.005)
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

planta=function()
{
	scr_moveSideways()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		//scr_slowDownWithMagic(maxBugSpeed,true)
		scr_attractToElf(12,true)
		scr_attractToElf(12,false)
		scr_catch(15)
	}
	else
	{
		scr_instantSpeedRecover()
	}
}

switch(type)
{
	case("lotek"):
	{
		image_index=2;
		
		behaviour=lotek;
		
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
	case("planta"):
	{
		image_index=3;
		
		behaviour=planta;
		side=1;
		
		scr_bug(1)
		
		break;
	}
}
