class InvitationMailer < ActionMailer::Base
    default :from => 'Gi y Pablo <giypablo@mailgun.giypablo.com>'

    def send_invitation_email(guest,invitados)
        @g = guest
        @invitados = invitados
        mail(:to => guest.email, :subject => 'All the Monies!')
    end
end