all: 42 2part

2part: first.o second.o
	ld $^ -o $@

%: %.o
	ld $< -o $@

%.o: %.s
	as $< -o $@

clean:
	rm -f *.o
