package transform

#Transform: {
	input:  #Input
	output: #Output

	output: {
		if input.value != _|_ {
			value: input.value
		}

		if input.value == _|_ {
			value: "YIKES! what you got"
		}
	}
}

#Input: {
	// forgotten_field
	// value: string
}

#Output: {
	value!: string
}
