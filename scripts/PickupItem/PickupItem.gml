/// @desc PickupItem

if (object_index == oHeart)
{
	if variable_instance_exists(other.id,"InventoryName")
		with (other.InventoryName) hearts++;
}
	

if (object_index == oMoney)
{
	if variable_instance_exists(other.id,"InventoryName")
		with (other.InventoryName) money++;
}	
	
instance_destroy();
