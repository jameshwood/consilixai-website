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

# Step 3: Show available updates
echo "📋 Available updates from LightningRails:"
git log master..upstream/master --oneline --graph

# Step 4: Interactive update selection
echo "🎯 Select updates to apply:"
echo "1) Apply all updates (risky - may conflict)"
echo "2) Select specific commits to cherry-pick" 
echo "3) Show file-by-file diff for manual review"
echo "4) Cancel update"

read -p "Choose option (1-4): " choice

case $choice in
  1)
    echo "⚠️  Attempting to merge all updates..."
    git merge upstream/master --no-ff --no-commit
    echo "Review changes and run: git commit -m 'Update: Merge latest LightningRails improvements'"
    ;;
  2)
    echo "🍒 Cherry-pick mode - Select commits:"
    git log upstream/master --oneline | head -20
    read -p "Enter commit hashes separated by spaces: " commits
    for commit in $commits; do
      git cherry-pick $commit
    done
    ;;
  3)
    echo "📊 Generating comparison report..."
    git diff master upstream/master > lightning_rails_updates.diff
    echo "Review lightning_rails_updates.diff file"
    ;;
  4)
    echo "❌ Update cancelled"
    ;;
esac

# Step 5: Clean up
git remote remove upstream

echo "✅ Update process complete!"
