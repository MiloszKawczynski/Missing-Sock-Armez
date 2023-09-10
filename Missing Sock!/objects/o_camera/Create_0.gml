width=800
height=450

zoom=0.85;


if room_get_name(room)=="r_outside"
{
	target=o_elf;
	
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom
	
	time=5*60*60
	//time=60*5
	
	transition=0;
	transitionV=0;
}
else
{
	target=o_hand;
	
	camX=0
	camY=0
	
	time=0
	
	transition=0.2;
	transitionV=animcurve_get_point(ac_transition,0,transition)*2
}

function prompt(_catched) constructor
{
    catched=_catched
	timer=0
	hidden=false

    static draw = function(shift)
    {
		if hidden==false
		{
			var sx=animcurve_get_point(ac_prompt,0,timer)*(45*3.25)
			draw_sprite_ext(s_prompt,0,o_camera.camX+sx,o_camera.camY+shift,2,2,0,c_white,1)
			draw_set_color(c_black)
			draw_set_font(f_main)
			draw_text(o_camera.camX+sx-130,o_camera.camY+shift-12,"You catched "+catched)
			
			if timer<=1
			{
				timer+=0.01;
			}
		}
    }
}

promptsList=ds_list_create()