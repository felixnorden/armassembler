#include "objectdrawer.h"

void drawObjectToBuffer(Object* object, FrameBuffer *fb, uint8 activate)
{
    // uint8 width = object->geo->sizex;
    // uint8 height = object->geo->sizey;

    uint8 xOffset = object->posx;
    uint8 yOffset = object->posy;

    for (int pixel = 0; pixel < object->geo->numpoints; pixel++)
    {
		uint32 x = xOffset + ((object->geo->px + pixel)->x);
        fb->setPixel(
            fb,
            xOffset + ((object->geo->px + pixel)->x),
            yOffset + ((object->geo->px + pixel)->y),
            activate
        );
    }
}