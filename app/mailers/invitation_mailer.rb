class InvitationMailer < ActionMailer::Base
    default :from => 'Gi y Pablo <giypablo@mailgun.giypablo.com>'
    after_action :add_metadata_headers
    
    def send_invitation_email(guest,invitados)
        @g = guest
        @invitados = invitados
        mail(:to => guest.email, :subject => 'Gi y Pablo - Invitación a Nuestro Casamiento')
        
        sent_email = SentEmail.new
        sent_email.guest_id = @g.id
        sent_email.invitation_id = @g.invitation_id
        sent_email.save
    end
    def add_metadata_headers
        headers['X-Mailgun-Variables'] = {
          "guest_id": @g.id,
          "invitation_id": @g.invitation_id
        }.to_json
    end
end