class PagesController < ApplicationController
  # skip_before_action :authenticate_user! # Not needed since authentication is disabled

  def home
  end

  def services
  end

  def about
  end

  def case_studies
  end

  def contact
  end

  def create_contact
    contact_params = params.permit(:name, :email, :company, :message)
    
    if contact_params[:name].present? && contact_params[:email].present? && contact_params[:message].present?
      begin
        ContactMailer.new_contact_message(contact_params).deliver_now
        flash[:notice] = "Thank you for your message! We'll get back to you within 24 hours."
        redirect_to contact_path
      rescue => e
        Rails.logger.error "Contact form error: #{e.message}"
        flash[:alert] = "Sorry, there was an error sending your message. Please try again or email us directly at hello@consilix.ai"
        redirect_to contact_path
      end
    else
      flash[:alert] = "Please fill in all required fields."
      redirect_to contact_path
    end
  end

  def terms
  end

  def privacy
  end

  def cookies
  end
end
