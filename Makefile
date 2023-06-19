.PHONY: all build-lib

all: build/libfoo

build-lib:
	@./script/build

build/foo: build-lib

build/libfoo: build/foo
	@echo "Copy libfoo"
	@cp $^ $@
