#include "renderer.h"

void renderFrame(Renderer *renderer)
{

    for (uint8 page = 0; page < renderer->frame->pages; page++)
    {

        // Select active display based on buffer page index
        uint8 selectedScreen = page < renderer->frame->pages / 2 ? B_CS1 : B_CS2;

        // Set address and page
        graphic_write_command(LCD_SET_PAGE | page % 8, selectedScreen); // page % 8 gives the physical page
        graphic_write_command(LCD_SET_ADD | page / 8, selectedScreen);  // page / 8 gives address

        // Render byte to display
        graphic_write_data(
            renderer->frame->getPageValue(renderer->frame, page),
            selectedScreen);
    }
}

void init(void)
{
    graphic_initialize();
}

void setFrameBuffer(Renderer *renderer, FrameBuffer *fb)
{
    renderer->frame = fb;
}
