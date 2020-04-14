#!/bin/sh
export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

scss-lint | reviewdog -efm="%f:%l:%c %m" -name="scss-lint" -reporter="${INPUT_REPORTER}" -level="${INPUT_LEVEL}"
