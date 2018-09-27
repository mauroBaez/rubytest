{"filter":false,"title":"dashboard.rb","tooltip":"/app/admin/dashboard.rb","undoManager":{"mark":50,"position":50,"stack":[[{"start":{"row":5,"column":40},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":6,"column":0},"end":{"row":6,"column":10},"action":"insert","lines":["          "]}],[{"start":{"row":6,"column":10},"end":{"row":11,"column":13},"action":"insert","lines":["table_for Message.order(\"id desc\").limit(10) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.to_date }","            column(\"Aprobado?\") { |c| c.show }","            ","          end"],"id":3}],[{"start":{"row":6,"column":20},"end":{"row":6,"column":27},"action":"remove","lines":["Message"],"id":4},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["S"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["e"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["n"]},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["t"]},{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["E"]},{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["m"]}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["a"],"id":5},{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":["i"]},{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["l"]},{"start":{"row":6,"column":29},"end":{"row":6,"column":30},"action":"insert","lines":["s"]}],[{"start":{"row":7,"column":40},"end":{"row":7,"column":46},"action":"remove","lines":["author"],"id":6},{"start":{"row":7,"column":40},"end":{"row":7,"column":41},"action":"insert","lines":["r"]},{"start":{"row":7,"column":41},"end":{"row":7,"column":42},"action":"insert","lines":["e"]},{"start":{"row":7,"column":42},"end":{"row":7,"column":43},"action":"insert","lines":["c"]},{"start":{"row":7,"column":43},"end":{"row":7,"column":44},"action":"insert","lines":["i"]},{"start":{"row":7,"column":44},"end":{"row":7,"column":45},"action":"insert","lines":["p"]},{"start":{"row":7,"column":45},"end":{"row":7,"column":46},"action":"insert","lines":["i"]}],[{"start":{"row":7,"column":46},"end":{"row":7,"column":47},"action":"insert","lines":["e"],"id":7},{"start":{"row":7,"column":47},"end":{"row":7,"column":48},"action":"insert","lines":["n"]},{"start":{"row":7,"column":48},"end":{"row":7,"column":49},"action":"insert","lines":["t"]}],[{"start":{"row":7,"column":20},"end":{"row":7,"column":29},"action":"remove","lines":["Remitente"],"id":8},{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["D"]},{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["e"]},{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["s"]},{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["t"]},{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["i"]}],[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["n"],"id":9},{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["a"]},{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["t"]},{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["a"]}],[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["r"],"id":10},{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["i"]},{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["o"]}],[{"start":{"row":8,"column":20},"end":{"row":8,"column":25},"action":"remove","lines":["Fecha"],"id":11},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["E"]},{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["n"]},{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["v"]},{"start":{"row":8,"column":23},"end":{"row":8,"column":24},"action":"insert","lines":["i"]}],[{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["a"],"id":12},{"start":{"row":8,"column":25},"end":{"row":8,"column":26},"action":"insert","lines":["d"]},{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"insert","lines":["o"]}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":29},"action":"remove","lines":["Aprobado?"],"id":13},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["E"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["s"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["t"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"insert","lines":["a"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["d"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["o"]}],[{"start":{"row":9,"column":37},"end":{"row":9,"column":41},"action":"remove","lines":["show"],"id":14},{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"insert","lines":["s"]},{"start":{"row":9,"column":38},"end":{"row":9,"column":39},"action":"insert","lines":["t"]},{"start":{"row":9,"column":39},"end":{"row":9,"column":40},"action":"insert","lines":["a"]},{"start":{"row":9,"column":40},"end":{"row":9,"column":41},"action":"insert","lines":["t"]},{"start":{"row":9,"column":41},"end":{"row":9,"column":42},"action":"insert","lines":["u"]},{"start":{"row":9,"column":42},"end":{"row":9,"column":43},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":29},"end":{"row":6,"column":30},"action":"remove","lines":["s"],"id":15}],[{"start":{"row":12,"column":0},"end":{"row":13,"column":0},"action":"remove","lines":["          text_node %{Aún no se enviaron Invitaciones}.html_safe",""],"id":16}],[{"start":{"row":7,"column":0},"end":{"row":8,"column":0},"action":"remove","lines":["            column(\"Destinatario\") { |c| c.recipient }",""],"id":17},{"start":{"row":7,"column":0},"end":{"row":8,"column":0},"action":"insert","lines":["            column(\"Destinatario\") { |c| c.recipient }",""]}],[{"start":{"row":8,"column":0},"end":{"row":9,"column":0},"action":"insert","lines":["            column(\"Destinatario\") { |c| c.recipient }",""],"id":18}],[{"start":{"row":8,"column":20},"end":{"row":8,"column":32},"action":"remove","lines":["Destinatario"],"id":19},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["E"]}],[{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["m"],"id":20},{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["a"]},{"start":{"row":8,"column":23},"end":{"row":8,"column":24},"action":"insert","lines":["i"]},{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["l"]}],[{"start":{"row":7,"column":43},"end":{"row":7,"column":52},"action":"remove","lines":["recipient"],"id":21},{"start":{"row":7,"column":43},"end":{"row":7,"column":44},"action":"insert","lines":["g"]},{"start":{"row":7,"column":44},"end":{"row":7,"column":45},"action":"insert","lines":["u"]},{"start":{"row":7,"column":45},"end":{"row":7,"column":46},"action":"insert","lines":["e"]},{"start":{"row":7,"column":46},"end":{"row":7,"column":47},"action":"insert","lines":["s"]},{"start":{"row":7,"column":47},"end":{"row":7,"column":48},"action":"insert","lines":["t"]}],[{"start":{"row":7,"column":48},"end":{"row":7,"column":49},"action":"insert","lines":["."],"id":22},{"start":{"row":7,"column":49},"end":{"row":7,"column":50},"action":"insert","lines":["n"]},{"start":{"row":7,"column":50},"end":{"row":7,"column":51},"action":"insert","lines":["a"]},{"start":{"row":7,"column":51},"end":{"row":7,"column":52},"action":"insert","lines":["m"]},{"start":{"row":7,"column":52},"end":{"row":7,"column":53},"action":"insert","lines":["e"]}],[{"start":{"row":10,"column":35},"end":{"row":10,"column":43},"action":"remove","lines":["c.status"],"id":23},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"insert","lines":["'"]},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["'"]}],[{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["E"],"id":24},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":["n"]},{"start":{"row":10,"column":38},"end":{"row":10,"column":39},"action":"insert","lines":["v"]},{"start":{"row":10,"column":39},"end":{"row":10,"column":40},"action":"insert","lines":["i"]},{"start":{"row":10,"column":40},"end":{"row":10,"column":41},"action":"insert","lines":["a"]},{"start":{"row":10,"column":41},"end":{"row":10,"column":42},"action":"insert","lines":["d"]}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":["o"],"id":25}],[{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"insert","lines":[" "],"id":26},{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"insert","lines":["-"]}],[{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"insert","lines":[" "],"id":27},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"insert","lines":["S"]}],[{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"insert","lines":["i"],"id":28},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"insert","lines":["n"]}],[{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"insert","lines":[" "],"id":29},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"insert","lines":["l"]},{"start":{"row":10,"column":51},"end":{"row":10,"column":52},"action":"insert","lines":["e"]},{"start":{"row":10,"column":52},"end":{"row":10,"column":53},"action":"insert","lines":["e"]},{"start":{"row":10,"column":53},"end":{"row":10,"column":54},"action":"insert","lines":["r"]}],[{"start":{"row":10,"column":53},"end":{"row":10,"column":54},"action":"remove","lines":["r"],"id":30},{"start":{"row":10,"column":52},"end":{"row":10,"column":53},"action":"remove","lines":["e"]},{"start":{"row":10,"column":51},"end":{"row":10,"column":52},"action":"remove","lines":["e"]},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"remove","lines":["l"]}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"remove","lines":["o"],"id":31}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":["a"],"id":32}],[{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"insert","lines":["a"],"id":33},{"start":{"row":10,"column":51},"end":{"row":10,"column":52},"action":"insert","lines":["b"]},{"start":{"row":10,"column":52},"end":{"row":10,"column":53},"action":"insert","lines":["r"]},{"start":{"row":10,"column":53},"end":{"row":10,"column":54},"action":"insert","lines":["i"]},{"start":{"row":10,"column":54},"end":{"row":10,"column":55},"action":"insert","lines":["r"]}],[{"start":{"row":10,"column":36},"end":{"row":10,"column":43},"action":"remove","lines":["Enviada"],"id":34},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["R"]},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":["e"]},{"start":{"row":10,"column":38},"end":{"row":10,"column":39},"action":"insert","lines":["c"]},{"start":{"row":10,"column":39},"end":{"row":10,"column":40},"action":"insert","lines":["i"]},{"start":{"row":10,"column":40},"end":{"row":10,"column":41},"action":"insert","lines":["b"]}],[{"start":{"row":10,"column":41},"end":{"row":10,"column":42},"action":"insert","lines":["i"],"id":35},{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":["d"]},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"insert","lines":["a"]}],[{"start":{"row":11,"column":10},"end":{"row":11,"column":11},"action":"remove","lines":[" "],"id":36},{"start":{"row":11,"column":8},"end":{"row":11,"column":10},"action":"remove","lines":["  "]},{"start":{"row":11,"column":6},"end":{"row":11,"column":8},"action":"remove","lines":["  "]},{"start":{"row":11,"column":4},"end":{"row":11,"column":6},"action":"remove","lines":["  "]},{"start":{"row":11,"column":2},"end":{"row":11,"column":4},"action":"remove","lines":["  "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"remove","lines":["  "]},{"start":{"row":10,"column":59},"end":{"row":11,"column":1},"action":"remove","lines":[""," "]}],[{"start":{"row":4,"column":15},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":37},{"start":{"row":5,"column":0},"end":{"row":5,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":5,"column":8},"end":{"row":5,"column":117},"action":"insert","lines":["panel 'Name', class: 'async-panel', 'data-url' => some_action_admin_resources_path, 'data-period' => 1.minute"],"id":38}],[{"start":{"row":5,"column":15},"end":{"row":5,"column":19},"action":"remove","lines":["Name"],"id":39},{"start":{"row":5,"column":15},"end":{"row":5,"column":36},"action":"insert","lines":["Invitaciones Enviadas"]}],[{"start":{"row":5,"column":76},"end":{"row":5,"column":102},"action":"remove","lines":["ome_action_admin_resources"],"id":40},{"start":{"row":5,"column":76},"end":{"row":5,"column":105},"action":"insert","lines":["admin_invitation_quick_events"]}],[{"start":{"row":5,"column":75},"end":{"row":5,"column":76},"action":"remove","lines":["s"],"id":41}],[{"start":{"row":6,"column":8},"end":{"row":13,"column":11},"action":"remove","lines":["panel \"Invitaciones Enviadas\" do","          table_for SentEmail.order(\"id desc\").limit(10) do","            column(\"Destinatario\") { |c| c.guest.name }","            column(\"Email\") { |c| c.recipient }","            column(\"Enviado\") { |c| c.created_at.to_date }","            column(\"Estado\") { |c| 'Recibida - Sin abrir' }","          end","        end"],"id":42}],[{"start":{"row":5,"column":27},"end":{"row":5,"column":36},"action":"remove","lines":[" Enviadas"],"id":43},{"start":{"row":5,"column":27},"end":{"row":5,"column":28},"action":"insert","lines":[" "]},{"start":{"row":5,"column":28},"end":{"row":5,"column":29},"action":"insert","lines":["-"]}],[{"start":{"row":5,"column":29},"end":{"row":5,"column":30},"action":"insert","lines":[" "],"id":44},{"start":{"row":5,"column":30},"end":{"row":5,"column":31},"action":"insert","lines":["E"]},{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"insert","lines":["s"]},{"start":{"row":5,"column":32},"end":{"row":5,"column":33},"action":"insert","lines":["t"]},{"start":{"row":5,"column":33},"end":{"row":5,"column":34},"action":"insert","lines":["a"]},{"start":{"row":5,"column":34},"end":{"row":5,"column":35},"action":"insert","lines":["d"]},{"start":{"row":5,"column":35},"end":{"row":5,"column":36},"action":"insert","lines":["o"]}],[{"start":{"row":5,"column":36},"end":{"row":5,"column":37},"action":"insert","lines":["d"],"id":45},{"start":{"row":5,"column":37},"end":{"row":5,"column":38},"action":"insert","lines":["e"]}],[{"start":{"row":5,"column":38},"end":{"row":5,"column":39},"action":"insert","lines":[" "],"id":46}],[{"start":{"row":5,"column":38},"end":{"row":5,"column":39},"action":"remove","lines":[" "],"id":47},{"start":{"row":5,"column":37},"end":{"row":5,"column":38},"action":"remove","lines":["e"]},{"start":{"row":5,"column":36},"end":{"row":5,"column":37},"action":"remove","lines":["d"]}],[{"start":{"row":5,"column":36},"end":{"row":5,"column":37},"action":"insert","lines":[" "],"id":48},{"start":{"row":5,"column":37},"end":{"row":5,"column":38},"action":"insert","lines":["d"]},{"start":{"row":5,"column":38},"end":{"row":5,"column":39},"action":"insert","lines":["e"]}],[{"start":{"row":5,"column":39},"end":{"row":5,"column":40},"action":"insert","lines":[" "],"id":49},{"start":{"row":5,"column":40},"end":{"row":5,"column":41},"action":"insert","lines":["E"]},{"start":{"row":5,"column":41},"end":{"row":5,"column":42},"action":"insert","lines":["n"]},{"start":{"row":5,"column":42},"end":{"row":5,"column":43},"action":"insert","lines":["v"]}],[{"start":{"row":5,"column":43},"end":{"row":5,"column":44},"action":"insert","lines":["ì"],"id":50},{"start":{"row":5,"column":44},"end":{"row":5,"column":45},"action":"insert","lines":["o"]},{"start":{"row":5,"column":45},"end":{"row":5,"column":46},"action":"insert","lines":["s"]}],[{"start":{"row":5,"column":45},"end":{"row":5,"column":46},"action":"remove","lines":["s"],"id":51},{"start":{"row":5,"column":44},"end":{"row":5,"column":45},"action":"remove","lines":["o"]},{"start":{"row":5,"column":43},"end":{"row":5,"column":44},"action":"remove","lines":["ì"]}],[{"start":{"row":5,"column":43},"end":{"row":5,"column":44},"action":"insert","lines":["í"],"id":52},{"start":{"row":5,"column":44},"end":{"row":5,"column":45},"action":"insert","lines":["o"]},{"start":{"row":5,"column":45},"end":{"row":5,"column":46},"action":"insert","lines":["s"]}],[{"start":{"row":8,"column":47},"end":{"row":8,"column":59},"action":"remove","lines":[" async-panel"],"id":60}],[{"start":{"row":8,"column":34},"end":{"row":8,"column":60},"action":"insert","lines":[", class: 'box async-panel'"],"id":59}],[{"start":{"row":5,"column":60},"end":{"row":5,"column":61},"action":"insert","lines":[" "],"id":58}],[{"start":{"row":5,"column":57},"end":{"row":5,"column":58},"action":"insert","lines":["b"],"id":57},{"start":{"row":5,"column":58},"end":{"row":5,"column":59},"action":"insert","lines":["o"]},{"start":{"row":5,"column":59},"end":{"row":5,"column":60},"action":"insert","lines":["x"]}],[{"start":{"row":32,"column":4},"end":{"row":32,"column":5},"action":"insert","lines":["#"],"id":56}],[{"start":{"row":21,"column":4},"end":{"row":21,"column":5},"action":"insert","lines":["#"],"id":55}],[{"start":{"row":5,"column":146},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":54}],[{"start":{"row":6,"column":6},"end":{"row":6,"column":8},"action":"remove","lines":["  "],"id":53},{"start":{"row":6,"column":4},"end":{"row":6,"column":6},"action":"remove","lines":["  "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":6},"end":{"row":2,"column":6},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":7,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1538089780063,"hash":"8b1b3c99ec66a08eff264c3badfaa7546234612e"}