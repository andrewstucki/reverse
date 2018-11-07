RUBY_HDR_DIR=$(shell ruby -e 'print RbConfig::CONFIG["rubyhdrdir"]')
RUBY_ARCH_DIR=$(shell ruby -e 'print RbConfig::CONFIG["rubyarchhdrdir"]')
EXTENSION_DIR=ext/reverse/lib
CGO_CFLAGS = "-I$(RUBY_HDR_DIR) -I$(RUBY_ARCH_DIR)"

default: clean $(EXTENSION_DIR)/reverse.go
	CGO_CFLAGS=$(CGO_CFLAGS) go build -buildmode=c-archive -o $(EXTENSION_DIR)/libreverse.a $(EXTENSION_DIR)/reverse.go
	rake compile

clean:
	rm -rf lib tmp

test:
	@ruby test/reverse_test.rb

.PHONY: clean test
