# generators/update_lightning_rails.sh
#!/bin/bash

echo "⚡ Updating your LightningRails project..."

# Step 1: Create backup branch
echo "💾 Creating backup of current state..."
git checkout -b backup-before-update-$(date +%Y%m%d-%H%M%S)
git checkout master

# Step 2: Re-add upstream temporarily  
echo "🔗 Adding LightningRails upstream..."
git remote add upstream https://github.com/Danrod16/lightning-rails.git
git fetch upstream

# Step 3: Show update summary
echo "📋 Update Summary:"
echo "=================="

# Get commit count and date range
COMMIT_COUNT=$(git rev-list --count master..upstream/master)
LATEST_DATE=$(git log upstream/master -1 --format="%cr")

echo "📊 Total updates available: $COMMIT_COUNT commits"
echo "🗓️  Latest update: $LATEST_DATE"
echo ""

# Step 4: Simple update selection
echo "🎯 Update Options:"
echo "1) Apply all updates"
echo "2) Cancel update"

read -p "Choose option (1-2): " choice

case $choice in
  1)
    echo "⚠️  Attempting to merge all updates..."
    git merge upstream/master --no-ff --no-commit
    echo "Review changes and run: git commit -m 'Update: Merge latest LightningRails improvements'"
    ;;
  2)
    echo "❌ Update cancelled"
    ;;
esac

# Step 5: Clean up
git remote remove upstream

echo "✅ Update process complete!"

