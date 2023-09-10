function scr_bugToSprite(bug)
{
	switch(bug)
	{
		case("kropkaczka"):
		{
			sprite=0
			break;
		}
		case("lotek"):
		{
			sprite=7
			break;
		}
		case("planta"):
		{
			sprite=6
			break;
		}
		case("skakacz"):
		{
			sprite=5
			break;
		}
		case("szelek"):
		{
			sprite=2
			break;
		}
		case("pionsa"):
		{
			sprite=8
			break;
		}
		case("roszar"):
		{
			sprite=4
			break;
		}
		case("glero"):
		{
			sprite=3
			break;
		}
		case("majur"):
		{
			sprite=1
			break;
		}
		case(noone):
		{
			sprite=noone
			break;
		}
		case(undefined):
		{
			sprite=noone
			break;
		}
	}
	
	return sprite
}

function scr_bugTemparatureWanter(bug)
{
	switch(bug)
	{
		case("kropkaczka"):
		{
			return true
		}
		case("lotek"):
		{
			return true
		}
		case("planta"):
		{
			return true
		}
		case("skakacz"):
		{
			return true
		}
		case("szelek"):
		{
			return true
		}
		case("pionsa"):
		{
			return true
		}
		case("roszar"):
		{
			return true
		}
		case("glero"):
		{
			return true
		}
		case("majur"):
		{
			return true
		}
		case(noone):
		{
			return false
		}
		case(undefined):
		{
			return false
		}
	}
}