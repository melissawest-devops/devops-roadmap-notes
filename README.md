# DevOps Roadmap Notes (WSL + Ubuntu)

This repo documents my hands-on DevOps practice in WSL (Ubuntu) on Windows.

## What’s inside
- day-0.md — setup notes (WSL2, Ubuntu, VS Code)
- practice/log_scan.sh — bash log scanner that counts INFO/WARN/ERROR and exits non-zero when errors exist
- practice/test.txt — sample log file used for testing

## Run the script
cd practice
chmod +x log_scan.sh
./log_scan.sh test.txt
