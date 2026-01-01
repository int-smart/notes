#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AUTO_COMMIT_SCRIPT="$SCRIPT_DIR/auto_commit.sh"

chmod +x "$AUTO_COMMIT_SCRIPT"

CRON_JOB="0 0 * * * $AUTO_COMMIT_SCRIPT >> $SCRIPT_DIR/auto_commit.log 2>&1"

if crontab -l 2>/dev/null | grep -q "$AUTO_COMMIT_SCRIPT"; then
    echo "Cron job already exists"
else
    (crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
    echo "✅ Daily auto-commit installed (8 PM)"
fi

