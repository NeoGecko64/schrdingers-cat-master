/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

activate_button = function()
	{
		if global.levelsCompleted >= 0
			{
			TransitionStart(Puzzle1, Sq_Fadeout, Sq_FadeIn)
			}
	}
