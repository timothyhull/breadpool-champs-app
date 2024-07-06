#!/bin/bash

# Install the Material for MkDocs Insiders package
## .devcontainer/devcontainer.json runs this file as a post create command
python -m pip install --upgrade git+https://${MKDOCS_TOKEN}@github.com/timothyhull/mkdocs-material-insiders.git
