#include <stdio.h>
#include <gb/gb.h>
#include "gbr_1.c"
#include "map-1.c"
void main () {
    set_bkg_data(0,7,TileLabels);
    set_bkg_tiles(0,0,40,18,map1);
    SHOW_BKG;
    DISPLAY_ON;
    while (1) {
        scroll_bkg(1,0);
        delay (100);
    }
}