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
			return 1
		}
		case("lotek"):
		{
			return 1
		}
		case("planta"):
		{
			return 0
		}
		case("skakacz"):
		{
			return 1
		}
		case("szelek"):
		{
			return -2
		}
		case("pionsa"):
		{
			return -2
		}
		case("roszar"):
		{
			return -2
		}
		case("glero"):
		{
			return 0
		}
		case("majur"):
		{
			return 0
		}
		case(noone):
		{
			return -2
		}
		case(undefined):
		{
			return -2
		}
	}
}

function scr_bugGraundedWanter(bug)
{
	switch(bug)
	{
		case("kropkaczka"):
		{
			return 0
		}
		case("lotek"):
		{
			return 0
		}
		case("planta"):
		{
			return 1
		}
		case("skakacz"):
		{
			return 1
		}
		case("szelek"):
		{
			return 0
		}
		case("pionsa"):
		{
			return 1
		}
		case("roszar"):
		{
			return 0
		}
		case("glero"):
		{
			return 0
		}
		case("majur"):
		{
			return 0
		}
		case(noone):
		{
			return -2
		}
		case(undefined):
		{
			return -2
		}
	}
}