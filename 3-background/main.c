#include <stdio.h>
#include <gb/gb.h>
#include "Export.c"
#include "simplebackgroundmap.c"
#include <gb/font.h>
#include "windowmap.c"
void main () {
    set_bkg_data(0,7,backgroundtiles);
    set_bkg_tiles(0,0,40,18,backgroundmap);
    font_t min_font;
    font_init();
    min_font = font_load(font_min);
    font_set(min_font);
    set_win_tiles(0,0,5,1,windowmap);
    move_win(7,120);
    SHOW_BKG;
    DISPLAY_ON;
    while (1) {
        scroll_bkg(1,0);
        delay (100);
    }
}