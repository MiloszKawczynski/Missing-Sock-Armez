if (live_call()) return live_result;

part_system_position(sys_cry, x+42,y-42);
part_system_position(sys_angry, x+42,y-42);
part_system_position(sys_happy, x+42,y-42);


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
		
		if slot!=noone
		{
			var relation=scr_bugToSprite(hold)-scr_bugToSprite(ds_list_find_value(slot.contain,0))
			if relation==-1 or relation==8
			{
				part_emitter_burst(sys_angry, em_angry, type_angry, 2);
			}
			
			if relation==1 or relation==-8
			{
				part_emitter_burst(sys_cry, em_cry, type_cry, 2);
			}
			
		}
		
		//	part_emitter_burst(sys_happy, em_happy, type_happy, 2);
	}
	else
	{
		bugSquizing+=0.04
	}
}