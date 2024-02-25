package main

import (
	"strings"
)

// input schema
#Input: {
	value: string
	count: int & >=1 | *2
	nested: {
		value: string
		count: int & >=1 | *2
	}
}

#Output: {
	value:        string
	nested_value: string
}

#Transform: {
	input:  #Input
	output: #Output

	_val: strings.Join([input.value]*input.count, " ")
	_nested: strings.Join([input.nested.value]*input.nested.count, " ")

	output: value:        _val
	output: nested_value: _nested
}
