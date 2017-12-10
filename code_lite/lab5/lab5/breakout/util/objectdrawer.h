#ifndef OBJECTDRAWER_H
#define OBJECTDRAWER_H

#include "object.h"
#include "framebuffer.h"

// Draws an object's geometry onto a framebuffer, with its position in the center of the geometry
void drawObjectToBuffer(Object *object, FrameBuffer* fb, uint8 activate);

#endif // OBJECTDRAWER_H