{"changed":true,"filter":false,"title":"mailgun_controller.rb","tooltip":"/app/controllers/mailgun_controller.rb","value":"class MailgunController < ApplicationController\n  \n  def quick_events\n    \n    # First, instantiate the SDK with your API credentials, domain, and required parameters for example.\n    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])\n    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])\n    \n    result = mg_events.get()\n                            \n    @results = result.to_h['items']\n    \n    # Want more results?\n    #result = mg_events.next\n    \n    # Go backwards?\n    #result = mg_events.previous\n    render layout: false \n\n  end\n  \n  def quick_send\n      @invitation = Invitation.find(params[:id])\n      @guests = @invitation.guests\n      \n      render layout: false \n  end\n  \n  def quick_send_mails\n      #@invitation = Invitation.find(params[:id])\n      #@guests = @invitation.guests\n      #render layout: false\n      #UserNotifier.send_signup_email(@guest).deliver\n      \n      \n      @guests = params[:guests]\n      @invitation = Invitation.find(params[:id])\n      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe\n      #@sent = {}\n      @sent = ''\n      @guests.each do |key, value|\n        @g = Guest.find(key)\n\n        \n      mailer_response = InvitationMailer.send_invitation_email(@g, @invitados).deliver_now\n      \n      sent_email = SentEmail.new\n      sent_email.guest_id = @g.id\n      sent_email.invitation_id = @g.invitation_id\n      sent_email.message_id = mailer_response.message_id\n      sent_email.status = mailer_response.message_id\n      sent_email.recipient = @g.email\n      sent_email.save\n      @sent = @sent + '\\n'  + @g.name\n      #@sent.store(@g.email,result)\n      end\n      render 'quick_send_response.js', layout: false, invitation: @invitation, sent: @sent\n      #render @html\n      #redirect_to admin_invitation_path(params[:id])\n\n  end\n\n  \nend","undoManager":{"mark":3,"position":4,"stack":[[{"start":{"row":1,"column":2},"end":{"row":42,"column":5},"action":"remove","lines":["skip_before_action :verify_authenticity_token","  before_action :verify_mailgun_signature","","  def create","    process_event!","    json_response('ffff')","  end","","  private","","  ","  def process_event!","    sent_email = SentEmail.find_or_initialize_by(","      invitation_id: params[\"invitation-id\"]","    )","","    sent_email.guest_id = guest_id","    sent_email.invitation_id = invitation_id","    sent_email.status = event_status","","    sent_email.save!","  end","","  def verify_mailgun_signature","    api_key = ENV[\"MAILGUN_API_KEY\"]","    token = params[:token]","    timestamp = params[:timestamp]","    signature = params[:signature]","","    digest = OpenSSL::Digest::SHA256.new","    data = [timestamp, token].join","","    valid_signature = signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)","","    unless valid_signature","      render nothing: true, status: :unauthorized","    end","  end","  ","  def get_mail_events","    ","  end"],"id":2},{"start":{"row":1,"column":2},"end":{"row":61,"column":5},"action":"insert","lines":[" def quick_events","    ","    # First, instantiate the SDK with your API credentials, domain, and required parameters for example.","    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])","    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])","    ","    result = mg_events.get({'limit' => 25})","                            ","    @results = result.to_h['items']","    ","    # Want more results?","    #result = mg_events.next","    ","    # Go backwards?","    #result = mg_events.previous","    render layout: false ","","  end","  ","  ","  ","  def quick_send","      @invitation = Invitation.find(params[:id])","      @guests = @invitation.guests","      ","      render layout: false ","  end","  ","  def quick_send_mails","      #@invitation = Invitation.find(params[:id])","      #@guests = @invitation.guests","      #render layout: false","      #UserNotifier.send_signup_email(@guest).deliver","      ","      ","      @guests = params[:guests]","      @invitation = Invitation.find(params[:id])","      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe","      #@sent = {}","      @sent = ''","      @guests.each do |key, value|","        @g = Guest.find(key)","","        ","      mailer_response = InvitationMailer.send_invitation_email(@g, @invitados).deliver_now","      ","      sent_email = SentEmail.new","      sent_email.guest_id = @g.id","      sent_email.invitation_id = @g.invitation_id","      sent_email.message_id = mailer_response.message_id","      sent_email.status = mailer_response.message_id","      sent_email.recipient = @g.email","      sent_email.save","      @sent = @sent + '\\n'  + @g.name","      #@sent.store(@g.email,result)","      end","      render 'quick_send_response.js', layout: false, invitation: @invitation, sent: @sent","      #render @html","      #redirect_to admin_invitation_path(params[:id])","","  end"]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":[" "],"id":3}],[{"start":{"row":19,"column":2},"end":{"row":20,"column":2},"action":"remove","lines":["","  "],"id":4},{"start":{"row":19,"column":2},"end":{"row":20,"column":2},"action":"remove","lines":["","  "]}],[{"start":{"row":7,"column":27},"end":{"row":7,"column":42},"action":"remove","lines":["{'limit' => 25}"],"id":5}],[{"start":{"row":0,"column":47},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":375,"scrollleft":0,"selection":{"start":{"row":45,"column":6},"end":{"row":45,"column":6},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1539744013394}