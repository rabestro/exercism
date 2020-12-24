#include "grains.h"

uint64_t square(uint8_t index) {
    return (0 < index && index <= 64) ? (uint64_t) 1 << (index - 1) : 0;
}

uint64_t total(void) {
    return 0xFFFFFFFFFFFFFFFF;
}