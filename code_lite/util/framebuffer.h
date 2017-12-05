#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include "types.h"

// Todo; implement feature to remember what pages have been altered
// so that the renderer doesn't have to re-render pages that haven't
// changed.

#define SIZE_X  128
#define SIZE_Y  64
#define PAGES   1024    // SIZE_X * SIZE_Y / 8

static uint8 buffer1[PAGES] = {0};
static uint8 buffer2[PAGES] = {0};

typedef struct {
    uint16_c    size_x;
    uint16_c    size_y;
    uint16_c    pages;
    uint8*      frame;
    void (*setPixel)(frame_buffer fb, uint16 x, uint16 y, bool activate);
    uint8 (*getPageValue)(frame_buffer fb, uint16 pageNumber);
} frame_buffer;

// Not sure if working correctly
// Sets a pixel to active(black), or unactive(white) in the frame_buffer
void setPixel(frame_buffer fb,uint16 x, uint16 y, bool activate) {
    uint32* pageAddress = (((uint32*)fb.frame) + (8 * y));
    if (activate) {
        *pageAddress |= (1<<x);
    } else {
        *pageAddress &= ~(1<<x);        
    }
}

// Returns a byte of the pixel values from the selected page.
// A page is a byte section of the framebuffer and page id number counting continues
// through the whole buffer, in contrast to the pages on the graphics display.
uint8 getPageValue(frame_buffer fb,uint16 pageNumber) {
    uint32* pageAddress = (((uint32*)fb.frame) + pageNumber);
    return *pageAddress;
}

frame_buffer frame1 = {
    SIZE_X,
    SIZE_Y,
    PAGES,
    buffer1,
    setPixel,
    getPageValue
};

frame_buffer frame2 = {
    SIZE_X,
    SIZE_Y,
    PAGES,
    buffer2,
    setPixel,
    getPageValue
};

#endif // FRAMEBUFFER_H