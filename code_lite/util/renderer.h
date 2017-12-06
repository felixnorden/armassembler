#ifndef RENDERER_H
#define RENDERER_H

#include "types.h"
#include "framebuffer.h"
#include "graphicdisplay.h"

typedef struct {
    frame_buffer *frame;
    void (*renderFrame)(Renderer renderer);
    void (*init)(void);
    void (*setFrameBuffer)(Renderer renderer, frame_buffer *fb);
} Renderer;

// Renders active frame in renderer to the graphicsdisplay
void renderFrame(Renderer renderer);

// Initializes the renderer
void init(void);

// Sets the active frame_buffer in the renderer
void setFrameBuffer(Renderer renderer, frame_buffer *fb);

// Default renderer
Renderer renderer = {
    0,
    renderFrame,
    init,
    setFrameBuffer
};

#endif // RENDERER_H