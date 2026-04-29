CC = gcc
CFLAGS = -Wall -Wextra -g
TARGET = db
SRC = sqlite.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

test: $(TARGET)
	rspec

clean:
	rm -f $(TARGET)

.PHONY: all clean test
