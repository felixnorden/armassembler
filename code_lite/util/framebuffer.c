#include "framebuffer.h"

void setPixel(FrameBuffer* this, uint8 x, uint8 y, uint8 activate)
{
    uint32 * pageAddress = ((this->frame) + (y / 8) + (8 * x));
    if (activate)
    {
        *pageAddress |= (1 << y);
    }
    else
    {
        *pageAddress &= ~(1 << y);
    }
}

uint8 getPageValue(FrameBuffer* this, uint16 pageNumber)
{
    return this->frame[pageNumber];
}