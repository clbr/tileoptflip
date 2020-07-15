.PHONY: all clean

name = tileoptflip16

CXXFLAGS += -Wall -Wextra -g
LDFLAGS += -Wl,-gc-sections -lpng

src = $(wildcard *.cpp)
obj = $(src:.cpp=.o)

all: $(name)

$(name): $(obj)
	$(CXX) -o $(name) $(obj) $(CXXFLAGS) $(LDFLAGS)

$(obj): $(wildcard *.h)

clean:
	rm -f $(name) *.o
