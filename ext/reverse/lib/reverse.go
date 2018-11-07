// package name: reverse
package main

// #include <ruby.h>
import "C"
import (
	"reflect"
	"unsafe"
)

//export go_reverse
func go_reverse(val C.VALUE) C.VALUE {
	valLength := C.rb_array_len(val)

	if valLength == 0 {
		return C.rb_ary_new()
	}

	valLengthInt := int(valLength)

	var elements []C.VALUE
	sliceHeader := (*reflect.SliceHeader)((unsafe.Pointer(&elements)))
	sliceHeader.Cap = valLengthInt
	sliceHeader.Len = valLengthInt
	sliceHeader.Data = uintptr(unsafe.Pointer(C.rb_array_const_ptr(val)))

	for i := 0; i < valLengthInt/2; i++ {
		j := valLengthInt - i - 1
		elements[i], elements[j] = elements[j], elements[i]
	}
	return C.rb_ary_new_from_values(valLength, &elements[0])
}

func main() {} // ignored.
