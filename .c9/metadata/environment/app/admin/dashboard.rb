{"filter":false,"title":"dashboard.rb","tooltip":"/app/admin/dashboard.rb","undoManager":{"mark":7,"position":7,"stack":[[{"start":{"row":10,"column":54},"end":{"row":10,"column":55},"action":"insert","lines":[","],"id":67}],[{"start":{"row":10,"column":55},"end":{"row":10,"column":56},"action":"insert","lines":[" "],"id":68}],[{"start":{"row":10,"column":56},"end":{"row":10,"column":80},"action":"insert","lines":["class: 'async-panel box'"],"id":69}],[{"start":{"row":10,"column":64},"end":{"row":10,"column":79},"action":"remove","lines":["async-panel box"],"id":70},{"start":{"row":10,"column":64},"end":{"row":10,"column":65},"action":"insert","lines":["f"]},{"start":{"row":10,"column":65},"end":{"row":10,"column":66},"action":"insert","lines":["i"]},{"start":{"row":10,"column":66},"end":{"row":10,"column":67},"action":"insert","lines":["x"]}],[{"start":{"row":10,"column":67},"end":{"row":10,"column":68},"action":"insert","lines":["e"],"id":71}],[{"start":{"row":10,"column":68},"end":{"row":10,"column":69},"action":"insert","lines":["d"],"id":72},{"start":{"row":10,"column":69},"end":{"row":10,"column":70},"action":"insert","lines":["-"]},{"start":{"row":10,"column":70},"end":{"row":10,"column":71},"action":"insert","lines":["h"]},{"start":{"row":10,"column":71},"end":{"row":10,"column":72},"action":"insert","lines":["e"]}],[{"start":{"row":10,"column":72},"end":{"row":10,"column":73},"action":"insert","lines":["a"],"id":73},{"start":{"row":10,"column":73},"end":{"row":10,"column":74},"action":"insert","lines":["d"]},{"start":{"row":10,"column":74},"end":{"row":10,"column":75},"action":"insert","lines":["e"]},{"start":{"row":10,"column":75},"end":{"row":10,"column":76},"action":"insert","lines":["r"]},{"start":{"row":10,"column":76},"end":{"row":10,"column":77},"action":"insert","lines":["s"]}],[{"start":{"row":10,"column":64},"end":{"row":10,"column":77},"action":"remove","lines":["fixed-headers"],"id":74},{"start":{"row":10,"column":64},"end":{"row":10,"column":77},"action":"insert","lines":["sticky-header"]}],[{"start":{"row":8,"column":8},"end":{"row":10,"column":11},"action":"remove","lines":["panel \"Mensajes Recientes\", class: 'box' do","          ","        end"],"id":78},{"start":{"row":8,"column":8},"end":{"row":13,"column":13},"action":"insert","lines":["table_for Message.order(\"id desc\").limit(20) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.strftime(\"%d/%m/%Y %-H:%M %p\") }","            column(\"Aprobado?\") { |c| c.show }","            ","          end"]}],[{"start":{"row":9,"column":10},"end":{"row":14,"column":13},"action":"remove","lines":["table_for Message.order(\"id desc\").limit(20) do","            column(\"Remitente\") { |c| c.author }","            column(\"Fecha\") { |c| c.created_at.strftime(\"%d/%m/%Y %-H:%M %p\") }","            column(\"Aprobado?\") { |c| c.show }","            ","          end"],"id":77}],[{"start":{"row":9,"column":54},"end":{"row":9,"column":78},"action":"remove","lines":[", class: 'sticky-header'"],"id":76}],[{"start":{"row":5,"column":0},"end":{"row":6,"column":8},"action":"remove","lines":["        panel 'Invitaciones - Estado de Envíos', class: 'async-panel box', 'data-url' => admin_invitation_quick_events_path, 'data-period' => 1.minute","        "],"id":75}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":9},"end":{"row":7,"column":9},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":85,"mode":"ace/mode/ruby"}},"hash":"4595ac52a2513c6a5ce95696963caec91d4d5f38","timestamp":1538109705381}