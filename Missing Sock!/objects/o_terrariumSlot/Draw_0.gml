draw_self();

for(var i=0;i<ds_list_size(contain);i++)
{
	var sprite=scr_bugToSprite(ds_list_find_value(contain,i))
	if lock
	{
		draw_sprite_ext(s_bigBug,sprite,x,bbox_top+((image_yscale*16)/3)*1.5,3,3,0,c_white,1)
	}
	else
	{
		draw_sprite_ext(s_bigBug,sprite,x,bbox_top+((image_yscale*16)/3)*(i+1),3,3,0,c_white,1)
	}
}