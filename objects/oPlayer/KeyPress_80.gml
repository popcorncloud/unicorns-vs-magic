/// @description Insert description here
// You can write your code in this editor

//this is just to test how to pick up a start1. Delete this later
//oStoragePlace.items[0].ItemSprite = asset_get_index("sStar1");


var item_id = instance_position(x,y,oRedFlower);

if (item_id != noone)
{
	for (var i=0; i< oStoragePlace.Length; i++)
	{
		if (oStoragePlace.items[i].ItemSprite == noone)
		{
			oStoragePlace.items[i].ItemSprite = object_get_sprite(item_id.object_index);
			break;
		}
	}
}

var item_id = instance_position(x,y,oFlask);

if (item_id != noone)
{
	for (var i=0; i< oStoragePlace.Length; i++)
	{
		if (oStoragePlace.items[i].ItemSprite == noone)
		{
			oStoragePlace.items[i].ItemSprite = object_get_sprite(item_id.object_index);
			break;
		}
	}
}