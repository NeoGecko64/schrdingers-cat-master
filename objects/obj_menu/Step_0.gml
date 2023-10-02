//get inputs
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_accept = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level])

//movement
pos += key_down - key_up;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1}

//using the options
if key_accept {
	
	var _sml = menu_level;
	
	switch(menu_level)
	{	
		//pause menu
		case 0:
			switch(pos)
			{
				//start game
				case 0:
				room_goto(LevelSelect)
				break;
		
				//credits
				case 1:
				TransitionStart(Credits, Sq_Fadeout, Sq_FadeIn)
				break;
			
				//settings
				//case 2:
				//menu_level = 1;
				//break;

				//quit game
				case 2:
				game_end();
				break;
			}
		
		
		//settings
		case 1:
				switch(pos)
				{
					//Fullscreen
					//case 0:
					//if global.fullscreen == true
					//	{
					//		global.fullscreen = false
					//	}
					//	else
					//	{
					//		global.fullscreen = true
					//	}
					//break;
				
					//back
					case 1:
					menu_level = 0;
					break;
				}
		break;
	}
		
	if _sml != menu_level {pos = 0};
	
//	op_length = array_length(option[menu_level])

}
	
	

	
	
	
	
	
	
	
