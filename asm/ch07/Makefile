PROGRAMS = hello reply

ifneq ($(MAKECMDGOALS),)
	REPLACE_PROGRAMS = yes
endif

ifeq ($(MAKECMDGOALS),clean)
	REPLACE_PROGRAMS = no
endif

ifeq ($(REPLACE_PROGRAMS),yes)
	PROGRAMS = $(MAKECMDGOALS)
endif

all: $(PROGRAMS)

$(PROGRAMS): % : %.o
	ld -o $@ $<

clean:
	rm -f *.o $(PROGRAMS)
