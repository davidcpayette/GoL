tick = false; //Initialize, to be sure tick doesn't happen more than one frame

//space to play/pause, right to step
play_controls();

//tab to change selection
selector_control();

//lmb to place an object
//TODO click on an object you placed to rotate it
if(mouse_check_button_pressed(mb_left))
{
	place_object();
}

//rmb to remove an object
//TODO click objects to undo them, rather than strict undo, perhaps move undo to different key
if(mouse_check_button_pressed(mb_right))
{
	remove_object();
}

//clock subimage control
clock_control();

//switches subimage of play/pause sprite
playsprite = num_frames/10 - 1;   

//r to restart, esc to restart game, rshift to skip level
level_control();

