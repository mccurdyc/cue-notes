package transform

// cue eval --all ./testing/ -e '_test'
_test: {
	catch_error_yikes: (#Transform & {input: {
		value:      "what you thought"
		null_check: "set"
	}}).output
	null_check: (#Transform & {input: {
		value: "what you thought"
		// null_check!!
	}}).output
}
