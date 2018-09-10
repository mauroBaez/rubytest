{"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","undoManager":{"mark":41,"position":41,"stack":[[{"start":{"row":118,"column":0},"end":{"row":120,"column":3},"action":"remove","lines":["sidebar \"Estado de Envío\", only: :show do","  render 'send', { invitation: invitation }","end"],"id":2},{"start":{"row":117,"column":0},"end":{"row":118,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":130,"column":12},"end":{"row":130,"column":26},"action":"remove","lines":["dropdown: true"],"id":3},{"start":{"row":130,"column":11},"end":{"row":130,"column":12},"action":"remove","lines":[" "]}],[{"start":{"row":130,"column":4},"end":{"row":130,"column":11},"action":"remove","lines":["actions"],"id":4},{"start":{"row":130,"column":4},"end":{"row":130,"column":5},"action":"insert","lines":["c"]},{"start":{"row":130,"column":5},"end":{"row":130,"column":6},"action":"insert","lines":["o"]},{"start":{"row":130,"column":6},"end":{"row":130,"column":7},"action":"insert","lines":["l"]},{"start":{"row":130,"column":7},"end":{"row":130,"column":8},"action":"insert","lines":["u"]},{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"insert","lines":["n"]},{"start":{"row":130,"column":9},"end":{"row":130,"column":10},"action":"insert","lines":["m"]}],[{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"remove","lines":["n"],"id":5},{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"remove","lines":["m"]}],[{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"insert","lines":["m"],"id":6},{"start":{"row":130,"column":9},"end":{"row":130,"column":10},"action":"insert","lines":["n"]}],[{"start":{"row":131,"column":8},"end":{"row":131,"column":12},"action":"remove","lines":["item"],"id":8},{"start":{"row":131,"column":8},"end":{"row":131,"column":15},"action":"insert","lines":["link_to"]}],[{"start":{"row":40,"column":5},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":9},{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"insert","lines":["  "]},{"start":{"row":41,"column":2},"end":{"row":42,"column":0},"action":"insert","lines":["",""]},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":42,"column":2},"end":{"row":47,"column":5},"action":"insert","lines":["def lock","    lock! do |format, invitation|","      ","      ","    end","  end"],"id":10}],[{"start":{"row":43,"column":4},"end":{"row":46,"column":7},"action":"remove","lines":["lock! do |format, invitation|","      ","      ","    end"],"id":11}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":10},"action":"remove","lines":["lock"],"id":14},{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["e"]},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["v"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["e"]},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["n"]},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["t"]},{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["s"]}],[{"start":{"row":43,"column":4},"end":{"row":50,"column":67},"action":"insert","lines":["# First, instantiate the Mailgun Client with your API key","mg_client = Mailgun::Client.new 'your-secret-api-key'","","# Define the domain you wish to query","domain = 'example.com'","","# Issue the get request","result = mg_client.get(\"#{domain}/events\", {:event => 'delivered'})"],"id":15}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "],"id":16},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "],"id":17},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":44,"column":36},"end":{"row":44,"column":57},"action":"remove","lines":["'your-secret-api-key'"],"id":18},{"start":{"row":44,"column":36},"end":{"row":44,"column":58},"action":"insert","lines":["ENV['MAILGUN_API_KEY']"]}],[{"start":{"row":47,"column":13},"end":{"row":47,"column":26},"action":"remove","lines":["'example.com'"],"id":19},{"start":{"row":47,"column":13},"end":{"row":47,"column":35},"action":"insert","lines":["ENV['MAILGUN_API_KEY']"]}],[{"start":{"row":47,"column":26},"end":{"row":47,"column":33},"action":"remove","lines":["API_KEY"],"id":20},{"start":{"row":47,"column":26},"end":{"row":47,"column":27},"action":"insert","lines":["D"]},{"start":{"row":47,"column":27},"end":{"row":47,"column":28},"action":"insert","lines":["O"]},{"start":{"row":47,"column":28},"end":{"row":47,"column":29},"action":"insert","lines":["M"]},{"start":{"row":47,"column":29},"end":{"row":47,"column":30},"action":"insert","lines":["A"]},{"start":{"row":47,"column":30},"end":{"row":47,"column":31},"action":"insert","lines":["I"]},{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"insert","lines":["N"]}],[{"start":{"row":114,"column":2},"end":{"row":116,"column":5},"action":"remove","lines":["def compute_url_from_resource","      render 'klklklklklk'","  end"],"id":21},{"start":{"row":114,"column":0},"end":{"row":114,"column":2},"action":"remove","lines":["  "]},{"start":{"row":113,"column":5},"end":{"row":114,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["q"],"id":22},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["u"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["i"]},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["c"]},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["k"]}],[{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["_"],"id":23}],[{"start":{"row":50,"column":71},"end":{"row":51,"column":0},"action":"insert","lines":["",""],"id":24},{"start":{"row":51,"column":0},"end":{"row":51,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":51,"column":4},"end":{"row":51,"column":53},"action":"insert","lines":["render json: edit_admin_invitation_path(resource)"],"id":25}],[{"start":{"row":51,"column":17},"end":{"row":51,"column":53},"action":"remove","lines":["edit_admin_invitation_path(resource)"],"id":26},{"start":{"row":51,"column":17},"end":{"row":51,"column":23},"action":"insert","lines":["result"]}],[{"start":{"row":51,"column":11},"end":{"row":51,"column":15},"action":"remove","lines":["json"],"id":27},{"start":{"row":51,"column":11},"end":{"row":51,"column":12},"action":"insert","lines":["h"]},{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":["t"]},{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["m"]},{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":["l"]}],[{"start":{"row":51,"column":23},"end":{"row":51,"column":24},"action":"insert","lines":["."],"id":28},{"start":{"row":51,"column":24},"end":{"row":51,"column":25},"action":"insert","lines":["t"]},{"start":{"row":51,"column":25},"end":{"row":51,"column":26},"action":"insert","lines":["o"]}],[{"start":{"row":51,"column":24},"end":{"row":51,"column":26},"action":"remove","lines":["to"],"id":29},{"start":{"row":51,"column":24},"end":{"row":51,"column":28},"action":"insert","lines":["to_s"]}],[{"start":{"row":51,"column":11},"end":{"row":51,"column":15},"action":"remove","lines":["html"],"id":30},{"start":{"row":51,"column":11},"end":{"row":51,"column":12},"action":"insert","lines":["j"]},{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":["s"]},{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["o"]},{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":["n"]}],[{"start":{"row":51,"column":27},"end":{"row":51,"column":28},"action":"remove","lines":["s"],"id":31},{"start":{"row":51,"column":27},"end":{"row":51,"column":28},"action":"insert","lines":["h"]}],[{"start":{"row":50,"column":45},"end":{"row":50,"column":70},"action":"remove","lines":[", {:event => 'delivered'}"],"id":43}],[{"start":{"row":51,"column":4},"end":{"row":51,"column":5},"action":"insert","lines":["#"],"id":44}],[{"start":{"row":51,"column":29},"end":{"row":52,"column":0},"action":"insert","lines":["",""],"id":45},{"start":{"row":52,"column":0},"end":{"row":52,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":52,"column":4},"end":{"row":53,"column":0},"action":"insert","lines":["      render layout: false ",""],"id":46}],[{"start":{"row":52,"column":8},"end":{"row":52,"column":10},"action":"remove","lines":["  "],"id":47},{"start":{"row":52,"column":6},"end":{"row":52,"column":8},"action":"remove","lines":["  "]},{"start":{"row":52,"column":4},"end":{"row":52,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":50,"column":4},"end":{"row":50,"column":5},"action":"insert","lines":["@"],"id":48}],[{"start":{"row":50,"column":11},"end":{"row":50,"column":12},"action":"insert","lines":["s"],"id":49}],[{"start":{"row":50,"column":48},"end":{"row":51,"column":0},"action":"insert","lines":["",""],"id":50},{"start":{"row":51,"column":0},"end":{"row":51,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":51,"column":4},"end":{"row":51,"column":9},"action":"insert","lines":[".to_h"],"id":51}],[{"start":{"row":51,"column":4},"end":{"row":51,"column":12},"action":"insert","lines":["@results"],"id":52}],[{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":["="],"id":53}],[{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"remove","lines":["="],"id":54}],[{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":[" "],"id":55},{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["="]}],[{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":[" "],"id":56}],[{"start":{"row":51,"column":15},"end":{"row":51,"column":23},"action":"insert","lines":["@results"],"id":57}]]},"ace":{"folds":[],"scrolltop":641,"scrollleft":0,"selection":{"start":{"row":51,"column":23},"end":{"row":51,"column":28},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":41,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1536618809616,"hash":"6c4336760deab80f5e005a224898c7e31281dab3"}