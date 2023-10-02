//if place_meeting(x,y, obj_cat)
//	{
//		global.buttonPressed = 1;	}




//if buttonPushed == 1
//	{
//		image_index = 1;	
//		
//	}
//	else
//	{
//		image_index = 0;	
//	}



if (!pressed && !place_empty(x, y, obj_cat) )
	{
	    pressed = true;
		audio_play_sound(snd_button, 10, false);
		show_debug_message(pressed);
		global.buttonUnpressed--;
		image_index = 1;
	}