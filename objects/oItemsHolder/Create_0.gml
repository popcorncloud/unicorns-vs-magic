/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<Length; i++)
{
    items[i] = instance_create_layer(0,0,layer_get_id("Inventory"),oItemHolder);
	with(items[i])
	{
		visible = false;
		persistent = true;
		ItemName = "";
	}	
}