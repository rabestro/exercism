#ifndef RESISTOR_COLOR_TRIO_H
#define RESISTOR_COLOR_TRIO_H

typedef enum {
    BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE
} resistor_band_t;

typedef struct resistor_value_t {
    int value;
};

int color_code(resistor_band_t[]);

#endif
