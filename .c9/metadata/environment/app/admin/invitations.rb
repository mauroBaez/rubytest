{"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","undoManager":{"mark":16,"position":16,"stack":[[{"start":{"row":14,"column":0},"end":{"row":15,"column":0},"action":"remove","lines":["menu false",""],"id":199},{"start":{"row":14,"column":0},"end":{"row":15,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":16,"column":9},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":200}],[{"start":{"row":18,"column":52},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":201}],[{"start":{"row":24,"column":3},"end":{"row":25,"column":0},"action":"insert","lines":["",""],"id":202}],[{"start":{"row":39,"column":2},"end":{"row":44,"column":5},"action":"remove","lines":["def lock","    lock! do |format, invitation|","      ","      ","    end","  end"],"id":203}],[{"start":{"row":52,"column":25},"end":{"row":53,"column":0},"action":"insert","lines":["",""],"id":204},{"start":{"row":53,"column":0},"end":{"row":53,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":53,"column":4},"end":{"row":54,"column":0},"action":"insert","lines":["",""],"id":205},{"start":{"row":54,"column":0},"end":{"row":54,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":54,"column":4},"end":{"row":70,"column":27},"action":"insert","lines":["# First, instantiate the SDK with your API credentials, domain, and required parameters for example.","mg_client = Mailgun::Client.new(\"your-api-key\")","mg_events = Mailgun::Events.new(mg_client, \"your-domain\")","","result = mg_events.get({'limit' => 25,","                        'recipient' => 'joe@example.com'})","","result.to_h['items'].each do | item |","    # outputs \"Delivered - 20140509184016.12571.48844@example.com\"","    puts \"#{item['event']} - #{item['message']['headers']['message-id']}\"","end","","# Want more results?","result = mg_events.next","","# Go backwards?","result = mg_events.previous"],"id":206}],[{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "],"id":207},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]},{"start":{"row":57,"column":0},"end":{"row":57,"column":2},"action":"insert","lines":["  "]},{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "]},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "],"id":208},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]},{"start":{"row":57,"column":0},"end":{"row":57,"column":2},"action":"insert","lines":["  "]},{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "]},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":56,"column":47},"end":{"row":56,"column":60},"action":"remove","lines":["\"your-domain\""],"id":209},{"start":{"row":56,"column":47},"end":{"row":56,"column":68},"action":"insert","lines":["ENV['MAILGUN_DOMAIN']"]}],[{"start":{"row":55,"column":36},"end":{"row":55,"column":50},"action":"remove","lines":["\"your-api-key\""],"id":210},{"start":{"row":55,"column":36},"end":{"row":55,"column":58},"action":"insert","lines":["ENV['MAILGUN_API_KEY']"]}],[{"start":{"row":59,"column":44},"end":{"row":59,"column":59},"action":"remove","lines":["joe@example.com"],"id":211},{"start":{"row":59,"column":44},"end":{"row":59,"column":66},"action":"insert","lines":["\tmdbaez@hotmail.com.ar"]}],[{"start":{"row":42,"column":4},"end":{"row":46,"column":34},"action":"remove","lines":["# First, instantiate the Mailgun Client with your API key","    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']","    ","    # Define the domain you wish to query","    domain = ENV['MAILGUN_DOMAIN']"],"id":212}],[{"start":{"row":42,"column":4},"end":{"row":43,"column":4},"action":"remove","lines":["","    "],"id":213}],[{"start":{"row":54,"column":44},"end":{"row":54,"column":45},"action":"remove","lines":["\t"],"id":214}],[{"start":{"row":43,"column":4},"end":{"row":47,"column":25},"action":"remove","lines":["# Issue the get request","    @results = mg_client.get(\"#{domain}/events\")","    @results = @results.to_h","    #render json: result.to_h","    render layout: false "],"id":215},{"start":{"row":43,"column":2},"end":{"row":43,"column":4},"action":"remove","lines":["  "]},{"start":{"row":43,"column":0},"end":{"row":43,"column":2},"action":"remove","lines":["  "]},{"start":{"row":42,"column":4},"end":{"row":43,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":547.765625,"scrollleft":0,"selection":{"start":{"row":60,"column":31},"end":{"row":60,"column":31},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":35,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1537914283520,"hash":"c103f5ad1aafc49531da281efca8f3c765c9891b"}