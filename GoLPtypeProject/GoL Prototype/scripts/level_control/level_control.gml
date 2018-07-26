//restart level with "r"
if(keyboard_check_pressed(ord("R"))){room_restart();}

//restart game with "esc"
if(keyboard_check_pressed(vk_escape)){game_restart();}

//level change
if(((play_hit && !instance_exists(oMovingObject) && placed_something) || keyboard_check_pressed(vk_rshift)) && room != room_last){room_goto_next();}

