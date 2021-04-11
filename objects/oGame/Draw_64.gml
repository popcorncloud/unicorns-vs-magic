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
				if (oStoragePlace.SelectedItem == i)
				{
					item.highlited = true;
					draw_set_alpha(0.5);
					draw_set_colour(c_black);
					var x_top = oStoragePlace.pos_x - item.sprite_width/2;
					var y_top = oStoragePlace.pos_y + item.sprite_height/2 + oStoragePlace.spacing;
					draw_rectangle(x_top,y_top,x_top + 500,y_top + 500,false);
					//draw_text(x+5, y+5, "LEVEL 1");
					draw_set_alpha(1);
					draw_set_colour(c_white);
					draw_text(x_top + 10, y_top + 10, item.ItemName );
					if(item.IsPotionBook)
					{
						var book_x = camera_get_view_x(view_camera[0])+x_top+50;
						var book_y = camera_get_view_y(view_camera[0])+y_top+50;
						oPotionBook.x = book_x;
						oPotionBook.y = book_y;
						oPotionBook.visible = true;
						
						var PageNumber = 1;
						draw_sprite(asset_get_index("sPotionBookText"),PageNumber,book_x,book_y); //Show Page Text
						for (var j = 1; j < oPotionBook.page[PageNumber,0] + 1; j++) //Show Items needed
						{
							var page_sprite_id = asset_get_index(oPotionBook.page[PageNumber,j]);
							draw_sprite(page_sprite_id,0,book_x + (sprite_get_width(page_sprite_id) + oStoragePlace.spacing)*j,book_y);
						}
					}
					else 
						oPotionBook.visible = false;
				}
				else
					item.highlited = false;
				draw_sprite(object_get_sprite(item.object_index),item.image_index,oStoragePlace.pos_x + (item.sprite_width + oStoragePlace.spacing)*i,oStoragePlace.pos_y);
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