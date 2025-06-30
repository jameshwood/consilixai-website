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

# Step 4: Define files/directories to exclude from merge
EXCLUDED_PATHS=(
  "app/views/"
  "app/assets/"
  "db/migrate/"
  "db/schema.rb"
  "db/seeds.rb"
  "config/database.yml"
  "config/routes.rb"
  "app/controllers/application_controller.rb"
  "app/models/"
  "Gemfile"
  "Gemfile.lock"
  "config/application.rb"
  "config/environments/"
  "public/"
  "storage/"
  "tmp/"
  "log/"
  ".env*"
  "README.md"
  "package.json"
  "yarn.lock"
  "tailwind.config.js"
)

# Step 5: Simple update selection
echo "🎯 Update Options:"
echo "1) Apply selective updates (recommended - excludes views, DB, assets)"
echo "2) Show what would be updated"
echo "3) Cancel update"

read -p "Choose option (1-3): " choice

case $choice in
  1)
    echo "⚠️  Attempting selective merge..."
    echo "📝 This will merge all changes, then reset excluded files to preserve your customizations..."
    
    # First, do a regular merge (this may create conflicts)
    if git merge upstream/master --no-ff --no-commit; then
      echo "✅ Merge completed without conflicts"
    else
      echo "⚠️  Merge has conflicts - continuing with selective reset..."
    fi
    
    # Reset excluded files back to their original state
    echo "🔄 Resetting excluded files to preserve your customizations..."
    for path in "${EXCLUDED_PATHS[@]}"; do
      if [ -e "$path" ] || git ls-files --error-unmatch "$path" >/dev/null 2>&1; then
        echo "   Preserving: $path"
        git reset HEAD "$path" 2>/dev/null || true
        git checkout HEAD -- "$path" 2>/dev/null || true
      fi
    done
    
    echo ""
    echo "✅ Selective merge complete!"
    echo "📋 Files staged for commit:"
    git diff --cached --name-only
    echo ""
    echo "📋 Files with conflicts (if any):"
    git diff --name-only --diff-filter=U
    echo ""
    echo "🔍 Next steps:"
    echo "   1. Review staged changes: git diff --cached"
    echo "   2. Resolve any remaining conflicts manually"
    echo "   3. Run: git commit -m 'Update: Merge safe LightningRails improvements'"
    echo "⚠️  Note: Your views, database files, and custom configs were preserved"
    ;;
  2)
    echo "📋 Files that would be updated (all changes):"
    git diff --name-only master upstream/master
    echo ""
    echo "🚫 Files that will be reset/excluded after merge:"
    for path in "${EXCLUDED_PATHS[@]}"; do
      echo "   - $path"
    done
    ;;
  3)
    echo "❌ Update cancelled"
    ;;
esac

# Step 6: Clean up
git remote remove upstream

echo "✅ Update process complete!"



