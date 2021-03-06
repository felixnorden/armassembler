#include "geometry.h"

#ifndef OBJECT_H
#define OBJECT_H

typedef struct tObject
{
    GeometryPtr         geo;
    int8                dirx, diry;
    int8                posx, posy;
    void                (*draw) (struct tObject *);
    void                (*clear) (struct tObject *);
    void                (*move) (struct tObject *);
    void                (*set_speed) (struct tObject *, int8 speedx, int8 speedy);
} Object, *ObjectPtr;

void set_object_speed(ObjectPtr obj, int8 speedx, int8 speedy)
{
    obj->dirx = speedx;
    obj->diry = speedy;
}

void update_object(ObjectPtr obj)
{
    obj->clear(obj);
    obj->posx = obj->posx + obj->dirx;
    obj->posy = obj->posy + obj->diry;

    if(obj->posx < 1 || obj->posx + obj->geo->sizex > 128)
        obj->dirx = -obj->dirx;

    if(obj->posy < 1 || obj->posy + obj->geo->sizey > 64)
        obj->diry = -obj->diry;

    obj->draw(obj);
}
#endif // OBJECT_H
