desc "This task is called by the Heroku scheduler add-on"

task :update_events => :environment do
  puts "Updating feed..."
  # First, instantiate the SDK with your API credentials, domain, and required parameters for example.
    mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
    mg_events = Mailgun::Events.new(mg_client, ENV['MAILGUN_DOMAIN'])
    
    result = mg_events.get({'limit' => 25})
                            
    @results = result.to_h['items']
  @post = Message.new()
    @post.author = "kkjkjkj"
    @post.content = @results.to_s
    @post.messageboard_id = Messageboard.first.id
    @post.save
  puts "done."
end