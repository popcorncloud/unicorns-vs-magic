with (oPlayer2)
{
	if (hascontrol)
	{
		hascontrol = false;
		//SlideTransition(TRANS_MODE.GOTO,other.target);
		SlideTransition(TRANS_MODE.GOTO,oTransition.target + 1); 
	}
}
