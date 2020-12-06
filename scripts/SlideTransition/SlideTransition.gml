/// @desc SlideTrensition(mode, targetroom)
/// @arg  Mode sets transition mode between next, restart and goto.
/// @darg Target sets target room when using the goto mode.

with (oTransition)
{
	if (argument_count > 1) target = argument[1];	
	mode = argument[0];
}