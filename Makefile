CC      = clang
CFLAGS  = -O0 -Wall
SRCS   := $(wildcard *.c)
OBJS   := $(SRCS:.c=.o)
EXECS  := $(OBJS:.o=)

all: $(EXECS)

$(EXECS): $(OBJS)
	@echo "Command: $(CC) $(CFLAGS) $< -o $@"
	$(CC) $(CFLAGS) $< -o $@
	
%.o: %.c
	@echo "Command: $(CC) $(CFLAGS) -c $< -o $@"
	$(CC) $(CFLAGS) -c $< -o $@

list:
	@echo "SRCS: $(SRCS)"
	@echo "OBJS: $(OBJS)"
	@echo "EXECS: $(EXECS)"

clean:
	@echo "EXECS: $(EXECS)"
	@echo "OBJS: $(OBJS)"
	rm -vf $(EXECS) $(OBJS)