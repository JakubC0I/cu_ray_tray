CC = g++
CFLAGS = -Wall -std=c++11
DEPS = vec3.h color.h ray.h rtweekend.h hittable.h hittable_list.h sphere.h interval.h camera.h
OBJ = main.o 

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o main
