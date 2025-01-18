#!/bin/bash

# Prompt for the app name
read -p "What do you want to call your app? " new_app_name

# Generate folder and module names
app_dir_name=$(echo "$new_app_name" | tr ' ' '-' | tr '[:upper:]' '[:lower:]')
module_name=$(echo "$new_app_name" | sed -E 's/[^a-zA-Z0-9]+/ /g' | sed -E 's/(^|\s)(\w)/\U\2/g' | sed 's/ //g')

# Confirm the app name
read -p "App will be created as '$app_dir_name' (module: '$module_name'). Continue? (y/n): " confirm
if [[ "$confirm" != "y" ]]; then
    echo "Process aborted."
    exit 1
fi

# Step 1: Clone the LightningRails repository
if ! gh repo clone LightningRails/lightning-rails "$app_dir_name"; then
    echo "Error: Unable to clone repository. Ensure you have GitHub CLI installed and authenticated."
    exit 1
fi

# Navigate to the project directory
cd "$app_dir_name" || exit

# Step 2: Rename app references
old_app_name="LightningRails"  # Replace with the actual default module name of LightningRails
find . -type f \( -name "*.rb" -o -name "*.erb" -o -name "*.yml" \) \
    ! -exec grep -q "Powered by LightningRails" {} \; \
    -exec sed -i '' "s/$old_app_name/$module_name/g" {} +

# Update the module name in `config/application.rb`
sed -i '' "s/module $old_app_name/module $module_name/" config/application.rb

# Step 3: Remove and change the Git remote
git remote remove origin
read -p "Do you want to create a new GitHub repository for this project? (y/n): " create_repo
if [[ "$create_repo" == "y" ]]; then
    gh repo create "$app_dir_name" --private --source=.
fi

git add .
git commit -m "First commit"
git push -u origin master

# Step 4: Install dependencies
bundle install

# Step 5: Set up the database
rails db:drop db:create db:migrate

# Reset the credentials file
rm -rf config/credentials.yml.enc

# Step 6: Create .env file
cp env.sample .env
if command -v code &> /dev/null; then
    code .env
else
    echo "Open .env in your preferred text editor to adapt the values."
fi

# Step 7: Start the development server
echo "Starting the development server..."
bin/dev

echo "Setup complete! Your app '$new_app_name' is ready to go."