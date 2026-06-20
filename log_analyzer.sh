#!/bin/bash
mkdir -p reports
REPORT_FILE="reports/log_report_$(date +%F_%H-%M-%S).txt"
exec > >(tee -a "$REPORT_FILE")
exec 2>&1

LOG_FILE="sample.log"

echo "================================="
echo " Linux Log Analysis Report"
echo "================================="
echo ""

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")

echo "ERROR Entries   : $ERROR_COUNT"
echo "WARNING Entries : $WARNING_COUNT"
echo "INFO Entries    : $INFO_COUNT"

echo ""

if [ "$ERROR_COUNT" -gt 0 ]; then
    echo "Potential incidents detected!"
else
    echo "No critical incidents detected."
fi
