Rails.application.routes.draw do
  # authenticate :user, lambda { |u| u.admin? } do
  #   mount Motor::Admin => '/motor_admin'
  # end
  # devise_for :users # Temporarily disabled
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  root to: 'pages#home'
  get 'services', to: 'pages#services'
  get 'about', to: 'pages#about'
  get 'case-studies', to: 'pages#case_studies'
  get 'contact', to: 'pages#contact'
  get 'terms-and-conditions', to: 'pages#terms'
  get 'privacy-policy', to: 'pages#privacy'
  get 'cookies', to: 'pages#cookies'
end
