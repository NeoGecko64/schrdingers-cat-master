/// @description Insert description here
// You can write your code in this editor

rightKey = keyboard_check( ord("D"));
leftKey = keyboard_check( ord("A"));
upKey = keyboard_check( ord("W"));
downKey = keyboard_check( ord("S"));
spaceKey = keyboard_check_pressed( vk_space );


// player movement
	
	// get direction
	var _horizKey = rightKey - leftKey;
	var _vertiKey = downKey - upKey;
	moveDir = point_direction( 0, 0, _horizKey, _vertiKey);
	
	// get x y speed
	var _spd = 0;
	var _inputLevel = point_distance( 0, 0, _horizKey, _vertiKey);
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x( _spd, moveDir);
	yspd = lengthdir_y( _spd, moveDir);
	
	if spaceKey
	{
		
		layer_set_visible(Tutorial, false)
		
		if(!Dead)
		{	
			global.Dead = true;
			Dead = true;
			audio_play_sound(snd_catdie, 100, 0);
			sprite_index = spr_catDeadLeft
		}
		else
		{
			global.Dead = false;
			Dead = false;
			audio_play_sound(snd_catlive, 100, 0);
			sprite_index = spr_catAliveLeft
		}
		
	}
	
	//collision
	if place_meeting( x + xspd, y, obj_collision)
	{
		xspd = 0;	
	}
	if place_meeting( x, y + yspd, obj_collision)
	{
		yspd = 0;
	}
	
	//collision dead
	if place_meeting( x + xspd, y, obj_collisionAlive) && (global.Dead == true)
	{
		xspd = 0;	
	}
	if place_meeting( x, y + yspd, obj_collisionAlive) && (global.Dead == true)
	{
		yspd = 0;
	}
	
	//collision alive
	if place_meeting( x + xspd, y, obj_collisionDead) && (global.Dead == false)
	{
		xspd = 0;	
	}
	if place_meeting( x, y + yspd, obj_collisionDead) && (global.Dead == false)
	{
		yspd = 0;
	}
	
	//collision final
	if place_meeting( x + xspd, y, obj_collisionFinal) && (global.buttonUnpressed > 0)
	{
		xspd = 0;	
	}
	if place_meeting( x, y + yspd, obj_collisionFinal) && (global.buttonUnpressed > 0)
	{
		yspd = 0;
	}
	
	
	
	//move
if (_horizKey != 0 or _vertiKey !=0)
	{
	x += xspd;
	y += yspd;
	
	

//spritecontrol

		if global.Dead == false
			
			switch(moveDir)
			{
			case 0: sprite_index = spr_catAliveRight; break;
			case 180: sprite_index = spr_catAliveLeft; break;	
			}
			
			else	
			
			switch(moveDir)
			{
			case 0: sprite_index = spr_catDeadLeft; break;
			case 180: sprite_index = spr_catDeadRight; break;
			}
		
	} 
	else 
			
	{
	image_index = 0; 
	}

if spaceKey
	{
		global.pressed ++;	
	}