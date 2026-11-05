#!/bin/bash

# Navigate to your git repository directory
cd /home/labuser/.clab/test || exit

# Check if there are any changes (tracked or untracked)
if [[ -n $(git status --porcelain) ]]; then
    echo "$(date): Changes detected. Committing and pushing..."
    git add -A
    git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
else
    echo "$(date): No changes detected. Skipping."
fi

