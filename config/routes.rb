Rails.application.routes.draw do
  # authenticate :user, lambda { |u| u.admin? } do
  #   mount Motor::Admin => '/motor_admin'
  # end
  # devise_for :users # Temporarily disabled
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'

  root to: 'pages#home'

  get 'process',  to: 'pages#process_page', as: :process
  get 'work',     to: 'pages#work',         as: :work
  get 'writing',         to: 'pages#writing',      as: :writing
  get 'writing/:slug',   to: 'pages#writing_post', as: :writing_post, constraints: { slug: /[a-z0-9\-]+/ }
  get 'about',    to: 'pages#about',        as: :about
  get 'contact',  to: 'pages#contact',      as: :contact
  post 'contact', to: 'pages#create_contact'

  # Legacy URL redirects (preserve inbound links to old paths)
  get 'services',      to: redirect('/process', status: 301)
  get 'case-studies',  to: redirect('/work',    status: 301)

  get 'terms-and-conditions', to: 'pages#terms',   as: :terms_and_conditions
  get 'privacy-policy',       to: 'pages#privacy', as: :privacy_policy
  get 'cookies',              to: 'pages#cookies', as: :cookies
end
