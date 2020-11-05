# Set make variables using scripts - in this case a Python script which parses YAML data
TITLE := $(shell scripts/parse-yaml.py src/test1.md title)
CITY := $(shell scripts/parse-yaml.py src/config.yml address city)

$(info title is $(TITLE))
$(info city is $(CITY))

# Note that by default the makefile uses `/bin/sh` as the shell. This allows escaping of
# characters (like `\n`) in echo commands. To set a different shell, use the `SHELL` variable.
# e.g. `SHELL := /bin/bash`

all: manifest

manifest:
	# Build manifest - a list of files in src
	scripts/build-manifest.sh src manifest
	# Write a title on the manifest 
	@echo "$(TITLE)\n--------\n$$(cat manifest)" > manifest


