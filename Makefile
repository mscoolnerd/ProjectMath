TARGET_WIN32=${HOME}/IMCROSS/bin/i386-mingw32

all:
	make projectwork-win.exe
	make projectwork-linux

projectwork-linux: main.cpp mathhelper.h src/geometry.h src/geometry.cpp
	g++ -o $@ $^

projectwork-win.exe:  main.cpp mathhelper.h src/geometry.h src/geometry.cpp
	${TARGET_WIN32}-g++ -o $@ $^
	${TARGET_WIN32}-strip $@
 
