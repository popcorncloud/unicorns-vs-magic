/// @desc DestroyPlayer
if variable_instance_exists(id,"weapon1")
	with (weapon1) instance_destroy();

if variable_instance_exists(id,"weapon2")
	with (weapon2) instance_destroy();

if variable_instance_exists(id,"InventoryName")
	with (InventoryName) hearts--;

instance_change(oDeadPlayer,true);

