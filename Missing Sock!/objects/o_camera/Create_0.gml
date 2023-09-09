width=800
height=450

zoom=1;

if room_get_name(room)=="r_outside"
{
	target=o_elf;
	
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom
}
else
{
	target=o_hand;
	
	camX=(room_width/2)*zoom
	camY=0*zoom
}