#include <stdio.h>
#include <gb/gb.h>
#include "gbr_1.c"
#include "new-bg.c"
void main () {
    set_bkg_data(0,7,TileLabels);
    set_bkg_tiles(0,0,40,18,bg1);
    SHOW_BKG;
    DISPLAY_ON;
}