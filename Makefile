COMPILER=g++

ifdef OS
	RM = DEL
else
	ifeq ($(shell uname), Linux)
		RM = rm -f
	endif
endif


raster: raster.cpp
	$(COMPILER) -o raster raster.cpp
	./raster

clean:
	$(RM) raster.exe
