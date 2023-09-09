function animcurve_get_point(curve_id,channel_id,pointx)
{
	return animcurve_channel_evaluate(animcurve_get_channel(curve_id,channel_id),pointx);
}