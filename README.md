# linux-users-to-mysql-docker

# Linux Users Automation & Docker Database Seeder

A robust Bash script designed to automate system infrastructure and data digestion. It checks for critical tools (Docker, Curl), spins up an isolated MySQL container, parses Linux system users, and safely seeds the records into the database.

##  Features
- **Zero-Config Infrastructure:** Installs and configures Docker automatically if missing.
- **Self-Healing Environment:** Cleans up legacy/conflicting containers before execution.
- **Smart Connection Retries:** Implements an active polling mechanism to verify database readiness.
- **Bulk Seeding Architecture:** Avoids database overhead by processing multi-line structures in an optimized batch file.

##  How to Run
1. Clone the repository.
2. Run with sudo privileges:
   ```bash
   sudo ./db-automation.sh
