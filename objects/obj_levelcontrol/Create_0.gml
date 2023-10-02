levelMax[0] = 99;
levelMax[1] = 4;
levelMax[2] = 4;
levelMax[3] = 6;
levelMax[4] = 4;
levelMax[5] = 4;
levelMax[6] = 2;
levelMax[7] = 4;


buttonPosX[0, 0] = 569;
buttonPosY[0, 0] = 262;

buttonPosX[1, 0] = 552;
buttonPosY[1, 0] = 252;

buttonPosX[2, 0] = 223;
buttonPosY[2, 0] = 115;

buttonPosX[3, 0] = 84;
buttonPosY[3, 0] = 285;

buttonPosX[3, 1] = 204;
buttonPosY[3, 1] = 274;

buttonPosX[4, 0] = 512;
buttonPosY[4, 0] = 222;

buttonPosX[4, 1] = 97;
buttonPosY[4, 1] = 292;

buttonPosX[5, 0] = 500;
buttonPosY[5, 0] = 203;

buttonPosX[5, 1] = 83;
buttonPosY[5, 1] = 81;

buttonPosX[6, 0] = 80;
buttonPosY[6, 0] = 73;

buttonPosX[6, 1] = 432;
buttonPosY[6, 1] = 279;

buttonPosX[6, 2] = 546;
buttonPosY[6, 2] = 279;

buttonPosX[7, 0] = 490;
buttonPosY[7, 0] = 86;

buttonPosX[7, 1] = 180;
buttonPosY[7, 1] = 194;

buttonPosX[7, 2] = 522;
buttonPosY[7, 2] = 292;


//walls/floors layer
wallsAlive = layer_get_id("WallsAlive")
wallsDead = layer_get_id("WallsDead")

floorDead = layer_get_id("FloorDead")
floorAlive = layer_get_id("FloorAlive")

//button


//final door layer
finalDoor = layer_get_id("FinalDoor")

layer_set_visible(finalDoor, true)	

layer_set_visible(wallsDead, false);
layer_set_visible(floorDead, false);
layer_set_visible(floorAlive, true);
layer_set_visible(wallsAlive, true);

dead = false;


//levelmax
var roomName = room_get_name(room)

var roomNum = string_digits(roomName)

maxPresses = levelMax[roomNum - 1]

//ButtonsReq
buttonsReq = array_length(buttonPosX[roomNum - 1])
pressesLeft = maxPresses
global.buttonUnpressed = buttonsReq

bpx = buttonPosX[roomNum - 1]
bpy = buttonPosY[roomNum - 1]

show_debug_message(string(bpx) + "," + string(bpy))

draw_set_font(global.font_main);
draw_set_valign(fa_middle);
draw_set_halign(fa_top);

for (var i = 0; i < buttonsReq; i++)
	{
	
	instance_create_layer(bpx[i], bpy[i], "Map" ,obj_button)
	}