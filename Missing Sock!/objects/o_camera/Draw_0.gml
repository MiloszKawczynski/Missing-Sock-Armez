if (live_call()) return live_result;

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

draw_sprite_ext(s_prompt,0,o_camera.camX+width-(45*3.25),o_camera.camY+48,-2,2,0,c_white,1)
draw_set_color(c_black)
draw_set_font(f_main)
var minutes=time div (60*60)
seconds=minutes*60
seconds*=60
seconds-=minutes*60
//seconds=floor(seconds)
draw_text(o_camera.camX+width-(45*4.5),o_camera.camY-12+48,string(minutes)+":"+string(seconds))