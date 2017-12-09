#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include "types.h"

// Todo; implement feature to remember what pages have been altered
// so that the renderer doesn't have to re-render pages that haven't
// changed.

#define SIZE_X  128
#define SIZE_Y  64
#define PAGES   1024    // SIZE_X * SIZE_Y / 8

static uint8 buffer[PAGES];

typedef struct tFrameBuffer{
    uint8_c    size_x;
    uint8_c    size_y;
    uint8_c    pages;
    uint8**    frame;
    void (*setPixel)(struct tFrameBuffer* this, uint8 x, uint8 y, uint8 activate);
    uint8 (*getPageValue)(struct tFrameBuffer* this, uint16 pageNumber);
} FrameBuffer;

// Not sure if working correctly
// Sets a pixel to active(black), or inactive(white) in the FrameBuffer
void setPixel(FrameBuffer* this,uint8 x, uint8 y, uint8 activate);

// Returns a byte of the pixel values from the selected page.
// A page is a byte section of the framebuffer and page id number counting continues
// through the whole buffer, in contrast to the pages on the graphics display.
uint8 getPageValue(FrameBuffer* this,uint16 pageNumber);

const FrameBuffer frameBuffer = {
    SIZE_X,
    SIZE_Y,
    PAGES,
    &buffer,
    setPixel,
    getPageValue
};

#endif // FRAMEBUFFER_H