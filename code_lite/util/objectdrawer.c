#include "objectdrawer.h"

void drawObjectToBuffer(Object object, frame_buffer fb, uint8 clearEnabled)
{
    uint8 xOffset = object.geo->sizex;
    uint8 yOffset = object.geo->sizey;

    uint8 width = object.geo->sizex/2;
    uint8 height = object.geo->sizey/2;

    for (int pixel = 0; pixel < object.geo->numpoints; pixel++)
    {
            fb.setPixel(
                fb,
                xOffset + width  + ((object.geo->px + pixel)->x),
                yOffset + height + ((object.geo->px + pixel)->x),
                clearEnabled ? FALSE : TRUE
            );
    }
}