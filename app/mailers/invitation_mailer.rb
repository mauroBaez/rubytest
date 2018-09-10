class InvitationMailer < ActionMailer::Base
    default :from => 'giypablo@mailgun.giypablo.com'

    def send_invitation_email(guest,invitados)
        mail(:to => guest.email, :subject => 'All the Monies!')
    end
end