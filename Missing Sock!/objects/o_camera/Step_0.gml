if (live_call()) return live_result;//!!!

if target==o_elf
{
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom

	var camW=(width)*zoom
	var camH=(height)*zoom

	camera_set_view_pos(view_camera[0],camX,camY);
	camera_set_view_size(view_camera[0],camW,camH);
}
else
{
	//camX=(width/2)*zoom
	var camS=7;
	var camM=60
	
	if target.x<camera_get_view_x(view_camera[0])+camM
	{
		if camera_get_view_x(view_camera[0])>0
		{		
			camX-=camS
		}
	}
	
	if target.x>camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-camM
	{
		if camera_get_view_x(view_camera[0])<room_width-camera_get_view_width(view_camera[0])
		{		
			camX+=camS
		}
	}
	
	camY=0*zoom

	var camW=(width)*zoom
	var camH=(height)*zoom
	
	camera_set_view_pos(view_camera[0],camX,camY);
	camera_set_view_size(view_camera[0],camW,camH);
}