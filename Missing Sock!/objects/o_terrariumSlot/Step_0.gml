hoover=place_meeting(x,y,o_hand)

if hoover
{
	if lock==false or o_hand.hold==noone
	{
		image_alpha=0.1
	}
}
else
{
	image_alpha=0
}

if lock
{
	if ds_list_size(contain)==0
	{
		instance_destroy()
	}
	
	if !place_meeting(x,y-16*image_yscale+8,o_terrariumSlot) and y-16*image_yscale+8>0
	{
		y-=16*image_yscale+8
	}
}