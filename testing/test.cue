package transform

// cue eval --all ./testing/ -e '_test'
_test: actual: (#Transform & {input: value: "what you thought"}).output
