//place objects in level
if(position_meeting(mouse_x,mouse_y,oPlacementAllow) && 
    play_hit = false && 
    object_num[selector]>0)
{
	//as long as selected object in the list is someone
    if(object_list[selector] != noone)
    {
        string_to_object(object_list[selector]); //outputs obj
    }
	
	//as long as obj is someone, place it in the spot where PlacementAllow is located
    if(obj != noone)
    { 
        spot = instance_position(mouse_x, mouse_y, oPlacementAllow);
        inst = instance_create(spot.x, spot.y,obj);
		placed_something = true;
        instance_create(spot.x, spot.y, oPlacementUsed);
        with(spot){instance_destroy();}
        undo[inst.x,inst.y] = selector;
        ds_list_add(undolist,inst);
        object_num[selector]--;
		
		//auto tabs when a selection is 0
		if(object_num[selector] == 0)
		{
			selector++;
			if(selector > array_length_1d(object_list)-1){selector = 0;}
		}
    }
}