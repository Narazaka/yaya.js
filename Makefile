all:
	cd yaya-shiori && $(MAKE) -f makefile.emscripten
	cp yaya-shiori/yaya.js yaya.js

clean:
	cd yaya-shiori && $(MAKE) -f makefile.emscripten clean
