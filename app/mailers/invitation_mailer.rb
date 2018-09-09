class InvitationMailer < ActionMailer::Base
    include SpecialDelivery::Mailer
    default :from => 'giypablo@mailgun.giypablo.com'

    def send_invitation_email(guest)
        special_delivery(
        :callback_class  => InvitationCallback,
        :callback_record => guest
        ) do
          mail(:to => guest.email, :subject => 'All the Monies!')
        end
    end
end
class InvitationCallback < SpecialDelivery::Callback
    def bounced(guest)
        send_message_to_admin "#{guest.name} did not receive their lottery winner email."
    end
    def opened(guest)
        send_message_to_admin "#{guest.name} just opened their lottery winner email."
    end
    def delivered()
        send_message_to_admin " just opened their lottery winner email."
    end
end