
PLATFORM = $(shell uname -s)
LIBS_FOR_GCC = -lm -lrt
LIBS_FOR_DARWIN = -lm
LIBS = -lm -lrt # default libraries if OS is not recognized
PREFIX ?= /usr/local
TARGET = tcat-monotonic
CFLAGS = -std=c99 -Wall -Wextra -Werror -Os

ifeq ($(PLATFORM), Linux)
  LIBS = $(LIBS_FOR_GCC)
endif
ifeq ($(PLATFORM), Darwin)
  LIBS = $(LIBS_FOR_DARWIN)
endif

.PHONY: default all clean install uninstall

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)

install: $(TARGET)
	cp -f $(TARGET) $(PREFIX)/bin/$(TARGET)

uninstall:
	rm -f $(PREFIX)/bin/$(TARGET)

