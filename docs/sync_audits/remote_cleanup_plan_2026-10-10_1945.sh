#!/usr/bin/env bash
# remote_cleanup_plan_2026-10-10_1945.sh
# PURPOSE: Purge copyrighted Cisco Packet Tracer labs and stale README from remote CCNA_Home_Lab
# WARNING: This script rewrites remote history on main with --force-with-lease.
#          Run ONLY after reviewing and confirming you understand the consequences.
#          The user must manually execute this script; it is NOT auto-run.
# SHELL REQUIREMENT: Git Bash on Windows (needs sha256sum, bash, find).
# Do NOT run from cmd.exe or PowerShell directly.

set -euo pipefail

REPO_URL="https://github.com/Aj-Networks/CCNA_Home_Lab.git"
BRANCH="main"
# Derive repo root from script location (script lives in <root>/docs/sync_audits/)
LOCAL_ROOT="${LOCAL_ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"
SCRATCH_DIR="${TEMP:-/tmp}/ccna_cleanup_$(date +%s)"

echo "=== CCNA_Home_Lab Remote Cleanup Plan ==="
echo "Target: $REPO_URL ($BRANCH)"
echo "Scratch: $SCRATCH_DIR"
echo ""
echo "This will:"
echo "  1. Clone remote into scratch directory"
echo "  2. Remove all *.pka files and Lab 1/, Lab 2/, Lab 3/ folders"
echo "  3. Remove remote README.md (local version will replace on first push)"
echo "  4. Keep LICENSE only if it matches local MIT text; otherwise overwrite"
echo "  5. Commit: 'chore: purge copyrighted Cisco PT labs and stale readme'"
echo "  6. Push with --force-with-lease (requires your confirmation at step 6)"
echo ""
read -p "Proceed? Type 'YES' to continue: " CONFIRM
if [[ "$CONFIRM" != "YES" ]]; then
    echo "Aborted."
    exit 1
fi

# 1. Clone
echo "[1/6] Cloning..."
git clone --branch "$BRANCH" --single-branch "$REPO_URL" "$SCRATCH_DIR"
cd "$SCRATCH_DIR"

# 2. Remove copyrighted .pka files and Lab folders
echo "[2/6] Removing copyrighted Packet Tracer files..."
find . -name "*.pka" -type f -delete
rm -rf "Lab 1" "Lab 2" "Lab 3"

# 3. Remove remote README.md (local will replace)
echo "[3/6] Removing stale README.md..."
rm -f README.md

# 4. Handle LICENSE
echo "[4/6] Checking LICENSE..."
LOCAL_LICENSE_HASH=$(sha256sum "$LOCAL_ROOT/LICENSE" | cut -d' ' -f1)
if [[ -f LICENSE ]]; then
    REMOTE_LICENSE_HASH=$(sha256sum LICENSE | cut -d' ' -f1)
    if [[ "$LOCAL_LICENSE_HASH" == "$REMOTE_LICENSE_HASH" ]]; then
        echo "  Remote LICENSE matches local. Keeping."
    else
        echo "  Remote LICENSE differs. Overwriting with local."
        cp "$LOCAL_ROOT/LICENSE" LICENSE
    fi
else
    echo "  No remote LICENSE. Adding local."
    cp "$LOCAL_ROOT/LICENSE" LICENSE
fi

# 5. Commit
echo "[5/6] Committing..."
git add -A
git -c user.name="Aj-Networks" -c user.email="129566381+Aj-Networks@users.noreply.github.com" commit -m "chore: purge copyrighted Cisco PT labs and stale readme"

# 6. Push with force-with-lease (requires final confirmation)
echo "[6/6] Ready to push with --force-with-lease."
echo "This REWRITES history on origin/$BRANCH."
read -p "Type the two words 'force push' to execute: " FINAL
if [[ "$FINAL" == "force push" ]]; then
    git push --force-with-lease origin "$BRANCH"
    echo "Push complete. Remote is now clean."
else
    echo "Push skipped. Commit is local only in: $SCRATCH_DIR"
    echo "Run the following when ready:"
    echo "  cd $SCRATCH_DIR && git push --force-with-lease origin $BRANCH"
fi

# Cleanup hint
echo ""
echo "Scratch directory preserved at: $SCRATCH_DIR"
echo "Delete it when satisfied: rm -rf '$SCRATCH_DIR'"
