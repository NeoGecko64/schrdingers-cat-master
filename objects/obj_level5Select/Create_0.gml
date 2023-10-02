/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

activate_button = function()
	{
		if global.levelsCompleted >= 4
			{
			TransitionStart(Puzzle5, Sq_Fadeout, Sq_FadeIn)
			}
	}
