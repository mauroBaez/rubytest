{"filter":false,"title":"mailgun_controller.rb","tooltip":"/app/controllers/mailgun_controller.rb","undoManager":{"mark":12,"position":12,"stack":[[{"start":{"row":1,"column":2},"end":{"row":42,"column":5},"action":"remove","lines":["skip_before_action :verify_authenticity_token","  before_action :verify_mailgun_signature","","  def create","    process_event!","    json_response('ffff')","  end","","  private","","  ","  def process_event!","    sent_email = SentEmail.find_or_initialize_by(","      invitation_id: params[\"invitation-id\"]","    )","","    sent_email.guest_id = guest_id","    sent_email.invitation_id = invitation_id","    sent_email.status = event_status","","    sent_email.save!","  end","","  def verify_mailgun_signature","    api_key = ENV[\"MAILGUN_API_KEY\"]","    token = params[:token]","    timestamp = params[:timestamp]","    signature = params[:signature]","","    digest = OpenSSL::Digest::SHA256.new","    data = [timestamp, token].join","","    valid_signature = signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)","","    unless valid_signature","      render nothing: true, status: :unauthorized","    end","  end","  ","  def get_mail_events","    ","  end"],"id":2},{"start":{"row":1,"column":2},"end":{"row":61,"column":5},"action":"insert","lines":[" def quick_events","    ","    # First, instantiate the SDK with your API credentials, domain, and required parameters for example.","    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])","    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])","    ","    result = mg_events.get({'limit' => 25})","                            ","    @results = result.to_h['items']","    ","    # Want more results?","    #result = mg_events.next","    ","    # Go backwards?","    #result = mg_events.previous","    render layout: false ","","  end","  ","  ","  ","  def quick_send","      @invitation = Invitation.find(params[:id])","      @guests = @invitation.guests","      ","      render layout: false ","  end","  ","  def quick_send_mails","      #@invitation = Invitation.find(params[:id])","      #@guests = @invitation.guests","      #render layout: false","      #UserNotifier.send_signup_email(@guest).deliver","      ","      ","      @guests = params[:guests]","      @invitation = Invitation.find(params[:id])","      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe","      #@sent = {}","      @sent = ''","      @guests.each do |key, value|","        @g = Guest.find(key)","","        ","      mailer_response = InvitationMailer.send_invitation_email(@g, @invitados).deliver_now","      ","      sent_email = SentEmail.new","      sent_email.guest_id = @g.id","      sent_email.invitation_id = @g.invitation_id","      sent_email.message_id = mailer_response.message_id","      sent_email.status = mailer_response.message_id","      sent_email.recipient = @g.email","      sent_email.save","      @sent = @sent + '\\n'  + @g.name","      #@sent.store(@g.email,result)","      end","      render 'quick_send_response.js', layout: false, invitation: @invitation, sent: @sent","      #render @html","      #redirect_to admin_invitation_path(params[:id])","","  end"]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":[" "],"id":3}],[{"start":{"row":19,"column":2},"end":{"row":20,"column":2},"action":"remove","lines":["","  "],"id":4},{"start":{"row":19,"column":2},"end":{"row":20,"column":2},"action":"remove","lines":["","  "]}],[{"start":{"row":7,"column":27},"end":{"row":7,"column":42},"action":"remove","lines":["{'limit' => 25}"],"id":5}],[{"start":{"row":0,"column":47},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":52,"column":21},"end":{"row":53,"column":0},"action":"insert","lines":["",""],"id":7},{"start":{"row":53,"column":0},"end":{"row":53,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":55,"column":35},"end":{"row":56,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":56,"column":0},"end":{"row":56,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "],"id":9},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]},{"start":{"row":51,"column":0},"end":{"row":51,"column":2},"action":"insert","lines":["  "]},{"start":{"row":52,"column":0},"end":{"row":52,"column":2},"action":"insert","lines":["  "]},{"start":{"row":53,"column":0},"end":{"row":53,"column":2},"action":"insert","lines":["  "]},{"start":{"row":54,"column":0},"end":{"row":54,"column":2},"action":"insert","lines":["  "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":39,"column":16},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":10},{"start":{"row":40,"column":0},"end":{"row":40,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":51,"column":44},"end":{"row":51,"column":54},"action":"remove","lines":["message_id"],"id":11},{"start":{"row":51,"column":44},"end":{"row":51,"column":45},"action":"insert","lines":["e"]},{"start":{"row":51,"column":45},"end":{"row":51,"column":46},"action":"insert","lines":["v"]},{"start":{"row":51,"column":46},"end":{"row":51,"column":47},"action":"insert","lines":["e"]},{"start":{"row":51,"column":47},"end":{"row":51,"column":48},"action":"insert","lines":["n"]},{"start":{"row":51,"column":48},"end":{"row":51,"column":49},"action":"insert","lines":["t"]}],[{"start":{"row":51,"column":28},"end":{"row":51,"column":49},"action":"remove","lines":["mailer_response.event"],"id":12}],[{"start":{"row":51,"column":28},"end":{"row":51,"column":30},"action":"insert","lines":["''"],"id":13}],[{"start":{"row":36,"column":48},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":14},{"start":{"row":37,"column":0},"end":{"row":37,"column":6},"action":"insert","lines":["      "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":47,"column":8},"end":{"row":47,"column":8},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":1,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1539748962143,"hash":"59b2781634ea04be4314c0d89f577548eeb20eda"}