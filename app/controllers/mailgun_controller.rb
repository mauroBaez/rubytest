class MailgunController < ApplicationController
  def quick_events
    
    # First, instantiate the SDK with your API credentials, domain, and required parameters for example.
    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])
    
    result = mg_events.get()
                            
    @results = result.to_h['items']
    
    # Want more results?
    #result = mg_events.next
    
    # Go backwards?
    #result = mg_events.previous
    render layout: false 

  end
  
  def quick_send
      @invitation = Invitation.find(params[:id])
      @guests = @invitation.guests
      
      render layout: false 
  end
  
  def quick_send_mails
      #@invitation = Invitation.find(params[:id])
      #@guests = @invitation.guests
      #render layout: false
      #UserNotifier.send_signup_email(@guest).deliver
      
      
      @guests = params[:guests]
      @invitation = Invitation.find(params[:id])
      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe
      #@sent = {}
      @sent = ''
      @guests.each do |key, value|
        @g = Guest.find(key)

        
      mailer_response = InvitationMailer.send_invitation_email(@g, @invitados).deliver_now
      
      sent_email = SentEmail.new
      sent_email.guest_id = @g.id
      sent_email.invitation_id = @g.invitation_id
      sent_email.message_id = mailer_response.message_id
      sent_email.status = mailer_response.message_id
      sent_email.recipient = @g.email
      sent_email.save
      @sent = @sent + '\n'  + @g.name
      #@sent.store(@g.email,result)
      end
      render 'quick_send_response.js', layout: false, invitation: @invitation, sent: @sent
      #render @html
      #redirect_to admin_invitation_path(params[:id])

  end

  
end