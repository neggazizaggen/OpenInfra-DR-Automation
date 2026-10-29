
#!/usr/bin/env bash
#
# Project: OpenInfra-DR-Automation
# Module: Linux Health Check
# Author: Sobhy NEGGAZI
# Purpose: Read-only Linux system health report

set -u

HOSTNAME_VALUE=$(hostname 2>/dev/null || printf 'unknown')
DATE_VALUE=$(date '+%Y-%m-%d %H:%M:%S')
KERNEL_VALUE=$(uname -r 2>/dev/null || printf 'unknown')

printf '%s\n' "========================================"
printf '%s\n' " OpenInfra - Linux Health Check"
printf '%s\n' " Author: Sobhy NEGGAZI"
printf '%s\n' "========================================"
printf 'Host: %s\n' "$HOSTNAME_VALUE"
printf 'Date: %s\n' "$DATE_VALUE"
printf 'Kernel: %s\n\n' "$KERNEL_VALUE"

printf '%s\n' "--- Uptime ---"
uptime 2>/dev/null || printf '%s\n' "Unavailable"

printf '\n%s\n' "--- Disk usage ---"
df -h 2>/dev/null || printf '%s\n' "Unavailable"

printf '\n%s\n' "--- Memory ---"
if [ -r /proc/meminfo ]; then
    head -n 5 /proc/meminfo
else
    free -h 2>/dev/null || printf '%s\n' "Unavailable"
fi

printf '\n%s\n' "--- Failed systemd services ---"
if command -v systemctl >/dev/null 2>&1; then
    systemctl --failed --no-legend --no-pager 2>/dev/null \
        || printf '%s\n' "Could not retrieve service status"
else
    printf '%s\n' "systemd is not available"
fi

printf '\n%s\n' "--- End of report ---"
printf '%s\n' "Read-only checks completed."
