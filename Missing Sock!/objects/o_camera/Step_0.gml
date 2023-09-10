if (live_call()) return live_result;

if target==o_elf
{
	camX=target.x-(width/2)*zoom
	camY=target.y-(height/2)*zoom
	
	camX=clamp(camX,0,room_width-camera_get_view_width(view_camera[0]))
	camY=clamp(camY,0,room_height-camera_get_view_height(view_camera[0]))

	var camW=(width)*zoom
	var camH=(height)*zoom

	camera_set_view_pos(view_camera[0],camX,camY);
	camera_set_view_size(view_camera[0],camW,camH);
}

time--;