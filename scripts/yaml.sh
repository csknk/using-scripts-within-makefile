#!/bin/bash

yaml() {
	python3 <<-EOF 
	import yaml
	yaml_obj=yaml.load_all(open('$1'), Loader=yaml.FullLoader)
	print(next(yaml_obj)['$2'])
EOF
}

TITLE=$(yaml "/home/david/Learning/make/run-script/src/test1.md" "title")
AUTHOR=$(yaml "/home/david/Learning/make/run-script/src/test1.md" "author")

echo "${TITLE}"
echo "${AUTHOR}"
