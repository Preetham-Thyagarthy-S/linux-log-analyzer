# Linux Log Analyzer & Incident Detection Tool

## Project Overview

A Bash scripting project that analyzes Linux log files and detects potential incidents by counting ERROR, WARNING, and INFO entries.

This project helps system administrators and DevOps engineers quickly identify issues from application and system logs.

## Features

### Phase 1 - Basic Log Analysis

* Reads log files
* Counts ERROR entries
* Counts WARNING entries
* Counts INFO entries
* Detects potential incidents

### Phase 2 - Report Generation

* Automatically creates a reports directory
* Generates timestamped report files
* Saves analysis output to both console and report files
* Maintains historical reports for auditing and troubleshooting

## Technologies Used

* Bash Scripting
* Linux Commands
* grep
* tee
* date

## Project Structure

linux-log-analyzer/

├── log_analyzer.sh

├── sample.log

├── reports/

└── README.md

## Sample Output

ERROR Entries   : 2

WARNING Entries : 2

INFO Entries    : 4

Potential incidents detected!

## Future Enhancements

* Top error detection
* Incident summary dashboard
* Automated alert generation
* Log pattern analysis

