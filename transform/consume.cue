package transform

top1: {
	top_key: "top key"
	"top": {
		some_list: "middle": {
			foo: "override"
		}
	}
}

out: (#Transform & {input: top1.some_list}).output
