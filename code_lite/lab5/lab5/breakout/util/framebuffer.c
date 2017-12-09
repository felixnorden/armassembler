#include "framebuffer.h"

FrameBuffer frameBuffer = {
    SIZE_X,
    SIZE_Y,
    PAGES,
    buffer,
    setPixel,
    getPageValue
};

void setPixel(FrameBuffer* this, uint8 x, uint8 y, uint8 activate)
{
    uint8 * pageAddress = ((this->frame) + (y / 8) + (8 * x));
    if (activate)
    {
        *pageAddress |= (1 << y % 8);
    }
    else
    {
        *pageAddress &= ~(1 << y % 8);
    }
}

uint8 getPageValue(FrameBuffer* this, uint16 pageNumber)
{
	uint8 value = this->frame[pageNumber]; 
    return value;
}