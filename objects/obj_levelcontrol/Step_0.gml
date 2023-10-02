if global.pressed > maxPresses
	{
		room_goto(LevelSelect);
	}




if global.buttonUnpressed == 0
	{
	layer_set_visible(finalDoor, false)	
	}


spaceKey = keyboard_check_pressed( vk_space );


if spaceKey
{
	
	pressesLeft --;
	
	if (!dead)
		{
			layer_set_visible(wallsDead, true);
			layer_set_visible(floorDead, true);
			layer_set_visible(floorAlive, false);
			layer_set_visible(wallsAlive, false);
			dead = true;
		}
		else
		{
			layer_set_visible(wallsDead, false);
			layer_set_visible(floorDead, false);
			layer_set_visible(floorAlive, true);
			layer_set_visible(wallsAlive, true);
			dead = false;
		}
}

