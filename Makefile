#gcc source/main.c -o main.exe -O1 -Wall -std=c99 -Wno-missing-braces -I include/ -L lib/ -lraylib -lopengl32 -lgdi32 -lwinmm
CC= gcc
IDIR = include/
LDIR = lib/
CFLAGS= -o main.exe -O1 -Wall -std=c99 -Wno-missing-braces -mwindows -I $(IDIR) -L $(LDIR)
CFLAGS2= -o main -O1 -Wall -std=c99 -Wno-missing-braces -mwindows -I $(IDIR) -L $(LDIR)
LDFLAGS += "C:\Users\pixlo\OneDrive\Desktop\Raylib game\icon\raylib.rc.data"
LIBS= -lraylib -lopengl32 -lgdi32 -lwinmm 

desktop:
	$(CC) source/main.cpp $(CFLAGS) $(LIBS) $(LDFLAGS)
	
	
linux:
	#$(CC) source/main.cpp $(CFLAGS2) $(LIBS) $(LDFLAGS)

