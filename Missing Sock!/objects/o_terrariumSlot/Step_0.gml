if instance_exists(o_hand)
{
	hoover=place_meeting(x,y,o_hand)

	if hoover
	{
		if lock==false or o_hand.hold==noone
		{
			image_alpha=1
		}
	}
	else
	{
		image_alpha=0.9
	}
}

if lock
{
	sprite_index=s_empty
	image_index=0
	
	if ds_list_size(contain)==0
	{
		instance_destroy()
	}
	
	if !place_meeting(x,y-sprite_get_height(sprite_index)+8,o_terrariumSlot) and y-sprite_get_height(sprite_index)+8>0
	{
		y-=sprite_get_height(sprite_index)+8
	}
}
else
{
	image_index=isGrounded*2+!isHot
}