#ifndef BREAKOUTOBJECTS_H
#define BREAKOUTOBJECTS_H

#include "util/object.h"
#include "util/objectdrawer.h"
#include "util/framebuffer.h"

#define PADDLE_SPEED 2

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
	1,-1,
	62f,50f,
	draw_object,
	clear_object,
	update_object,
	set_object_speed
};

Geometry rectangleGeometry = {
	21,
	7,3,
	(Point[MAX_POINTS]) {
		{0,0},{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},
		{0,1},{1,1},{2,1},{3,1},{4,1},{5,1},{6,1},
		{0,2},{1,2},{2,2},{3,2},{4,2},{5,2},{6,2}
	}
};

Object rectangle = {
	&rectangleGeometry,
	0,0,
	0f,0f,
	draw_object,
	clear_object,
	update_object,
	set_object_speed
};

Geometry paddleGeometry = {
	20,
	10,2,
	(Point[MAX_POINTS]) {
		{0,0},{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},{7,0},{8,0},{9,0},
		{0,1},{1,1},{2,1},{3,1},{4,1},{5,1},{6,1},{7,1},{8,1},{9,1}
	}
};

Object paddle = {
	&paddleGeometry,
	0,0,
	60f,62f,
	draw_object,
	clear_object,
	update_object,
	set_object_speed
};

#endif //BREAKOUTOBJECTS_H