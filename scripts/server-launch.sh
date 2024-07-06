#!/bin/bash

# Start the MkDocs service
## .devcontainer/devcontainer.json runs this file as a post attach command
## --config-file specifies the Material for MkDocs Insiders config file
## --watch mkdocs.yml and --watch ./includes watches for changes in extra files
mkdocs serve --config-file mkdocs.insiders.yml \
             --watch mkdocs.yml \
            #  --watch ./includes
