/// @function CheckAndPickupItem (obj_item);
/// @param obj_item Item to check or pick

var item_id = instance_position(x,y,argument[0]);

if (item_id != noone)
{
	for (var i=0; i< oStoragePlace.Length; i++)
	{
		if (oStoragePlace.items[i].ItemSprite == noone)
		{
			oStoragePlace.items[i].ItemSprite = object_get_sprite(item_id.object_index);
			instance_destroy(item_id);
			return item_id;
			//break;
		}
	}
}
return noone;