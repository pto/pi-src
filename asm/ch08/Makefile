PROGRAMS = upper binary

# Use the command line goal only if it is not equal to "clean"
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
