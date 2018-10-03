
CC ?= gcc
CFLAGS += -std=c99 -Wall -Wextra -Ideps
DEPS := $(wildcard deps/*/*.c)
OBJS := act_afb.o $(DEPS:.c=.o)

.DEFAULT_GOAL := validate

test: test.o $(OBJS)

demo: demo.o $(OBJS)

act_afb.o: act_afb.c act_afb.h

deps: package.json
	clib install --dev
	@touch $@

validate: test
	./$<

showcase: demo
	./$<

clean:
	rm -f $(OBJS) act_afb.o test.o test demo.o demo

.PHONY: validate showcase clean
