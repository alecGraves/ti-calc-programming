#include <knightos/display.h>
#include <knightos/system.h>

/* Warning! C support in KnightOS is highly experimental. Your mileage may vary. */

void main() {
	SCREEN *screen;
	get_lcd_lock();
	screen = screen_allocate();
	screen_clear(screen);
	draw_string(screen, 0, 0, "0*3");
	draw_string(screen, 0, 6, "@Hello world!");
	draw_string(screen, 0, 54, "@Hello world!");
	screen_draw(screen);
	while (1);
}
