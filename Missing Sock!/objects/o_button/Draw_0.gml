if (live_call()) return live_result;

draw_self()
draw_set_color(c_black)

draw_set_font(f_main)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x,y-4+hoover*3,"Ready?")

if !instance_exists(o_hand)
{
	draw_set_color(c_white)
	var sy=animcurve_get_point(ac_transition,0,timer);
	var _y1=lerp(-2*(room_height*0.1),room_height*0.1,sy)
	var _y2=lerp(-2*(room_height*0.9),room_height*0.9,sy)
	draw_rectangle(room_width*0.2,_y1,room_width*0.8,_y2,false)
	draw_set_color(c_black)
	draw_text(room_width/2,lerp(-2*room_height*0.15,room_height*0.15,sy),"SCORE:")
	draw_set_halign(fa_left)
	draw_text(room_width*0.22,lerp(-2*room_height*0.25,room_height*0.25,sy),"Catched bugs:")
	draw_text(room_width*0.22,lerp(-2*room_height*0.35,room_height*0.35,sy),"Catched different type of bugs:")
	draw_text(room_width*0.22,lerp(-2*room_height*0.45,room_height*0.45,sy),"Met bugs requirements:")
	var killedText="Killed bugs:"
	if killed>0
	{
		killedText="Killed bugs. You Really Shouldn't Mix Those:"
	}
	draw_text(room_width*0.22,lerp(-2*room_height*0.55,room_height*0.55,sy),killedText)
	draw_text(room_width*0.22,lerp(-2*room_height*0.75,room_height*0.75,sy),"Overall:")
	draw_set_halign(fa_right)
	draw_text(room_width*0.78,lerp(-2*room_height*0.25,room_height*0.25,sy),number)
	draw_text(room_width*0.78,lerp(-2*room_height*0.35,room_height*0.35,sy),variatyScore)
	draw_text(room_width*0.78,lerp(-2*room_height*0.45,room_height*0.45,sy),happyScore)
	draw_text(room_width*0.78,lerp(-2*room_height*0.55,room_height*0.55,sy),killed)
	draw_text(room_width*0.78,lerp(-2*room_height*0.75,room_height*0.75,sy),scoore)
}