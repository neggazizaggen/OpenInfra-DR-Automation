# OpenInfra-DR-Automation

**Author:** Sobhy NEGGAZI  
**Project type:** Open-source infrastructure toolkit  
**Focus:** Linux automation, infrastructure resilience, and disaster recovery

## Overview

OpenInfra-DR-Automation is an open-source project designed to help IT infrastructure administrators perform basic Linux health checks and progressively improve operational resilience.

The project aims to provide simple, documented, and reusable tools for system diagnostics, backup readiness, and disaster recovery preparation.

## Current Module

### Linux Health Check

The initial Bash script collects basic system information, including:

- Hostname, date, and kernel version
- System uptime
- Disk usage
- Memory information
- Failed systemd services, when available

The script is designed for read-only diagnostics. It does not intentionally modify system configuration.

## Project Roadmap

- [x] Initial Linux health-check script
- [ ] Documented installation and usage instructions
- [ ] Automated code checks with GitHub Actions
- [ ] Backup readiness assessment
- [ ] Recovery planning with RTO and RPO
- [ ] Infrastructure resilience reporting

## Repository Structure

```text
OpenInfra-DR-Automation/
├── README.md
└── scripts/
    └── linux-health-check.sh
```

## Safety

The initial module is designed for read-only checks. Results depend on the operating system, permissions, and available utilities.

Test scripts in a controlled environment before using them on production systems.

## Contribution

Bug reports, documentation improvements, and tested contributions are welcome.

## Author

**Sobhy NEGGAZI**  
IT Infrastructure | Linux | Systems and Networks | Disaster Recovery

