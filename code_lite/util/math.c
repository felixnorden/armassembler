#include "math.h"
#include "types.h"

static unsigned int next = 1;
int32 rand(void)
{
    next = next * 1103515245 + 12345;
    float value = ((next/65536) - (unsigned int) (next / 65536)) % 32768; 
    return value ;
}
void srand(uint32 seed) { next = seed; }