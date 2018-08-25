{"filter":false,"title":"dashboard.rb","tooltip":"/app/admin/dashboard.rb","ace":{"folds":[],"scrolltop":375,"scrollleft":0,"selection":{"start":{"row":9,"column":44},"end":{"row":9,"column":44},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":48,"state":"start","mode":"ace/mode/ruby"}},"hash":"fafdbed6d3fdc3456b4904e7ff8c3ec9ea8e373e","undoManager":{"mark":19,"position":19,"stack":[[{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "],"id":2}],[{"start":{"row":14,"column":2},"end":{"row":14,"column":4},"action":"insert","lines":["  "],"id":3}],[{"start":{"row":14,"column":4},"end":{"row":14,"column":6},"action":"insert","lines":["  "],"id":4}],[{"start":{"row":14,"column":6},"end":{"row":23,"column":9},"action":"insert","lines":["column do","        panel \"Mensajes Recientes\" do","          table_for Message.order(\"id desc\").limit(10) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.to_date }","            column(\"Aprobado?\") { |c| c.show }","            ","          end","        end","      end"],"id":5}],[{"start":{"row":15,"column":15},"end":{"row":15,"column":33},"action":"remove","lines":["Mensajes Recientes"],"id":6},{"start":{"row":15,"column":15},"end":{"row":15,"column":16},"action":"insert","lines":["I"]},{"start":{"row":15,"column":16},"end":{"row":15,"column":17},"action":"insert","lines":["n"]},{"start":{"row":15,"column":17},"end":{"row":15,"column":18},"action":"insert","lines":["v"]},{"start":{"row":15,"column":18},"end":{"row":15,"column":19},"action":"insert","lines":["i"]},{"start":{"row":15,"column":19},"end":{"row":15,"column":20},"action":"insert","lines":["t"]},{"start":{"row":15,"column":20},"end":{"row":15,"column":21},"action":"insert","lines":["a"]}],[{"start":{"row":15,"column":21},"end":{"row":15,"column":22},"action":"insert","lines":["c"],"id":7},{"start":{"row":15,"column":22},"end":{"row":15,"column":23},"action":"insert","lines":["i"]},{"start":{"row":15,"column":23},"end":{"row":15,"column":24},"action":"insert","lines":["o"]},{"start":{"row":15,"column":24},"end":{"row":15,"column":25},"action":"insert","lines":["n"]},{"start":{"row":15,"column":25},"end":{"row":15,"column":26},"action":"insert","lines":["e"]},{"start":{"row":15,"column":26},"end":{"row":15,"column":27},"action":"insert","lines":["s"]}],[{"start":{"row":14,"column":6},"end":{"row":23,"column":9},"action":"remove","lines":["column do","        panel \"Invitaciones\" do","          table_for Message.order(\"id desc\").limit(10) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.to_date }","            column(\"Aprobado?\") { |c| c.show }","            ","          end","        end","      end"],"id":8}],[{"start":{"row":3,"column":14},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":9},{"start":{"row":4,"column":0},"end":{"row":4,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":4,"column":6},"end":{"row":13,"column":9},"action":"insert","lines":["column do","        panel \"Invitaciones\" do","          table_for Message.order(\"id desc\").limit(10) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.to_date }","            column(\"Aprobado?\") { |c| c.show }","            ","          end","        end","      end"],"id":10}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":28},"action":"remove","lines":["Aprobado"],"id":11},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["E"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["n"]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["v"]}],[{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"insert","lines":["i"],"id":12},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["a"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["d"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["a"]}],[{"start":{"row":7,"column":20},"end":{"row":7,"column":29},"action":"remove","lines":["Remitente"],"id":13},{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["I"]},{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["n"]},{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["v"]},{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["i"]},{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["t"]},{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["a"]}],[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["d"],"id":14},{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["o"]},{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["s"]}],[{"start":{"row":9,"column":44},"end":{"row":9,"column":45},"action":"insert","lines":["-"],"id":15}],[{"start":{"row":9,"column":45},"end":{"row":9,"column":46},"action":"insert","lines":[" "],"id":16}],[{"start":{"row":9,"column":46},"end":{"row":9,"column":66},"action":"insert","lines":["c.created_at.to_date"],"id":17}],[{"start":{"row":9,"column":44},"end":{"row":9,"column":45},"action":"remove","lines":["-"],"id":18}],[{"start":{"row":9,"column":44},"end":{"row":9,"column":46},"action":"insert","lines":["+ "],"id":19}],[{"start":{"row":9,"column":45},"end":{"row":9,"column":46},"action":"remove","lines":[" "],"id":20}],[{"start":{"row":9,"column":44},"end":{"row":9,"column":66},"action":"remove","lines":["+ c.created_at.to_date"],"id":21}]]},"timestamp":1535076699663}