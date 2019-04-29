#include "buffer.h"
#include "sciTinyTimber.h"

int put(Buffer *self, int data) {
    if(self->count < Bsize) {
        self->A[self->I] = data;
        self->I = (self->I + 1) % Bsize;
        self->count = self->count + 1;
        return 0;
    }
    else {
        return -1;
    }
}

int get(Buffer *self, int unused) {
    if (self->count > 0) {
        int data = self->A[self->J];
        self->J = (self->J + 1) % Bsize;
        self->count = self->count - 1;
        return data;
    }
    else {
        return -1;
    }
}