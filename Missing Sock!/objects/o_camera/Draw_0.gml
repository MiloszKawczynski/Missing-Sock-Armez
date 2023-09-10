if (live_call()) return live_result;

if room_get_name(room)=="r_outside"
{

	var j=0

	for(var i=0;i<ds_list_size(promptsList);i++)
	{
		var info=ds_list_find_value(promptsList,i)
		if info.hidden==true
		{
			continue;
		}
		j++
	
		info.draw(j*48)
	}

	var allHidden=true;
	for(var i=0;i<ds_list_size(promptsList);i++)
	{
		var info=ds_list_find_value(promptsList,i)
		if info.timer<1
		{
			allHidden=false
			break;
		}
	}

	if allHidden
	{
		for(var i=0;i<ds_list_size(promptsList);i++)
		{
			var info=ds_list_find_value(promptsList,i)
			info.hidden=true
		}
	}

	draw_sprite_ext(s_prompt,0,o_camera.camX+width-(45*3),o_camera.camY+48,-2,2,0,c_white,1)
	draw_set_color(c_black)
	draw_set_font(f_main)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	var minutes=time div (60*60)
	var seconds=time/60
	seconds-=minutes*60
	seconds=floor(seconds)
	if seconds<10
	{
		seconds=string("0{0}",seconds)
	}
	else
	{
		seconds=string(seconds)
	}
	draw_text(o_camera.camX+width-(45*4),o_camera.camY-12+48,string(minutes)+":"+seconds)
}

var side=1;

if room_get_name(room)!="r_outside"
{
	side=-1
}

if side==-1
{
	draw_sprite_ext(s_transition,0,camX+((transitionV*side/1)*width)+width,camY,-1,1,0,c_white,1)
	draw_set_color(c_black)
	draw_rectangle(camX+((transitionV/1)*width*side)+width*2,camY,room_width,camY+height*50,0)
}
else
{
	draw_sprite_ext(s_transition,0,camX+((transitionV*side/1)*width),camY,1,1,0,c_white,1)
	draw_set_color(c_black)
	draw_rectangle(0,camY,camX+((transitionV/1)*width*side)-width,camY+height*50,0)
}