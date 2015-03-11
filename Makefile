LUALIB=-L/usr/local/bin -lluajit-5.1
LUA_INCLUDE=-I/usr/local/include/luajit-2.0
SOCKETLIB=-lws2_32
INSTALL ?= install

.PHONY: all win linux

all : 
	@echo Please do \'make PLATFORM\' where PLATFORM is one of these:
	@echo win linux

win: mongo.dll

linux: mongo.so
	$(INSTALL) mongo.so /usr/local/lib/lua/5.1/
	$(INSTALL) mongo.lua /usr/local/share/lua/5.1/

mongo.dll : lua-mongo.c lua-socket.c
	gcc --shared -Wall -g $^ -o$@ $(LUA_INCLUDE) $(LUALIB) $(SOCKETLIB)

lbitlib.a : 
	gcc -c -Wall -fPIC -Ilua-compat-5.2/c-api -O2 lua-compat-5.2/lbitlib.c -o$@ $(LUA_INCLUDE)

mongo.so : lua-mongo.c lua-socket.c lbitlib.a
	gcc --shared -Wall -fPIC -g $^ -o$@  -Ilua-compat-5.2/c-api $(LUA_INCLUDE) $(LUALIB)

clean:
	rm -f mongo.dll mongo.so lbitlib.a
