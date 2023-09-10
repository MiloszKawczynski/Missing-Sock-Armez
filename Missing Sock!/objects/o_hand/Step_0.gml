if (live_call()) return live_result;

part_system_position(sys_cry, x+42,y-42);

x=mouse_x
y=mouse_y

if place_meeting(x,y,o_terrariumSlot)
{
	slot=instance_nearest(x,y,o_terrariumSlot)
}
else
{
	slot=noone
}

if mouse_check_button_pressed(mb_left)
{
	if slot!=noone and hold==noone
	{
		with(slot)
		{
			if ds_list_size(contain)>0
			{
				other.hold=ds_list_find_value(contain,0)
				ds_list_delete(contain,0)
			}
		}
	}
}

if mouse_check_button_released(mb_left)
{
	if slot!=noone and hold!=noone
	{
		with(slot)
		{
			if lock==false
			{
				if ds_list_size(contain)<containCapacity
				{
					ds_list_add(contain,other.hold)
					other.hold=noone
				}
			}
		}
	}
}

if hold!=noone
{
	if bugSquizing>=4
	{
		bugSquizing=2.5
		part_emitter_burst(sys_cry, em_cry, type_cry, 2);
	}
	else
	{
		bugSquizing+=0.04
	}
}