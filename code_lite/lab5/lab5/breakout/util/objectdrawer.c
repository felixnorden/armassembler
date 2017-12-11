#include "objectdrawer.h"

void drawObjectToBuffer(Object* object, FrameBuffer *fb, uint8 activate)
{
    uint8 xOffset = (uint8) object->posx;
    uint8 yOffset = (uint8) object->posy;

    for (int pixel = 0; pixel < object->geo->numpoints; pixel++)
    {
        fb->setPixel(
            fb,
            xOffset + ((object->geo->px + pixel)->x),
            yOffset + ((object->geo->px + pixel)->y),
            activate
        );
    }
}