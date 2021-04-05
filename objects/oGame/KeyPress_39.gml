/// @description Insert description here
// You can write your code in this editor
if (oStoragePlace.visibility == ITEMS_HOLDER_VISIBILITY.SHOW_ALL)
{
	oStoragePlace.SelectedItem++;
	if (oStoragePlace.SelectedItem > (oStoragePlace.Length-1))
		oStoragePlace.SelectedItem=0;
}