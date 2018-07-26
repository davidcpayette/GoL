//tab through objects to place in level
if(keyboard_check_pressed(vk_tab))
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