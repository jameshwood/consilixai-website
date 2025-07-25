class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user! # Temporarily disabled
  before_action :set_locale

  def set_locale
    I18n.locale = I18n.default_locale
  end

  # This method overrides Rails.application.default_url_options[:host] to add an absolute URL to meta tags, good for SEO
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
