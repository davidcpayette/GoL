//undo object placement
if(ds_list_size(undolist)!=0 && !play_hit)
{
	if(position_meeting(mouse_x,mouse_y,oPlacementUsed))
	{
		inst = instance_position(mouse_x,mouse_y,oPlacementUsed);
		with(inst)
		{
			inst2 = instance_place(x,y,all);
			for(var i = 0; i < ds_list_size(other.undolist); i++)
			{
				if(ds_list_find_value(other.undolist,i) == inst2)
				{
					other.list_location = i;
					other.list_obj_found = true;
				}
			}
		}
		if(list_obj_found)
		{
			inst = ds_list_find_value(undolist,list_location);
			object_num[undo[inst.x,inst.y]]++;
			selector = undo[inst.x,inst.y];
	
			//remove used placement object and create placement allow
			if(position_meeting(inst.x,inst.y,oPlacementUsed))
			{
				instance_create(inst.x,inst.y,oPlacementAllow);
				clearspot = instance_position(inst.x,inst.y,oPlacementUsed);
				with(clearspot){instance_destroy();}
			}
			with(inst){instance_destroy();}
			ds_list_delete(undolist,list_location);	
		}
	}
	else
	{
		inst = ds_list_find_value(undolist,ds_list_size(undolist)-1);
		object_num[undo[inst.x,inst.y]]++;
		selector = undo[inst.x,inst.y];
	
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
}