#ifndef GEOMETRY_H
#define GEOMETRY_H

#include "types.h"

#define MAX_POINTS 21

typedef struct tPoint
{
    uint8 x;
    uint8 y;
} Point;

typedef struct tGeometry
{
    uint8 numpoints;
    uint8 sizex;
    uint8 sizey;
    Point px[MAX_POINTS];
} Geometry, *GeometryPtr;

#endif // GEOMETRY_H