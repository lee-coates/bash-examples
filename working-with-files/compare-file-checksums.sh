#!/bin/bash

# Check if the correct number of arguments have been provided
if [ "$#" -ne 2 ]; then
  echo "This scripts expect the following parameters."
  echo "Example: $0 <filename> <expected_sha256sum>"
  exit 1
fi

# Assign the parameters to variables
filename="$1"
expected_sha256="$2"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

# Calculate the SHA256 checksum of the file
actual_sha256=$(sha256sum "$filename" | awk '{print $1}')

# Compare the calculated checksum with the expected checksum
if [ "$actual_sha256" == "$expected_sha256" ]; then
  echo "SHA256 checksum matches!"
else
  echo "SHA256 checksum mismatch!"
  echo "  Expected: $expected_sha256"
  echo "  Actual:   $actual_sha256"
fi

exit 0