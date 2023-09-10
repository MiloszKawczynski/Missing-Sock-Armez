behaviour()

var horizontal=sign(x-xprevious)
if horizontal!=0
{
	image_xscale=horizontal
}
else
{
	horizontal=sign(hspeed)
	if horizontal!=0
	{
		image_xscale=horizontal
	}
}