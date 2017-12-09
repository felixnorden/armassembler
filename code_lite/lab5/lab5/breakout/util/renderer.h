#ifndef RENDERER_H
#define RENDERER_H

#include "types.h"
#include "framebuffer.h"
#include "graphicdisplay.h"

typedef struct tRenderer
{
    FrameBuffer *frame;
    void (*renderFrame)(struct tRenderer *renderer);
    void (*init)(void);
    void (*setFrameBuffer)(struct tRenderer *renderer, FrameBuffer *fb);
} Renderer;

// Renders active frame in renderer to the graphicsdisplay
void renderFrame(Renderer *renderer);

// Initializes the renderer
void init(void);

// Sets the active FrameBuffer in the renderer
void setFrameBuffer(Renderer *renderer, FrameBuffer *fb);

extern Renderer renderer;

#endif // RENDERER_H