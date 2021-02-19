#include <gb/gb.h>
#include <stdio.h>
#include "smile.c"
void main () {
    printf ("hello world\n");
    printf ("varun kedia\n");
    set_sprite_data (0,2,smileFace1);
    set_sprite_tile (0,0);
    move_sprite(0, 88, 78);
    SHOW_SPRITES;
    while (1) {
        printf ("hello world\n");
        delay(1000);
    }
}