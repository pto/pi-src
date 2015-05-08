all: 42

%: %.o
	ld $< -o $@

%.o: %.s
	as $< -o $@
