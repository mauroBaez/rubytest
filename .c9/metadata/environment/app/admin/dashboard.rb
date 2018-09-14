{"filter":false,"title":"dashboard.rb","tooltip":"/app/admin/dashboard.rb","undoManager":{"mark":12,"position":12,"stack":[[{"start":{"row":5,"column":40},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":6,"column":0},"end":{"row":6,"column":10},"action":"insert","lines":["          "]}],[{"start":{"row":6,"column":10},"end":{"row":11,"column":13},"action":"insert","lines":["table_for Message.order(\"id desc\").limit(10) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.to_date }","            column(\"Aprobado?\") { |c| c.show }","            ","          end"],"id":3}],[{"start":{"row":6,"column":20},"end":{"row":6,"column":27},"action":"remove","lines":["Message"],"id":4},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["S"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["e"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["n"]},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["t"]},{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["E"]},{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["m"]}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["a"],"id":5},{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":["i"]},{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["l"]},{"start":{"row":6,"column":29},"end":{"row":6,"column":30},"action":"insert","lines":["s"]}],[{"start":{"row":7,"column":40},"end":{"row":7,"column":46},"action":"remove","lines":["author"],"id":6},{"start":{"row":7,"column":40},"end":{"row":7,"column":41},"action":"insert","lines":["r"]},{"start":{"row":7,"column":41},"end":{"row":7,"column":42},"action":"insert","lines":["e"]},{"start":{"row":7,"column":42},"end":{"row":7,"column":43},"action":"insert","lines":["c"]},{"start":{"row":7,"column":43},"end":{"row":7,"column":44},"action":"insert","lines":["i"]},{"start":{"row":7,"column":44},"end":{"row":7,"column":45},"action":"insert","lines":["p"]},{"start":{"row":7,"column":45},"end":{"row":7,"column":46},"action":"insert","lines":["i"]}],[{"start":{"row":7,"column":46},"end":{"row":7,"column":47},"action":"insert","lines":["e"],"id":7},{"start":{"row":7,"column":47},"end":{"row":7,"column":48},"action":"insert","lines":["n"]},{"start":{"row":7,"column":48},"end":{"row":7,"column":49},"action":"insert","lines":["t"]}],[{"start":{"row":7,"column":20},"end":{"row":7,"column":29},"action":"remove","lines":["Remitente"],"id":8},{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["D"]},{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["e"]},{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["s"]},{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["t"]},{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["i"]}],[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["n"],"id":9},{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["a"]},{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["t"]},{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["a"]}],[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["r"],"id":10},{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["i"]},{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["o"]}],[{"start":{"row":8,"column":20},"end":{"row":8,"column":25},"action":"remove","lines":["Fecha"],"id":11},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["E"]},{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["n"]},{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["v"]},{"start":{"row":8,"column":23},"end":{"row":8,"column":24},"action":"insert","lines":["i"]}],[{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["a"],"id":12},{"start":{"row":8,"column":25},"end":{"row":8,"column":26},"action":"insert","lines":["d"]},{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"insert","lines":["o"]}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":29},"action":"remove","lines":["Aprobado?"],"id":13},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["E"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["s"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["t"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"insert","lines":["a"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["d"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["o"]}],[{"start":{"row":9,"column":37},"end":{"row":9,"column":41},"action":"remove","lines":["show"],"id":14},{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"insert","lines":["s"]},{"start":{"row":9,"column":38},"end":{"row":9,"column":39},"action":"insert","lines":["t"]},{"start":{"row":9,"column":39},"end":{"row":9,"column":40},"action":"insert","lines":["a"]},{"start":{"row":9,"column":40},"end":{"row":9,"column":41},"action":"insert","lines":["t"]},{"start":{"row":9,"column":41},"end":{"row":9,"column":42},"action":"insert","lines":["u"]},{"start":{"row":9,"column":42},"end":{"row":9,"column":43},"action":"insert","lines":["s"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":10,"column":12},"end":{"row":10,"column":12},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1536909710421,"hash":"7e8e36dccb2bcdedc6b749da127d1e1d9d450c85"}