#!/bin/bash
cd "/home/abhishek/Desktop/Projects/notes" || exit 1

# Auto-add new notebooks to myst.yml toc
for notebook in notebooks/*.ipynb; do
    [ -e "$notebook" ] || continue
    basename="${notebook%.ipynb}"
    if ! grep -q "file: $basename" myst.yml; then
        sed -i "/toc:/a\    - file: $basename" myst.yml
        echo "[$(date)] Added $basename to myst.yml"
    fi
done

# Commit if there are changes
if [[ -n $(git status --porcelain notebooks/ myst.yml) ]]; then
    git add notebooks/ myst.yml
    git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M')"
    git push origin master
    echo "[$(date)] Committed and pushed"
else
    echo "[$(date)] No changes"
fi

