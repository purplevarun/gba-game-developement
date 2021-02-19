#include <gb/gb.h>
#include <stdio.h>
#include "smile.c"
void main () {
    int i = 0;
    printf ("hello world\n");
    printf ("varun kedia\n");
    set_sprite_data (0,2,smileFace1);
    set_sprite_tile (0,0);
    move_sprite(0, 100, 100);
    SHOW_SPRITES;
    // while (0) {
    //     move_sprite(0,10+i,10+i);
    //     delay(1000);
    //     i+=10;
    // }
}