/// @desc Draw Score
if (instance_exists(oPlayer))
{
	
	draw_set_color(c_maroon);
	draw_set_font(fScore);
	draw_text(10,10,"Score: " + string(oPlayer.kills));
	draw_text(10,30,"Hearts: " + string(oInventory.hearts));
	draw_text(10,50,"Money: " + string(oInventory.money));
	
	oPlayer.StoragePlace.x = oCamera.x - oCamera.view_w_half + 100;
	oPlayer.StoragePlace.y = oCamera.y - oCamera.view_h_half  + 10;	
	
}

if (instance_exists(oPlayer2))
{
	
	draw_set_color(c_maroon);
	draw_set_font(fScore);
	draw_text(window_get_width()-100,10,"Score: " + string(oPlayer2.kills));
	draw_text(window_get_width()-100,30,"Hearts: " + string(oInventory2.hearts));
	draw_text(window_get_width()-100,50,"Money: " + string(oInventory2.money));
}