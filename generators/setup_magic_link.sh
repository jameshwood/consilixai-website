echo "🔑 Setting up Magic Link authentication..."

# Read company info from meta.yml
COMPANY_NAME=$(grep "company_name:" config/meta.yml | cut -d'"' -f2)
COMPANY_WEBSITE=$(grep "company_website:" config/meta.yml | cut -d'"' -f2)
PRODUCT_NAME=$(grep "meta_product_name:" config/meta.yml | cut -d'"' -f2)

# Check if Resend is configured
if ! grep -q "RESEND_API_KEY" .env; then
  echo "⚠️  Resend API key not found in .env file"
  echo "🔑 Please enter your Resend API key (get it from https://resend.com):"
  read -s resend_api_key
  echo -e "\nRESEND_API_KEY=$resend_api_key" >> .env
fi

# Step 1: Generate EmailLink model
echo "📝 Generating EmailLink model..."
rails generate model email_link token expires_at:datetime user:references

# Step 2: Run migration
echo "💾 Running database migration..."
rails db:migrate

# Step 3: Update EmailLink model
echo "📝 Updating EmailLink model..."
cat <<EOL > app/models/email_link.rb
class EmailLink < ApplicationRecord
  belongs_to :user
  after_create :send_mail
  
  def self.generate(email)
    user = User.find_by(email: email)
    if !user
      user = User.create(email: email, password: Devise.friendly_token.first(8))
    end
    create(user: user, expires_at: Date.today + 1.day, token: generate_token)
  end

  def self.generate_token
    Devise.friendly_token.first(16)
  end

  private
  def send_mail
    EmailLinkMailer.sign_in_mail(self).deliver_now
  end
end
EOL

# Step 4: Update User model
echo "👤 Updating User model..."
cat > /tmp/user_model.rb << 'EOL'
  has_many :email_links, dependent: :destroy
EOL
sed -i '' '/class User < ApplicationRecord/r /tmp/user_model.rb' app/models/user.rb
rm /tmp/user_model.rb

# Step 5: Generate EmailLink mailer
echo "📧 Generating EmailLink mailer..."
rails generate mailer email_link

# Step 6: Update EmailLink mailer
echo "📝 Updating EmailLink mailer..."
cat <<EOL > app/mailers/email_link_mailer.rb
class EmailLinkMailer < ApplicationMailer
  def sign_in_mail(email_link)
    @token = email_link.token
    @user = email_link.user

    mail to: @user.email, subject: "Your ${PRODUCT_NAME} Magic Link 🚀"
  end
end
EOL

# Step 7: Create email template
echo "📧 Creating magic link email template..."
mkdir -p app/views/email_link_mailer
cat <<EOL > app/views/email_link_mailer/sign_in_mail.html.erb
<h1>Welcome to ${PRODUCT_NAME}! 🎉</h1>

<p>Hello, <%= @user.email %>!</p>

<p>Click the link below to sign in to your account:</p>

<%= link_to "Sign in to ${PRODUCT_NAME}", email_link_url(token: @token), style: "display: inline-block; padding: 12px 24px; background-color: #6366F1; color: white; text-decoration: none; border-radius: 6px; font-weight: bold;" %>

<p>This link will expire in 24 hours.</p>

<p>If you didn't request this link, you can safely ignore this email.</p>

<p>Best regards,<br>The ${COMPANY_NAME} Team</p>

<p>Visit us at: <a href="${COMPANY_WEBSITE}">${COMPANY_WEBSITE}</a></p>
EOL

# Step 8: Create EmailLinks controller
echo "🎮 Creating EmailLinks controller..."
rails generate controller email_links

# Step 9: Update EmailLinks controller
echo "📝 Updating EmailLinks controller..."
cat <<EOL > app/controllers/email_links_controller.rb
class EmailLinksController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @email_link = EmailLink.generate(params[:email])
    if @email_link
      flash[:notice] = "Magic link sent! Please check your inbox."
      redirect_to root_path
    else
      flash[:alert] = "There was an error. Please try again."
      redirect_to new_user_session_path
    end
  end

  def validate
    email_link = EmailLink.where(token: params[:token]).where("expires_at > ?", DateTime.now).first

    unless email_link
      flash[:alert] = "Invalid or expired magic link!"
      redirect_to new_user_session_path
      return
    end

    sign_in(email_link.user, scope: :user)
    flash[:notice] = "Welcome back! You're signed in successfully 🚀"
    redirect_to root_path
  end
end
EOL

# Step 10: Add routes
echo "🛣️ Adding routes..."
cat > /tmp/routes.rb << 'EOL'
  # Magic Link routes
  post 'email_links/create', as: :magic_link
  get 'email_links/validate', as: :email_link
EOL
sed -i '' '/Rails.application.routes.draw do/r /tmp/routes.rb' config/routes.rb
rm /tmp/routes.rb

# Step 11: Update Devise sessions view
echo "📝 Updating Devise sessions view..."
mkdir -p app/views/devise/sessions
cat <<EOL > app/views/devise/sessions/new.html.erb
<div class="flex items-center justify-center px-4 sm:px-6 lg:px-8 py-12">
  <div class="max-w-md w-full space-y-8">
    <div>
      <h2 class="text-center text-3xl font-extrabold">
        Sign in to shuffle-jobs
      </h2>
    </div>
    <%= form_with(url: magic_link_path, method: :post) do %>
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="email" class="sr-only">Email address</label>
          <%= email_field_tag :email, nil,
              class: "input input-bordered w-full",
              placeholder: "Enter your email" %>
        </div>
      </div>

      <div class="mt-6">
        <%= submit_tag "Send Magic Link",
            class: "btn btn-primary w-full" %>
      </div>
    <% end %>
  </div>
</div>
EOL

echo "✅ Magic Link setup complete! Don't forget to:"
echo "1. Restart your Rails server to load the new configuration"
echo "2. Test the magic link flow by trying to sign in"
echo "3. Check your Resend dashboard to monitor email delivery"
echo "4. Update any existing authentication links to point to the new magic link system" 