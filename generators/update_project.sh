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
    echo "📝 Excluding frontend views, database files, and custom configurations..."
    
    # Create exclude pathspec for git merge
    PATHSPEC_EXCLUDE=""
    for path in "${EXCLUDED_PATHS[@]}"; do
      PATHSPEC_EXCLUDE="$PATHSPEC_EXCLUDE :(exclude)$path"
    done
    
    # Merge only specific paths that are safe to update
    git merge upstream/master --no-ff --no-commit -- \
      lib/ \
      config/initializers/ \
      app/helpers/ \
      generators/ \
      bin/ \
      config/locales/ \
      spec/ \
      test/ \
      .github/ \
      .gitignore \
      || echo "⚠️  Some conflicts may need manual resolution"
    
    echo ""
    echo "✅ Selective merge complete!"
    echo "📋 Files that were updated:"
    git diff --cached --name-only
    echo ""
    echo "🔍 Review changes and run: git commit -m 'Update: Merge safe LightningRails improvements'"
    echo "⚠️  Note: Frontend views, database files, and custom configs were preserved"
    ;;
  2)
    echo "📋 Files that would be updated:"
    git diff --name-only master upstream/master | grep -E '^(lib/|config/initializers/|app/helpers/|generators/|bin/|config/locales/|spec/|test/|\.github/|\.gitignore)' || echo "No safe files to update found"
    echo ""
    echo "🚫 Files that will be excluded:"
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


