#include "object.h"

void set_object_speed(ObjectPtr obj, float speedx, float speedy)
{
    obj->dirx = speedx;
    obj->diry = speedy;
}

void update_object(ObjectPtr obj)
{
    obj->posx = obj->posx + obj->dirx;
    obj->posy = obj->posy + obj->diry;
}