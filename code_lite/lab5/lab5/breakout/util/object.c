#include "object.h"

void set_object_speed(ObjectPtr obj, int8 speedx, int8 speedy)
{
    obj->dirx = speedx;
    obj->diry = speedy;
}

void update_object(ObjectPtr obj)
{
    obj->posx = obj->posx + obj->dirx;
    obj->posy = obj->posy + obj->diry;

    if(obj->posx < 1 || obj->posx > 128)
        obj->dirx = -obj->dirx;

    if(obj->posy < 1 || obj->posy > 64)
        obj->diry = -obj->diry;
}