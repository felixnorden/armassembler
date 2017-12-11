#ifndef OBJECT_H
#define OBJECT_H

#include "geometry.h"

typedef struct tObject
{
    GeometryPtr         geo;
    float               dirx, diry;
    float                posx, posy;
    void                (*draw) (struct tObject *);
    void                (*clear) (struct tObject *);
    void                (*move) (struct tObject *);
    void                (*set_speed) (struct tObject *, float speedx, float speedy);
} Object, *ObjectPtr;

void set_object_speed(ObjectPtr obj, float speedx, float speedy);
void update_object(ObjectPtr obj);


#endif // OBJECT_H
