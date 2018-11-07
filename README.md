# Reverse a Ruby array with Go!

This is a horrible idea, don't ever do it. That said, get:

1) GNU Make
2) A functional Go compiler
3) GCC
4) Ruby
5) Bundler

```
bundle install && make && make test
```

## Docker

```
docker build . -t go_reverse
docker run --rm go_reverse
```
