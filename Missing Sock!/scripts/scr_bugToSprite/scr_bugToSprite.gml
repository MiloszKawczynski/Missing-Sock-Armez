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
			sprite=1
			break;
		}
		case("planta"):
		{
			sprite=2
			break;
		}
		case("skakacz"):
		{
			sprite=3
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