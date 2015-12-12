all:
	cd yaya-shiori && $(MAKE) -f makefile.emscripten
	cp yaya-shiori/libyaya.js yaya.js
