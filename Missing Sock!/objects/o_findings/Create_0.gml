for(var i=0;i<ds_list_size(global.catchedBugs);i++)
{
	var inst=instance_create_depth(x,y+(16*image_yscale+8)*i,depth,o_terrariumSlot)
	with(inst)
	{
		lock=true
		ds_list_add(contain,ds_list_find_value(global.catchedBugs,i))
		image_xscale=other.image_xscale
		image_yscale=other.image_yscale
	}
}
instance_destroy()
