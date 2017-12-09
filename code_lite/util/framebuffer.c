#include "framebuffer.h"

void setPixel(FrameBuffer* this, uint8 x, uint8 y, uint8 activate)
{
    uint32 * pageAddress = ((this->frame) + (8 * y));
    if (activate)
    {
        *pageAddress |= (1 << x);
    }
    else
    {
        *pageAddress &= ~(1 << x);
    }
}

uint8 getPageValue(FrameBuffer* this, uint16 pageNumber)
{
    return this->frame[pageNumber];
}