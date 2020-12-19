/// @desc Draw Score
if (instance_exists(oPlayer))
{
	
	draw_set_color(c_maroon);
	draw_set_font(fScore);
	draw_text(10,10,"Score: " + string(oPlayer.kills));
	draw_text(10,30,"Hearts: " + string(oInventory.hearts));
}
