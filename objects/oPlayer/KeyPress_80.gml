/// @description Insert description here
// You can write your code in this editor

//Check if there is an item to pick up, if yes, add this item to StoragePlace
if (CheckAndPickupItem(oRedFlower) != noone)
{
	//if we pickup this item, here we can do something with it
	other.InventoryName.hearts++; //this is just for testing, remove
}

CheckAndPickupItem(oFlask);
