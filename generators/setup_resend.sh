echo "📧 Setting up Resend for transactional emails..."

# Read company info from meta.yml
COMPANY_NAME=$(grep "company_name:" config/meta.yml | cut -d'"' -f2)
COMPANY_WEBSITE=$(grep "company_website:" config/meta.yml | cut -d'"' -f2)
PRODUCT_NAME=$(grep "meta_product_name:" config/meta.yml | cut -d'"' -f2)

# Step 1: Add Resend gem to Gemfile
echo "📦 Adding Resend gem to Gemfile..."
echo "gem 'resend'" >> Gemfile

# Step 2: Install dependencies
echo "🔍 Installing dependencies..."
bundle install

# Step 3: Configure development environment
echo "⚙️ Configuring development environment..."
cat > /tmp/dev_config.rb << 'EOL'
  # Configure Resend for development
  config.action_mailer.delivery_method = :letter_opener
EOL
sed -i '' '/Rails.application.configure do/r /tmp/dev_config.rb' config/environments/development.rb
rm /tmp/dev_config.rb

# Step 4: Configure production environment
echo "⚙️ Configuring production environment..."
cat > /tmp/prod_config.rb << 'EOL'
  # Configure Resend for production
  config.action_mailer.delivery_method = :resend
EOL
sed -i '' '/Rails.application.configure do/r /tmp/prod_config.rb' config/environments/production.rb
rm /tmp/prod_config.rb

# Step 5: Create mailer initializer
echo "📝 Creating mailer initializer..."
mkdir -p config/initializers
cat <<EOL > config/initializers/mailer.rb
Resend.api_key = ENV["RESEND_API_KEY"]
EOL

# Step 6: Create UserMailer
echo "📧 Creating UserMailer..."
rails generate mailer UserMailer

# Step 7: Update UserMailer with welcome email
cat <<EOL > app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome to ${PRODUCT_NAME}! 🚀")
  end
end
EOL

# Step 8: Create welcome email template
mkdir -p app/views/user_mailer
cat <<EOL > app/views/user_mailer/welcome_email.html.erb
<h1>Welcome to ${PRODUCT_NAME}, <%= @user.email %>! 🎉</h1>

<p>We're excited to have you join our community of remote tech professionals.</p>

<p>With ${PRODUCT_NAME}, you can:</p>
<ul>
  <li>Create multiple role-specific profiles</li>
  <li>Swipe through curated remote opportunities</li>
  <li>Get instant feedback on your applications</li>
  <li>Connect directly with companies</li>
</ul>

<p>Get started by completing your profile and creating your first deck!</p>

<p>Best regards,<br>The ${COMPANY_NAME} Team</p>

<p>Visit us at: <a href="${COMPANY_WEBSITE}">${COMPANY_WEBSITE}</a></p>
EOL

# Step 9: Update User model
echo "👤 Updating User model with welcome email callback..."
cat > /tmp/user_model.rb << 'EOL'
  after_create :send_welcome_email
    def send_welcome_email
    UserMailer.with(user: self).welcome_email.deliver_now
  end
EOL
sed -i '' '/class User < ApplicationRecord/r /tmp/user_model.rb' app/models/user.rb
rm /tmp/user_model.rb

# Step 10: Get Resend API key from user
echo "🔑 Please enter your Resend API key (get it from https://resend.com):"
read -s resend_api_key

# Step 11: Update .env file
echo "🔑 Adding Resend configuration to .env file..."
echo -e "\nRESEND_API_KEY=$resend_api_key" >> .env

echo "✅ Resend setup complete! Don't forget to:"
echo "1. Restart your Rails server to load the new configuration"
echo "2. Test the welcome email by creating a new user"
echo "3. Check your Resend dashboard to monitor email delivery"