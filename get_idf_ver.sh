#!/bin/bash

# Check if IDF_PATH is set
if [ -z "$IDF_PATH" ]; then
    echo "IDF_PATH is not set" >&2
    exit 1
fi

# Check if version.cmake file exists
version_file="${IDF_PATH}/tools/cmake/version.cmake"
if [ ! -f "$version_file" ]; then
    echo "File ${version_file} does not exist" >&2
    exit 1
fi

# Extract MAJOR and MINOR version numbers from version.cmake file
major=$(grep -E "^set\(IDF_VERSION_MAJOR [0-9]+\)" "$version_file" | head -n1 | sed -E 's/.*set\(IDF_VERSION_MAJOR ([0-9]+)\).*/\1/')
minor=$(grep -E "^set\(IDF_VERSION_MINOR [0-9]+\)" "$version_file" | head -n1 | sed -E 's/.*set\(IDF_VERSION_MINOR ([0-9]+)\).*/\1/')

# Check if the version numbers are successfully extracted
if [ -z "$major" ] || [ -z "$minor" ]; then
    echo "Failed to extract version information from ${version_file}" >&2
    exit 1
fi

# Set environment variable
export CI_IDF_VER="${major}.${minor}"

echo "CI_IDF_VER=${CI_IDF_VER}"
