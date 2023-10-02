spaceKey = keyboard_check_pressed( vk_space );

_sequence = Transwall;
_layerName = "Sequences";


if canplay
	{
		if spaceKey
		{
			canplay = true;
			layer_sequence_create(_layerName, 320, 180, _sequence);
		}
	}
	
_layerName = "Sequences";
