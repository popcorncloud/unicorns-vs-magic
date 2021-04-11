/// @description Insert description here
// You can write your code in this editor

//Check if there is an item to pick up, if yes, add this item to StoragePlace
if !(position_meeting(x,y,oRedFlower) or position_meeting(x,y,oFlask))
{
	if (oStoragePlace.visibility = ITEMS_HOLDER_VISIBILITY.SHOW_LAST_ONLY)
		oStoragePlace.visibility = ITEMS_HOLDER_VISIBILITY.SHOW_ALL;
	else
		oStoragePlace.visibility = ITEMS_HOLDER_VISIBILITY.SHOW_LAST_ONLY;
}

if (oStoragePlace.visibility == ITEMS_HOLDER_VISIBILITY.SHOW_ALL)
	hascontrol = false;
else
	hascontrol = true;

if (CheckAndPickupItem(oRedFlower) != noone)
{
	//if we pickup this item, here we can do something with it
	other.InventoryName.hearts++; //this is just for testing, remove
}

CheckAndPickupItem(oFlask);
CheckAndPickupItem(oPotionBookItem);
oPotionBook.visible = false;




