if target==o_elf
{
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom

	var camW=(width)*zoom
	var camH=(height)*zoom

	camera_set_view_pos(view_camera[0],camX,camY);
	camera_set_view_size(view_camera[0],camW,camH);
}