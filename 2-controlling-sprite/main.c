#include <stdio.h>
#include <gb/gb.h>
#include "4smiles.c"
void main () {
    int i = 0;
    set_sprite_data(0,2,smilers);
    set_sprite_tile(0,0);
    move_sprite(0,100,100);
    SHOW_SPRITES;
    while (1) {
        if (i>2)i=0;
        set_sprite_tile(0,i++);
        delay (100);
    }
}