#include "framebuffer.h"

void setPixel(frame_buffer fb,uint16 x, uint16 y, uint8 activate) {
    uint32* pageAddress = (((uint32*)fb.frame) + (8 * y));
    if (activate) {
        *pageAddress |= (1<<x);
    } else {
        *pageAddress &= ~(1<<x);        
    }
}

uint8 getPageValue(frame_buffer fb,uint16 pageNumber) {
    uint32* pageAddress = (((uint32*)fb.frame) + pageNumber);
    return *pageAddress;
}