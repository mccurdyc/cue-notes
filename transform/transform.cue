package transform

#Transform: {
	input:  #Input
	output: #Output

	output: {
		name: "outputted_here"
		some_list: [for k, v in input.some_list {v & {
			added: "added_in_transform_function"
		}}]
	}
}

#Input: {
	name!: string
	some_list: [_=string]: {
		foo: string
		... // to allow 'added_in_transform_function' to be added
	}
}

#Output: {
	name!: string
	some_list: [...{
		foo: string
		... // to allow 'added_in_transform_function' to be added
	}]
}
