package transform

#Transform: {
	input:  #Input
	output: #Output

	output: {
		if input.value != _|_ {
			value: input.value
		}

		if input.null_check == null {
			value: "YIKES!! null check helped"
		}

		if input.value == _|_ {
			value: "YIKES! what you got"
		}
	}
}

#Input: {
	// forgotten_field
	// value: string
	null_check: string
}

#Output: {
	value!: string
}
