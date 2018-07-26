//undo object placement
if(ds_list_size(undolist)!=0 && !play_hit)
{
    inst = ds_list_find_value(undolist,ds_list_size(undolist)-1);
    object_num[undo[inst.x,inst.y]]++;
	
	//remove used placement object and create placement allow
    if(position_meeting(inst.x,inst.y,oPlacementUsed))
    {
        instance_create(inst.x,inst.y,oPlacementAllow);
        clearspot = instance_position(inst.x,inst.y,oPlacementUsed);
        with(clearspot){instance_destroy();}
    }
    with(inst){instance_destroy();}
    ds_list_delete(undolist,ds_list_size(undolist)-1);
}