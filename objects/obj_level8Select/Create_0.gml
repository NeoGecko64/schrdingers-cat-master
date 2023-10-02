/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

activate_button = function()
	{
		if global.levelsCompleted >= 7
			{
			TransitionStart(Puzzle8, Sq_Fadeout, Sq_FadeIn)
			}
	}
