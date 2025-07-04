# generators/update_lightning_rails.sh
#!/bin/bash

REMOTE_NAME="lightning-rails"
REMOTE_URL="https://github.com/Danrod16/lightning-rails.git"
DEFAULT_BRANCH="master"

echo "⚡ Updating your LightningRails project..."

# Step 1: Create backup branch
echo "💾 Creating backup of current state..."
# Temporarily disable exit on error to handle case where checkout fails
set +e
git checkout -b backup-before-update-$(date +%Y%m%d-%H%M%S)
# Re-enable exit on error
set -e
git checkout "${DEFAULT_BRANCH}"

# Step 2: Configure LightningRails remote
if ! git remote | grep -q "^${REMOTE_NAME}$"; then
  echo "🔗 Adding '${REMOTE_NAME}' remote for the first time..."
  git remote add "${REMOTE_NAME}" "${REMOTE_URL}"
else
  echo "✅ '${REMOTE_NAME}' remote is already configured."
fi

# Step 3: Fetch updates
echo "Fetching latest updates from ${REMOTE_NAME}..."
git fetch "${REMOTE_NAME}"

# Step 4: Show update summary
echo ""
echo "📋 Update Summary:"
echo "=================="
COMMIT_COUNT=$(git rev-list --count "${DEFAULT_BRANCH}".."${REMOTE_NAME}/${DEFAULT_BRANCH}")
if [ "$COMMIT_COUNT" -gt 0 ]; then
    LATEST_DATE=$(git log "${REMOTE_NAME}/${DEFAULT_BRANCH}" -1 --format="%cr")
    echo "📊 Total updates available: $COMMIT_COUNT commits"
    echo "🗓️  Latest update: $LATEST_DATE"
    echo ""

    # Step 5: Confirmation
    read -p "Do you want to apply these updates now? (y/n) " -n 1 -r
    echo "" # move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Step 6: Merge updates
        echo "⚠️  Attempting to merge updates from ${REMOTE_NAME}/${DEFAULT_BRANCH}..."
        git merge "${REMOTE_NAME}/${DEFAULT_BRANCH}" --no-ff --no-commit

        echo ""
        echo "✅ Merge prepared."
        echo "Review the changes and resolve any conflicts."
        echo "Once ready, run: git commit"
    else
        echo "❌ Update cancelled by user."
    fi
else
    echo "✅ Your project is already up to date!"
fi

