#!/bin/bash

TEMPLATE_FOLDER_NAME="KJM Templates"
INSTALL_DIRECTORY=~/Library/Developer/Xcode/Templates/File\ Templates/"${TEMPLATE_FOLDER_NAME}"

echo "Templates will be installed to ${INSTALL_DIRECTORY}"

if [ -d "${INSTALL_DIRECTORY}" ]; then
	rm -r "${INSTALL_DIRECTORY}"
fi

mkdir -p "${INSTALL_DIRECTORY}"

# Recursively find all templates and copy them to xcodes template dir
find ./ -name '*.xctemplate' -exec cp -prv '{}' "${INSTALL_DIRECTORY}" ';'
