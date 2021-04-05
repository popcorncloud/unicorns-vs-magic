/// @description Insert description here
if (oStoragePlace.visibility == ITEMS_HOLDER_VISIBILITY.SHOW_ALL)
{
	oStoragePlace.SelectedItem--;
	if (oStoragePlace.SelectedItem < 0)
		oStoragePlace.SelectedItem=oStoragePlace.Length-1;
}
