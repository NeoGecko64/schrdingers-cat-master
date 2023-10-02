if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "end":
			TransitionStart(SplashLudum, Sq_Fadeout, Sq_FadeIn);
        break;
		
		case "end2":
			TransitionStart(MainMenu, Sq_Fadeout, Sq_FadeIn);
        break;
    }
}