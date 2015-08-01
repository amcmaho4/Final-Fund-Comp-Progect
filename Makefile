all: final.o gfxModified.o
	gcc finalProject.o gfxModified.o -lm -lX11 -o all -lX11 -lm -I/opt/X11/include/ -L/opt/X11/lib/
final.o: finalProject.c gfxModified.h
	gcc -c finalProject.c

gfxModified.o: gfxModified.c
	gcc -c gfxModified.c

clean:
	rm *.o all

