class InvitationMailer < ActionMailer::Base
  default from: 'notifications@example.com'
 
  def invitation_email
    @guest = params[:guest]
    @url  = 'http://example.com/login'
    mail(to: @guest.email, subject: 'Welcome to My Awesome Site')
  end
  
end
