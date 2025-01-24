#!/bin/bash

echo "Setting up your LightningRails project..."

# Step 1: Remove and change the Git remote
echo "Removing the source code's remote origin..."
git remote remove origin

echo "Creating a new GitHub repository..."
read -p "Do you want to create a new private GitHub repository for this project? (y/n): " create_repo
if [[ "$create_repo" == "y" ]]; then
    read -p "Enter the name for your new repository: " repo_name
    gh repo create "$repo_name" --private --source=.
    echo "Repository '$repo_name' created successfully."
else
    echo "Skipping GitHub repository creation."
fi

# Step 2: Collect company information
echo "Let's customize your app with your company details."
read -p "Enter your company name (e.g., My Awesome Startup): " company_name
read -p "Enter your company email (e.g., contact@myawesomestartup.com): " company_email
read -p "Enter your company address (e.g., 123 Startup Street, Innovation City): " company_address
read -p "Enter your company website (e.g., https://myawesomestartup.com): " company_website

# Step 3: Update metadata and legal pages
echo "Customizing metadata and legal pages with your company details..."
files_to_update=("config/meta.yml" "app/views/pages/terms.html.erb" "app/views/pages/privacy.html.erb" "app/views/pages/cookies.html.erb")

for file in "${files_to_update[@]}"; do
    if [[ -f "$file" ]]; then
        sed -i '' "s/COMPANY_NAME_PLACEHOLDER/$company_name/g" "$file"
        sed -i '' "s/COMPANY_EMAIL_PLACEHOLDER/$company_email/g" "$file"
        sed -i '' "s/COMPANY_ADDRESS_PLACEHOLDER/$company_address/g" "$file"
        sed -i '' "s/COMPANY_WEBSITE_PLACEHOLDER/$company_website/g" "$file"
    fi
done

echo "Metadata and legal pages updated successfully."

# Step 4: Install dependencies
echo "Installing dependencies..."
bundle install

# Step 5: Set up the database
echo "Setting up the database..."
rails db:drop db:create db:migrate

# Step 6: Reset the credentials file
echo "Resetting the credentials file..."
rm -rf config/credentials.yml.enc
rails credentials:edit

# Step 7: Create and edit the .env file
echo "Creating the .env file..."
cp env.sample .env
if command -v code &> /dev/null; then
    code .env
else
    echo "Open .env in your preferred text editor to adapt the values."
fi

# Step 8: Start the development server
echo "Starting the development server..."
bin/dev

echo "Setup complete! Your LightningRails project is ready to go 🚀."
