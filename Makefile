CC = gcc

CFLAGS  = -framework Carbon -Wno-deprecated-declarations

TARGET = alias2symlink

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c get-true-name.c

clean:
	$(RM)  $(TARGET)

