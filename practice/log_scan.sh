#!/usr/bin/env bash
set -euo pipefail
LOG_FILE=${1:-test.txt}
if [[ ! -f "$LOG_FILE" ]]; then
echo "ERROR: Log file not found: $LOG_FILE"
exit 1
fi
echo "Scanning: $LOG_FILE"
echo "---------------------------------"
errors=$(grep -c "ERROR" "$LOG_FILE" || true)
warns=$(grep -c "WARN" "$LOG_FILE" || true)
infos=$(grep -c "INFO" "$LOG_FILE" || true)
echo "INFO : $infos"
echo "WARN : $warns"
echo "ERROR: $errors"
echo
echo "Most recent ERROR (if any):"
grep "ERROR" "$LOG_FILE" | tail -n 1 || echo "No errors found."
if [[ "$errors" -gt 0 ]]; then
echo
echo "Exiting with failure because ERROR count is $errors"
exit 2
fi

