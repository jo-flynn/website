class ContactMailer < ActionMailer::Base
  default :to => 'me@joeflynn.net'

  def contact_email(name, email, message)
    # set up vars for our view    
    @name = name
    @email = email
    @message = message

    # send an email!
    mail(:from => email, :subject => '[Website] Contact email from' + name) do |format|
        format.text
    end
  end
end
