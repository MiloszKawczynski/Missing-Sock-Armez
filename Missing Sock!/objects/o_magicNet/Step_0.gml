if (live_call()) return live_result;

x=mouse_x
y=mouse_y

part_system_position(sys_freeze, x,y);
part_system_position(sys_cool, x,y);
part_system_position(sys_attract, x,y);

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
		part_emitter_burst(sys_freeze, em_freeze, type_freeze, 15);
		freezeStrike=true;
	}

	if mouseButtons==-1
	{
		attractHold=0;
		part_emitter_stream(sys_cool, em_cool, type_cool, 1);
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
		var dir=point_direction(bug.x,bug.y,user.x,user.y)
		var dis=point_distance(x,y,user.x,user.y)/2
		part_type_gravity( type_attract, 0.1, dir);
		part_type_orientation( type_attract, dir-45, dir-45, 0, 5, false);
		part_type_life( type_attract, 10, min(dis,60));
		part_emitter_stream(sys_attract, em_attract, type_attract, 1);
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
		part_emitter_stream(sys_cool, em_cool, type_cool, 0);
	}
}

if distance_to_object(bug)>magicNetRange or !mouse_check_button(attractButton)
{
	if attractHold>0
	{
		attractHold-=0.1;
		part_emitter_stream(sys_attract, em_attract, type_attract, 0);
	}
}

if mouseButtons==0
{
	part_emitter_stream(sys_cool, em_cool, type_cool, 0);
	part_emitter_stream(sys_attract, em_attract, type_attract, 0);
}