event_inherited();
control = instance_nearest(x,y,oPlayerControl);
if(control.tick){
   switch(behavior){//tick:move,attack
        case 1: 
            move();
            attack_warning();
            break;
        case 2:
            attack_front();
            break;
    }
    behavior++;
    if(behavior > beh_max){behavior -= beh_max;}
}
health_control();

