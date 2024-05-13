package transform

top1: {
"top": {
	some_list: "middle": {
		foo: "override"
	}
}
}

top2: some_list: (#Transform & {input: top1.some_list}).output]

top3: (#Transform & {input: top2.some_list}).output]
