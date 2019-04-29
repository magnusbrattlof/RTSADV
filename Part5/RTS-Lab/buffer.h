#include "TinyTimber.h"

#define Bsize 10

typedef struct {
	Object super;
    int count;
    int I;
    int J;
    int A[Bsize];
} Buffer;


// The put method
int put(Buffer *self, int data);

// The get method
int get(Buffer *self, int unused);