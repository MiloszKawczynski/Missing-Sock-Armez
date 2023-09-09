
switch(hold)
{
	case("kropkaczka"):
	{
		holdSprite=0
		break;
	}
	case("lotek"):
	{
		holdSprite=1
		break;
	}
	case("planta"):
	{
		holdSprite=2
		break;
	}
	case("skakacz"):
	{
		holdSprite=3
		break;
	}
	case(noone):
	{
		holdSprite=noone
		break;
	}
}

if holdSprite!=noone
{
	draw_sprite_ext(s_bigBug,holdSprite,x,y,3,3,sin(current_time/300)*45,c_white,1)
}