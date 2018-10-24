desc "This task is called by the Heroku scheduler add-on"

task :update_events => :environment do
  
  puts "Updating feed..."
  
  # First, instantiate the SDK with your API credentials, domain, and required parameters for example.
  
    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])
    @begin = EmailEvent.last.timestamp
    
    result = mg_events.get({'limit' => 25, 'begin' => @begin})

    @results = result.to_h['items']
    puts "Results"

    @results.each do |r|
      puts r["message"]["headers"]["message-id"]
      puts r["timestamp"]

      sent_email = SentEmail.find_or_initialize_by(
        message_id: r["message"]["headers"]["message-id"]
      )
      
      sent_email.status = r["event"]
      sent_email.save
      
      @event = EmailEvent.new()
      
      @event.event = r["event"]
      @event.message_id = r["message"]["headers"]["message-id"]
      @event.sent_email_id = sent_email.id
      @event.invitation_id = sent_email.invitation_id
      @event.timestamp = r["timestamp"]
    
      @event.save
    end
  puts "done."
end