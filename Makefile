CXX      = g++
CXXFLAGS = -std=c++17 -Wall -Wextra $(shell pkg-config --cflags sdl2 SDL2_image SDL2_ttf)
LDLIBS   = $(shell pkg-config --libs sdl2 SDL2_image SDL2_ttf)

TARGET = sdl2-image-filters
SRCS   = main.cpp Image.cpp Button.cpp Input.cpp
OBJS   = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) $(LDLIBS) -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
