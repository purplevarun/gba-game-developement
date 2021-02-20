#include <stdio.h>
#include <gb/gb.h>
#include "4smiles.c"
void main () {
    int i = 0;
    set_sprite_data(0,2,smilers);
    set_sprite_tile(0,0);
    move_sprite(0,50,50);
    SHOW_SPRITES;
    while (1) {
        // if (i>2)i=0;
        // set_sprite_tile(0,i++);
        // to change face alternatively
        switch (joypad()) {
            case J_LEFT : scroll_sprite (0,-10,0); break;
            case J_RIGHT : scroll_sprite (0,10,0); break;
            

        }
        delay (100);
    }
}