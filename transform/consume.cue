package transform

top: {
	some_list: "middle": {
		foo: "override"
	}
}

output: (#Transform & {input: top}).output
