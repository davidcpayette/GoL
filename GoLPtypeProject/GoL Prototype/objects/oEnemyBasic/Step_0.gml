event_inherited();
control = instance_nearest(x,y,oPlayerControl);
if(control.tick){
   switch(behavior){ //tick:move,attackfront
        case 1: 
            move();
            attack_warning();
            break;
        case -1: 
            attack_front();
            break;
    }
    behavior*=-1;
}
health_control();


