#include "libreverse.h"

#include <ruby.h>

static VALUE rb_ary_go_reverse(VALUE ary) {
  return go_reverse(ary);
}

void Init_reverse() {
  rb_define_method(rb_cArray, "go_reverse", rb_ary_go_reverse, 0);
}
