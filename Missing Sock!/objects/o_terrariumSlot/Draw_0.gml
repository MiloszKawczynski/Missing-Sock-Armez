draw_self();

for(var i=0;i<ds_list_size(contain);i++)
{
	var sprite=scr_bugToSprite(ds_list_find_value(contain,i))
	if lock
	{
		draw_sprite_ext(s_bigBug,sprite,x,bbox_top+(sprite_get_height(sprite_index)/3)*1.5,3,3,0,c_white,1)
	}
	else
	{
		draw_sprite_ext(s_bigBug,sprite,x,bbox_top+(sprite_get_height(sprite_index)/3)*(i+1),3,3,0,c_white,1)
	}
}

//if !lock
//{
//	draw_set_color(c_yellow)
//	draw_circle(bbox_left+10,bbox_top+10,5,isHot)
//	draw_set_color(c_lime)
//	draw_circle(bbox_left+10,bbox_top+30,5,isGrounded)
//}