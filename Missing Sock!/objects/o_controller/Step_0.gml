if keyboard_check_pressed(ord("R"))
{
	room_restart();
}

if keyboard_check_pressed(ord("T"))
{
	if room_get_name(room)=="r_outside"
	{
		room_goto(r_terrarium)
	}
	else
	{
		room_goto(r_outside)
	}
}