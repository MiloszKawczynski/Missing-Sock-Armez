if (live_call()) return live_result;//!!!

switch(hold)
{
	case("normal"):
	{
		holdSprite=s_bug
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
	draw_sprite_ext(holdSprite,0,x,y,10,10,sin(current_time/300)*45,c_red,1)
}