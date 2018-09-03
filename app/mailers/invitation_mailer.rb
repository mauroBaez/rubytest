class InvitationMailer < ActionMailer::Base
   default :from => 'giypablo@giypablo.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_invitation_email(guest)
    @guest = guest
    mail( :to => @guest.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
  
end
