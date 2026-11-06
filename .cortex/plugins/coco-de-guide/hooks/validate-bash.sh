#!/bin/bash
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

if echo "$COMMAND" | grep -qE '\bdbt\b.*--target[= ]+prod'; then
  echo "Direct production dbt runs are not allowed. Please use the CI/CD pipeline instead." >&2
  exit 2
fi

exit 0
