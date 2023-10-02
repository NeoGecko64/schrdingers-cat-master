
show_debug_message("Levels Completed" + string(global.levelsCompleted));

if place_meeting(x,y, obj_cat)
	{
		if (!levelbeat[roomNum - 1])
			{
			global.levelsCompleted ++;
			levelbeat[roomNum - 1] = true;
			show_debug_message("Levels Completed" + string(global.levelsCompleted));
			}
			
		room_goto(LevelSelect)
	}
	

