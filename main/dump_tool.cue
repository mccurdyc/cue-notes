package main

import (
	"encoding/yaml"
	"tool/cli"

	// It's super important to point at the "deepest" consume package
	"github.com/mccurdyc/cue-notes/consume/nested:consume"
)

_rendered: (#Transform & {input: consume.input}) // returns a concrete value

command: dump: {
	task: print: cli.Print & {
		text: yaml.Marshal(_rendered)
	}
}
