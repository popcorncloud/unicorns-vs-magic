/// @desc Move to next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,oTransition.target + 1); 
		/*
		show_debug_message(" The current room is: " + string(room));
		show_debug_message(" Transition ID is: " + string(oTransition.id));
		show_debug_message(" Other ID is: " + string(other.id));
		show_debug_message(" The oTransition.target is: " + string(oTransition.target));		
		if variable_instance_exists(other.id,"target")
		{
			show_debug_message(" The other.target is: " + string(other.target));
			//SlideTransition(TRANS_MODE.GOTO,other.target);		
			SlideTransition(TRANS_MODE.GOTO,oTransition.target + 1); 
		}
		else
		{
			show_debug_message(" **** Error! **** The other.target doesn't exists! Going to room0.");
			if variable_instance_exists(other.id,"target")
				show_debug_message(" 2nd: NOW Working! The oTransition.target is: " + string(oTransition.target));		
			else
				show_debug_message(" 2nd: Error! Still not working! Going to room0.");
			show_debug_message(" 2nd: The oTransition.target is: " + string(oTransition.target));		
			//SlideTransition(TRANS_MODE.GOTO,room0); //TMP: if something is wrong go back to room0
			SlideTransition(TRANS_MODE.GOTO,oTransition.target + 1); 
		}
		*/
	}
}
