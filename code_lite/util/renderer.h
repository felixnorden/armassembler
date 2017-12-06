#ifndef RENDERER_H
#define RENDERER_H

#include "types.h"
#include "framebuffer.h"
#include "graphicdisplay.h"

typedef struct {
    FrameBuffer *frame;
    void (*renderFrame)(Renderer renderer);
    void (*init)(void);
    void (*setFrameBuffer)(Renderer renderer, FrameBuffer *fb);
} Renderer;

// Renders active frame in renderer to the graphicsdisplay
void renderFrame(Renderer renderer);

// Initializes the renderer
void init(void);

// Sets the active FrameBuffer in the renderer
void setFrameBuffer(Renderer renderer, FrameBuffer *fb);

// Default renderer
Renderer renderer = {
    0,
    renderFrame,
    init,
    setFrameBuffer
};

#endif // RENDERER_H