package transform

in: top: {}
in: top: "outer": some_list: "inner": {}

output: (#Transform & {input: in}).output
