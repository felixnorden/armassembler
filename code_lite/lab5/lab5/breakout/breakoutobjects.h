#ifndef BREAKOUTOBJECTS_H
#define BREAKOUTOBJECTS_H

#include "util/object.h"
#include "util/objectdrawer.h"
#include "util/framebuffer.h"

extern FrameBuffer frameBuffer;

void clear_object (ObjectPtr obj)
{	
	drawObjectToBuffer(obj, &frameBuffer, FALSE);
}

void draw_object (ObjectPtr obj)
{	
	drawObjectToBuffer(obj, &frameBuffer, TRUE);
}

Geometry ballGeometry = {
	12,
	4,4,
	(Point[MAX_POINTS]) {	
		// Going from left to right, 
		// using y as the downward axis.
		{0,1}, {0,2},
		{1,0}, {1,1}, {1,2}, {1,3},
		{2,0}, {2,1}, {2,2}, {2,3},
		{3,1}, {3,2}
	}
};

Object ball = {
	&ballGeometry,
	1,1,
	64,32,
	draw_object,
	clear_object,
	update_object,
	set_object_speed
};


#endif //BREAKOUTOBJECTS_H