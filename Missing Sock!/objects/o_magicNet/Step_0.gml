x=mouse_x
y=mouse_y

if freezeStrike
{
	freezeStrike=false
}

if attractStrike
{
	attractStrike=false
}

var bug=instance_nearest(x,y,o_bug)

var mouseButtons=mouse_check_button(attractButton)-mouse_check_button(freezeButton)

if distance_to_object(bug)<=magicNetRange
{
	if mouse_check_button_pressed(freezeButton) and mouseButtons==-1
	{
		freezeStrike=true;
	}

	if mouseButtons==-1
	{
		attractHold=0;
		if freezeHold<maxFreezeHold
		{
			freezeHold+=0.1;
		}
	}
	
	if mouse_check_button_pressed(attractButton) and mouseButtons==1
	{
		attractStrike=true;
	}

	if mouseButtons==1
	{
		freezeHold=0;
		if attractHold<maxAttractHold
		{
			attractHold+=0.1;
		}
	}
}

if distance_to_object(bug)>magicNetRange or !mouse_check_button(freezeButton)
{
	if freezeHold>0
	{
		freezeHold-=0.1;
	}
}

if distance_to_object(bug)>magicNetRange or !mouse_check_button(attractButton)
{
	if attractHold>0
	{
		attractHold-=0.1;
	}
}