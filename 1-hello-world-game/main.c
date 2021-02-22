#include <gb/gb.h>
#include <stdio.h>
#include "smile.c"
#define start_X 8
#define start_Y 16
#define end_X 160
#define end_Y 152
void main () {
    // printf ("hello world");    
    int i = start_X, j = start_Y;
    set_sprite_data (0,2,smileFace1);
    set_sprite_tile (0,0);
    move_sprite(0, i, j);
    SHOW_SPRITES;
    while (1) {
        if (i>end_X || j > end_Y){
            i = start_X;
            j = start_Y;
        }
        move_sprite (0, i,j);
        i+=10;
        j+=10;
        delay(500);
    }
}