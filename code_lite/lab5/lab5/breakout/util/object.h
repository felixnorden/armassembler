#ifndef OBJECT_H
#define OBJECT_H

#include "geometry.h"

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

void set_object_speed(ObjectPtr obj, int8 speedx, int8 speedy);
void update_object(ObjectPtr obj);


#endif // OBJECT_H
