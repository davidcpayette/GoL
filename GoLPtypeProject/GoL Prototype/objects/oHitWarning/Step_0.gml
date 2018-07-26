if(place_meeting(x,y,oHitWarning)){sprite_index = sMultiHitWarning}
if((oPlayerControl.tick && destroy_next_tick) || place_meeting(x,y,oDamage)){instance_destroy();}
if(oPlayerControl.tick){destroy_next_tick = true;}


