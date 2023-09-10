if (live_call()) return live_result;

holdSprite=scr_bugToSprite(hold)

if holdSprite!=noone
{
	var scale=min(bugSquizing,3)
	draw_sprite_ext(s_bigBug,holdSprite,x,y,scale,scale,sin(current_time/300)*20,c_white,1)
}