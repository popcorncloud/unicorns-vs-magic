/// @desc Draw Score
if (instance_exists(oPlayer))
{
	
	draw_set_color(c_maroon);
	draw_set_font(fScore);
	draw_text(10,10,"Score: " + string(oPlayer.kills));
	draw_text(10,30,"Hearts: " + string(oInventory.hearts));
	draw_text(10,50,"Money: " + string(oInventory.money));
	
	//show StoragePlace + its content
	switch (oStoragePlace.visibility)
	{
		case ITEMS_HOLDER_VISIBILITY.SHOW_ALL:
			for (var i=0; i< oStoragePlace.Length; i++)
			{
				//show StoragePlace
				item = oStoragePlace.items[i];
				draw_sprite(object_get_sprite(item.object_index),0,oStoragePlace.pos_x + (item.sprite_width + oStoragePlace.spacing)*i,oStoragePlace.pos_y);
				if (item.ItemSprite != noone)
				{
					//if StoragePlace is not empty, draw the item
					draw_sprite(item.ItemSprite,0,oStoragePlace.pos_x + (item.sprite_width + oStoragePlace.spacing)*i,oStoragePlace.pos_y);
				}
			}
			break;
			
		case ITEMS_HOLDER_VISIBILITY.SHOW_LAST_ONLY:
			
			draw_sprite(object_get_sprite(oStoragePlace.items[0].object_index),0,oStoragePlace.pos_x,oStoragePlace.pos_y);
			
			for (var i=0; i< oStoragePlace.Length; i++)
			{
				if (oStoragePlace.items[i].ItemSprite == noone)
				{
					break;
				}
			}
			if (i > 0)
			{
				i = i-1;
				draw_sprite(oStoragePlace.items[i].ItemSprite,0,oStoragePlace.pos_x,oStoragePlace.pos_y);
			}
			break;
		
	}
	

	
	
}

if (instance_exists(oPlayer2))
{
	
	draw_set_color(c_maroon);
	draw_set_font(fScore);
	draw_text(window_get_width()-100,10,"Score: " + string(oPlayer2.kills));
	draw_text(window_get_width()-100,30,"Hearts: " + string(oInventory2.hearts));
	draw_text(window_get_width()-100,50,"Money: " + string(oInventory2.money));
}