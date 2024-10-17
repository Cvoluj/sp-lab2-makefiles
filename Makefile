CXX = g++
CXXFLAGS = -Wall -Wextra -I.

OBJECTS =  calculator.o main.o
TARGET = calculator.exe
LIBRARY = libcalculator.a

all: $(LIBRARY) $(TARGET)

# Збірка бібліотеки
$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

# Збірка .exe файлу
$(TARGET): $(OBJECTS) $(LIBRARY)
	$(CXX) -o $(TARGET) main.o -L. -lcalculator

# Правило для компіляції
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	del $(OBJECTS) $(TARGET) $(LIBRARY)

.PHONY: all clean