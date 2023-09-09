width=800
height=450

zoom=0.85;

if room_get_name(room)=="r_outside"
{
	target=o_elf;
	
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom
}
else
{
	target=o_hand;
	
	camX=0
	camY=0
}