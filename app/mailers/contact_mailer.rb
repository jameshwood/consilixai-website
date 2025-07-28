class ContactMailer < ApplicationMailer
  default from: 'james@consilix.ai'

  def new_contact_message(contact_params)
    @name = contact_params[:name]
    @email = contact_params[:email]
    @company = contact_params[:company]
    @message = contact_params[:message]
    
    mail(
      to: 'james@consilix.ai',
      subject: "Website Contact Form: #{@name}",
      reply_to: @email
    )
  end
end