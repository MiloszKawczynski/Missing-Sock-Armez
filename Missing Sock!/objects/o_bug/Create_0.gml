image_speed=0;

lotek=function()
{
	scr_chaoticMovement()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_stunCast(10)//
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(2)
		scr_catch(15)
	}
	
	scr_stun()
	scr_normalSpeedRecover(0.005)
}

kropkaczka=function()
{
	scr_moveByPath()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_stunCast(10)
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(4)
		scr_catch(15)
		//scr_stun(10)
		//scr_attractToElf(3)
		//scr_catch(15)
	}
	
	scr_stun()
	scr_normalSpeedRecover(0.01)
}

planta=function()
{
	scr_moveSideways()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_stunCast(10)//
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(2)
		scr_catch(15)
		//scr_attractToElf(12)
		//scr_catch(15)
	}
	
	scr_stun()
	scr_normalSpeedRecover(0.01)
}

skakacz=function()
{
	scr_moveBoucing(7)
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_stunCast(10)//
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(2)
		scr_catch(15)
		//scr_slowDownWithMagic(maxBugSpeed)
		//scr_attractToElf(12)
		//scr_catch(15)
	}
	
	scr_stun()
	scr_normalSpeedRecover(0.1)
}

szelek=function()
{
	scr_moveByPath()
	
	if distance_to_object(o_magicNet)<=o_magicNet.magicNetRange
	{
		scr_stunCast(10)//
		scr_slowDownWithMagic(maxBugSpeed*1.5)
		scr_attractToElf(2)
		scr_catch(15)
		//scr_slowDownWithMagic(maxBugSpeed)
		//scr_attractToElf(12)
		//scr_catch(15)
	}
	
	scr_stun()
	scr_normalSpeedRecover(0.001)
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
		
		scr_bug(1)
		
		break;
	}
	
	case("skakacz"):
	{
		image_index=4;
		
		behaviour=skakacz;
		
		scr_bug(3)
		
		break;
	}
	
	case("szelek"):
	{
		image_index=5;
		
		behaviour=szelek;
		
		scr_bug(3,pth_szelek,true)
		
		break;
	}
}
