draw_set_color(c_aqua)
draw_set_alpha(freezeHold/maxFreezeHold)
draw_circle(x,y,magicNetRange,false)
draw_set_alpha(1)

if freezeStrike
{
	draw_circle(x,y,magicNetRange,false)
}

draw_set_color(c_lime)
draw_set_alpha(attractHold/maxAttractHold)
draw_circle(x,y,magicNetRange,false)
draw_set_alpha(1)

if attractStrike
{
	draw_circle(x,y,magicNetRange,false)
}

draw_set_color(c_blue)
draw_circle(x,y,magicNetRange,true)
draw_circle(o_elf.x,o_elf.y,magicRange,true)