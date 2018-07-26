//tab through objects to place in level
if(keyboard_check_pressed(vk_tab) || mouse_wheel_up())
{   
    if(selector < array_length_1d(object_list)-1)
    {
        selector++;
    }
    else
    {
        selector = 0;
    }
}
if(mouse_wheel_down())
{
	if(selector > 0)
    {
        selector--;
    }
    else
    {
        selector = array_length_1d(object_list)-1;
    }
}