{"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":65,"column":16},"end":{"row":65,"column":17},"action":"insert","lines":["b"],"id":6385}],[{"start":{"row":14,"column":10},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":6386}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":9},"action":"insert","lines":["orderable"],"id":6387}],[{"start":{"row":94,"column":2},"end":{"row":96,"column":5},"action":"remove","lines":["column \"#\", sortable: :id do |invitation|","    invitation.id","  end"],"id":6388},{"start":{"row":94,"column":2},"end":{"row":94,"column":18},"action":"insert","lines":["column :position"]}],[{"start":{"row":94,"column":10},"end":{"row":94,"column":18},"action":"remove","lines":["position"],"id":6389},{"start":{"row":94,"column":10},"end":{"row":94,"column":11},"action":"insert","lines":["s"]},{"start":{"row":94,"column":11},"end":{"row":94,"column":12},"action":"insert","lines":["o"]},{"start":{"row":94,"column":12},"end":{"row":94,"column":13},"action":"insert","lines":["r"]},{"start":{"row":94,"column":13},"end":{"row":94,"column":14},"action":"insert","lines":["t"]},{"start":{"row":94,"column":14},"end":{"row":94,"column":15},"action":"insert","lines":["_"]},{"start":{"row":94,"column":15},"end":{"row":94,"column":16},"action":"insert","lines":["o"]}],[{"start":{"row":94,"column":16},"end":{"row":94,"column":17},"action":"insert","lines":["r"],"id":6390},{"start":{"row":94,"column":17},"end":{"row":94,"column":18},"action":"insert","lines":["d"]},{"start":{"row":94,"column":18},"end":{"row":94,"column":19},"action":"insert","lines":["e"]},{"start":{"row":94,"column":19},"end":{"row":94,"column":20},"action":"insert","lines":["r"]}],[{"start":{"row":123,"column":33},"end":{"row":124,"column":0},"action":"insert","lines":["",""],"id":6391},{"start":{"row":124,"column":0},"end":{"row":124,"column":10},"action":"insert","lines":["          "]}],[{"start":{"row":124,"column":10},"end":{"row":124,"column":26},"action":"insert","lines":["column :position"],"id":6392}],[{"start":{"row":123,"column":33},"end":{"row":123,"column":34},"action":"insert","lines":[" "],"id":6393}],[{"start":{"row":123,"column":34},"end":{"row":123,"column":63},"action":"insert","lines":["url: :sort_admin_section_path"],"id":6394}],[{"start":{"row":123,"column":51},"end":{"row":123,"column":58},"action":"remove","lines":["section"],"id":6395},{"start":{"row":123,"column":51},"end":{"row":123,"column":52},"action":"insert","lines":["g"]},{"start":{"row":123,"column":52},"end":{"row":123,"column":53},"action":"insert","lines":["u"]},{"start":{"row":123,"column":53},"end":{"row":123,"column":54},"action":"insert","lines":["e"]},{"start":{"row":123,"column":54},"end":{"row":123,"column":55},"action":"insert","lines":["s"]},{"start":{"row":123,"column":55},"end":{"row":123,"column":56},"action":"insert","lines":["t"]}],[{"start":{"row":123,"column":44},"end":{"row":123,"column":45},"action":"remove","lines":["_"],"id":6396},{"start":{"row":123,"column":43},"end":{"row":123,"column":44},"action":"remove","lines":["t"]},{"start":{"row":123,"column":42},"end":{"row":123,"column":43},"action":"remove","lines":["r"]},{"start":{"row":123,"column":41},"end":{"row":123,"column":42},"action":"remove","lines":["o"]},{"start":{"row":123,"column":40},"end":{"row":123,"column":41},"action":"remove","lines":["s"]}],[{"start":{"row":123,"column":52},"end":{"row":123,"column":56},"action":"remove","lines":["path"],"id":6397},{"start":{"row":123,"column":52},"end":{"row":123,"column":61},"action":"insert","lines":["quick_add"]}],[{"start":{"row":123,"column":60},"end":{"row":123,"column":61},"action":"remove","lines":["d"],"id":6398},{"start":{"row":123,"column":59},"end":{"row":123,"column":60},"action":"remove","lines":["d"]},{"start":{"row":123,"column":58},"end":{"row":123,"column":59},"action":"remove","lines":["a"]}],[{"start":{"row":123,"column":58},"end":{"row":123,"column":59},"action":"insert","lines":["o"],"id":6399},{"start":{"row":123,"column":59},"end":{"row":123,"column":60},"action":"insert","lines":["r"]},{"start":{"row":123,"column":60},"end":{"row":123,"column":61},"action":"insert","lines":["d"]},{"start":{"row":123,"column":61},"end":{"row":123,"column":62},"action":"insert","lines":["e"]},{"start":{"row":123,"column":62},"end":{"row":123,"column":63},"action":"insert","lines":["r"]}],[{"start":{"row":123,"column":63},"end":{"row":123,"column":64},"action":"insert","lines":["_"],"id":6400},{"start":{"row":123,"column":64},"end":{"row":123,"column":65},"action":"insert","lines":["p"]},{"start":{"row":123,"column":65},"end":{"row":123,"column":66},"action":"insert","lines":["a"]},{"start":{"row":123,"column":66},"end":{"row":123,"column":67},"action":"insert","lines":["t"]},{"start":{"row":123,"column":67},"end":{"row":123,"column":68},"action":"insert","lines":["h"]}],[{"start":{"row":42,"column":27},"end":{"row":43,"column":0},"action":"insert","lines":["",""],"id":6401},{"start":{"row":43,"column":0},"end":{"row":43,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":43,"column":6},"end":{"row":47,"column":3},"action":"insert","lines":["TodoList.all.each do |todo_list|","  todo_list.todo_items.order(:updated_at).each.with_index(1) do |todo_item, index|","    todo_item.update_column :position, index","  end","end"],"id":6402}],[{"start":{"row":47,"column":3},"end":{"row":48,"column":0},"action":"insert","lines":["",""],"id":6403}],[{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "],"id":6404}],[{"start":{"row":48,"column":2},"end":{"row":56,"column":3},"action":"insert","lines":["def quick_send","      @invitation = Invitation.find(params[:id])","      @guests = @invitation.guests","      render layout: false ","      TodoList.all.each do |todo_list|","  todo_list.todo_items.order(:updated_at).each.with_index(1) do |todo_item, index|","    todo_item.update_column :position, index","  end","end"],"id":6405}],[{"start":{"row":53,"column":0},"end":{"row":53,"column":2},"action":"insert","lines":["  "],"id":6406},{"start":{"row":54,"column":0},"end":{"row":54,"column":2},"action":"insert","lines":["  "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":53,"column":0},"end":{"row":53,"column":2},"action":"insert","lines":["  "],"id":6407},{"start":{"row":54,"column":0},"end":{"row":54,"column":2},"action":"insert","lines":["  "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":53,"column":0},"end":{"row":53,"column":2},"action":"insert","lines":["  "],"id":6408},{"start":{"row":54,"column":0},"end":{"row":54,"column":2},"action":"insert","lines":["  "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":2},"action":"insert","lines":["  "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":42,"column":27},"end":{"row":46,"column":5},"action":"remove","lines":["","      TodoList.all.each do |todo_list|","  todo_list.todo_items.order(:updated_at).each.with_index(1) do |todo_item, index|","    todo_item.update_column :position, index","  end"],"id":6409}],[{"start":{"row":42,"column":26},"end":{"row":42,"column":27},"action":"remove","lines":[" "],"id":6410}],[{"start":{"row":43,"column":0},"end":{"row":43,"column":2},"action":"insert","lines":["  "],"id":6411}],[{"start":{"row":44,"column":12},"end":{"row":44,"column":16},"action":"remove","lines":["send"],"id":6412},{"start":{"row":44,"column":12},"end":{"row":44,"column":13},"action":"insert","lines":["o"]},{"start":{"row":44,"column":13},"end":{"row":44,"column":14},"action":"insert","lines":["r"]},{"start":{"row":44,"column":14},"end":{"row":44,"column":15},"action":"insert","lines":["d"]},{"start":{"row":44,"column":15},"end":{"row":44,"column":16},"action":"insert","lines":["e"]},{"start":{"row":44,"column":16},"end":{"row":44,"column":17},"action":"insert","lines":["r"]}],[{"start":{"row":45,"column":6},"end":{"row":47,"column":27},"action":"remove","lines":["@invitation = Invitation.find(params[:id])","      @guests = @invitation.guests","      render layout: false "],"id":6413},{"start":{"row":45,"column":4},"end":{"row":45,"column":6},"action":"remove","lines":["  "]},{"start":{"row":45,"column":2},"end":{"row":45,"column":4},"action":"remove","lines":["  "]},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":44,"column":17},"end":{"row":45,"column":0},"action":"remove","lines":["",""],"id":6414}],[{"start":{"row":45,"column":6},"end":{"row":45,"column":14},"action":"remove","lines":["TodoList"],"id":6415},{"start":{"row":45,"column":6},"end":{"row":45,"column":7},"action":"insert","lines":["I"]},{"start":{"row":45,"column":7},"end":{"row":45,"column":8},"action":"insert","lines":["n"]},{"start":{"row":45,"column":8},"end":{"row":45,"column":9},"action":"insert","lines":["v"]},{"start":{"row":45,"column":9},"end":{"row":45,"column":10},"action":"insert","lines":["i"]},{"start":{"row":45,"column":10},"end":{"row":45,"column":11},"action":"insert","lines":["t"]},{"start":{"row":45,"column":11},"end":{"row":45,"column":12},"action":"insert","lines":["a"]},{"start":{"row":45,"column":12},"end":{"row":45,"column":13},"action":"insert","lines":["t"]}],[{"start":{"row":45,"column":13},"end":{"row":45,"column":14},"action":"insert","lines":["i"],"id":6416},{"start":{"row":45,"column":14},"end":{"row":45,"column":15},"action":"insert","lines":["o"]},{"start":{"row":45,"column":15},"end":{"row":45,"column":16},"action":"insert","lines":["n"]}],[{"start":{"row":45,"column":30},"end":{"row":45,"column":39},"action":"remove","lines":["todo_list"],"id":6417},{"start":{"row":45,"column":30},"end":{"row":45,"column":31},"action":"insert","lines":["i"]},{"start":{"row":45,"column":31},"end":{"row":45,"column":32},"action":"insert","lines":["n"]},{"start":{"row":45,"column":32},"end":{"row":45,"column":33},"action":"insert","lines":["v"]},{"start":{"row":45,"column":33},"end":{"row":45,"column":34},"action":"insert","lines":["i"]},{"start":{"row":45,"column":34},"end":{"row":45,"column":35},"action":"insert","lines":["t"]},{"start":{"row":45,"column":35},"end":{"row":45,"column":36},"action":"insert","lines":["a"]},{"start":{"row":45,"column":36},"end":{"row":45,"column":37},"action":"insert","lines":["t"]},{"start":{"row":45,"column":37},"end":{"row":45,"column":38},"action":"insert","lines":["i"]}],[{"start":{"row":45,"column":38},"end":{"row":45,"column":39},"action":"insert","lines":["o"],"id":6418},{"start":{"row":45,"column":39},"end":{"row":45,"column":40},"action":"insert","lines":["n"]}],[{"start":{"row":46,"column":8},"end":{"row":46,"column":17},"action":"remove","lines":["todo_list"],"id":6419},{"start":{"row":46,"column":8},"end":{"row":46,"column":18},"action":"insert","lines":["invitation"]}],[{"start":{"row":46,"column":19},"end":{"row":46,"column":28},"action":"remove","lines":["todo_item"],"id":6420},{"start":{"row":46,"column":19},"end":{"row":46,"column":20},"action":"insert","lines":["g"]},{"start":{"row":46,"column":20},"end":{"row":46,"column":21},"action":"insert","lines":["u"]},{"start":{"row":46,"column":21},"end":{"row":46,"column":22},"action":"insert","lines":["e"]},{"start":{"row":46,"column":22},"end":{"row":46,"column":23},"action":"insert","lines":["s"]},{"start":{"row":46,"column":23},"end":{"row":46,"column":24},"action":"insert","lines":["t"]},{"start":{"row":46,"column":24},"end":{"row":46,"column":25},"action":"insert","lines":["s"]}],[{"start":{"row":46,"column":24},"end":{"row":46,"column":25},"action":"remove","lines":["s"],"id":6421}],[{"start":{"row":46,"column":68},"end":{"row":46,"column":77},"action":"remove","lines":["todo_item"],"id":6422},{"start":{"row":46,"column":68},"end":{"row":46,"column":69},"action":"insert","lines":["g"]},{"start":{"row":46,"column":69},"end":{"row":46,"column":70},"action":"insert","lines":["u"]},{"start":{"row":46,"column":70},"end":{"row":46,"column":71},"action":"insert","lines":["e"]},{"start":{"row":46,"column":71},"end":{"row":46,"column":72},"action":"insert","lines":["s"]},{"start":{"row":46,"column":72},"end":{"row":46,"column":73},"action":"insert","lines":["t"]}],[{"start":{"row":47,"column":10},"end":{"row":47,"column":19},"action":"remove","lines":["todo_item"],"id":6423},{"start":{"row":47,"column":10},"end":{"row":47,"column":11},"action":"insert","lines":["g"]},{"start":{"row":47,"column":11},"end":{"row":47,"column":12},"action":"insert","lines":["u"]},{"start":{"row":47,"column":12},"end":{"row":47,"column":13},"action":"insert","lines":["e"]},{"start":{"row":47,"column":13},"end":{"row":47,"column":14},"action":"insert","lines":["s"]},{"start":{"row":47,"column":14},"end":{"row":47,"column":15},"action":"insert","lines":["t"]}],[{"start":{"row":47,"column":31},"end":{"row":47,"column":39},"action":"remove","lines":["position"],"id":6424},{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"insert","lines":["s"]},{"start":{"row":47,"column":32},"end":{"row":47,"column":33},"action":"insert","lines":["o"]},{"start":{"row":47,"column":33},"end":{"row":47,"column":34},"action":"insert","lines":["r"]},{"start":{"row":47,"column":34},"end":{"row":47,"column":35},"action":"insert","lines":["t"]},{"start":{"row":47,"column":35},"end":{"row":47,"column":36},"action":"insert","lines":["_"]},{"start":{"row":47,"column":36},"end":{"row":47,"column":37},"action":"insert","lines":["o"]}],[{"start":{"row":47,"column":37},"end":{"row":47,"column":38},"action":"insert","lines":["r"],"id":6425},{"start":{"row":47,"column":38},"end":{"row":47,"column":39},"action":"insert","lines":["d"]},{"start":{"row":47,"column":39},"end":{"row":47,"column":40},"action":"insert","lines":["e"]},{"start":{"row":47,"column":40},"end":{"row":47,"column":41},"action":"insert","lines":["r"]}],[{"start":{"row":130,"column":46},"end":{"row":130,"column":51},"action":"remove","lines":["guest"],"id":6426},{"start":{"row":130,"column":46},"end":{"row":130,"column":47},"action":"insert","lines":["i"]},{"start":{"row":130,"column":47},"end":{"row":130,"column":48},"action":"insert","lines":["n"]},{"start":{"row":130,"column":48},"end":{"row":130,"column":49},"action":"insert","lines":["v"]},{"start":{"row":130,"column":49},"end":{"row":130,"column":50},"action":"insert","lines":["i"]},{"start":{"row":130,"column":50},"end":{"row":130,"column":51},"action":"insert","lines":["t"]},{"start":{"row":130,"column":51},"end":{"row":130,"column":52},"action":"insert","lines":["a"]},{"start":{"row":130,"column":52},"end":{"row":130,"column":53},"action":"insert","lines":["t"]}],[{"start":{"row":130,"column":53},"end":{"row":130,"column":54},"action":"insert","lines":["i"],"id":6427},{"start":{"row":130,"column":54},"end":{"row":130,"column":55},"action":"insert","lines":["o"]},{"start":{"row":130,"column":55},"end":{"row":130,"column":56},"action":"insert","lines":["n"]}],[{"start":{"row":130,"column":34},"end":{"row":130,"column":73},"action":"remove","lines":["url: :admin_invitation_quick_order_path"],"id":6428},{"start":{"row":130,"column":33},"end":{"row":130,"column":34},"action":"remove","lines":[" "]}],[{"start":{"row":43,"column":5},"end":{"row":44,"column":0},"action":"insert","lines":["",""],"id":6429},{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":44,"column":2},"end":{"row":48,"column":5},"action":"insert","lines":["def quick_send","      @invitation = Invitation.find(params[:id])","      @guests = @invitation.guests","      render layout: false","  end"],"id":6430}],[{"start":{"row":44,"column":16},"end":{"row":44,"column":17},"action":"insert","lines":["_"],"id":6431},{"start":{"row":44,"column":17},"end":{"row":44,"column":18},"action":"insert","lines":["m"]},{"start":{"row":44,"column":18},"end":{"row":44,"column":19},"action":"insert","lines":["a"]},{"start":{"row":44,"column":19},"end":{"row":44,"column":20},"action":"insert","lines":["i"]},{"start":{"row":44,"column":20},"end":{"row":44,"column":21},"action":"insert","lines":["l"]},{"start":{"row":44,"column":21},"end":{"row":44,"column":22},"action":"insert","lines":["s"]}],[{"start":{"row":45,"column":6},"end":{"row":45,"column":7},"action":"insert","lines":["#"],"id":6433}],[{"start":{"row":46,"column":6},"end":{"row":46,"column":7},"action":"insert","lines":["#"],"id":6434}],[{"start":{"row":47,"column":6},"end":{"row":47,"column":7},"action":"insert","lines":["#"],"id":6435}],[{"start":{"row":47,"column":27},"end":{"row":48,"column":0},"action":"insert","lines":["",""],"id":6436},{"start":{"row":48,"column":0},"end":{"row":48,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":48,"column":6},"end":{"row":49,"column":0},"action":"insert","lines":["  render json: { status: hash} ",""],"id":6437}],[{"start":{"row":48,"column":6},"end":{"row":48,"column":8},"action":"remove","lines":["  "],"id":6438}],[{"start":{"row":48,"column":29},"end":{"row":48,"column":33},"action":"remove","lines":["hash"],"id":6439},{"start":{"row":48,"column":29},"end":{"row":48,"column":30},"action":"insert","lines":["\""]},{"start":{"row":48,"column":30},"end":{"row":48,"column":31},"action":"insert","lines":["\""]}],[{"start":{"row":48,"column":29},"end":{"row":48,"column":31},"action":"remove","lines":["\"\""],"id":6442},{"start":{"row":48,"column":29},"end":{"row":48,"column":40},"action":"insert","lines":["params[:id]"]}],[{"start":{"row":48,"column":36},"end":{"row":48,"column":39},"action":"remove","lines":[":id"],"id":6443}],[{"start":{"row":48,"column":29},"end":{"row":48,"column":37},"action":"remove","lines":["params[]"],"id":6444},{"start":{"row":48,"column":29},"end":{"row":48,"column":55},"action":"insert","lines":["request.request_parameters"]}],[{"start":{"row":48,"column":29},"end":{"row":48,"column":55},"action":"remove","lines":["request.request_parameters"],"id":6446},{"start":{"row":48,"column":29},"end":{"row":48,"column":40},"action":"insert","lines":["params[:id]"]}],[{"start":{"row":48,"column":37},"end":{"row":48,"column":39},"action":"remove","lines":["id"],"id":6447},{"start":{"row":48,"column":37},"end":{"row":48,"column":38},"action":"insert","lines":["g"]},{"start":{"row":48,"column":38},"end":{"row":48,"column":39},"action":"insert","lines":["u"]},{"start":{"row":48,"column":39},"end":{"row":48,"column":40},"action":"insert","lines":["e"]},{"start":{"row":48,"column":40},"end":{"row":48,"column":41},"action":"insert","lines":["s"]},{"start":{"row":48,"column":41},"end":{"row":48,"column":42},"action":"insert","lines":["t"]},{"start":{"row":48,"column":42},"end":{"row":48,"column":43},"action":"insert","lines":["s"]}],[{"start":{"row":47,"column":27},"end":{"row":48,"column":0},"action":"insert","lines":["",""],"id":6448},{"start":{"row":48,"column":0},"end":{"row":48,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":48,"column":6},"end":{"row":48,"column":51},"action":"insert","lines":["UserNotifier.send_signup_email(@user).deliver"],"id":6449}],[{"start":{"row":48,"column":38},"end":{"row":48,"column":42},"action":"remove","lines":["user"],"id":6450},{"start":{"row":48,"column":38},"end":{"row":48,"column":39},"action":"insert","lines":["g"]},{"start":{"row":48,"column":39},"end":{"row":48,"column":40},"action":"insert","lines":["u"]},{"start":{"row":48,"column":40},"end":{"row":48,"column":41},"action":"insert","lines":["e"]},{"start":{"row":48,"column":41},"end":{"row":48,"column":42},"action":"insert","lines":["s"]},{"start":{"row":48,"column":42},"end":{"row":48,"column":43},"action":"insert","lines":["t"]}],[{"start":{"row":48,"column":6},"end":{"row":48,"column":7},"action":"insert","lines":["#"],"id":6451}],[{"start":{"row":48,"column":53},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":6452},{"start":{"row":49,"column":0},"end":{"row":49,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":49,"column":6},"end":{"row":49,"column":16},"action":"insert","lines":["@guests = "],"id":6453}],[{"start":{"row":49,"column":16},"end":{"row":49,"column":31},"action":"insert","lines":["params[:guests]"],"id":6454}],[{"start":{"row":49,"column":31},"end":{"row":50,"column":0},"action":"insert","lines":["",""],"id":6455},{"start":{"row":50,"column":0},"end":{"row":50,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":50,"column":6},"end":{"row":54,"column":9},"action":"insert","lines":["Invitation.all.each do |invitation|","        invitation.guests.order(:updated_at).each.with_index(1) do |guest, index|","          guest.update_column :sort_order, index","        end","      end"],"id":6456}],[{"start":{"row":51,"column":8},"end":{"row":53,"column":11},"action":"remove","lines":["invitation.guests.order(:updated_at).each.with_index(1) do |guest, index|","          guest.update_column :sort_order, index","        end"],"id":6457}],[{"start":{"row":50,"column":6},"end":{"row":50,"column":20},"action":"remove","lines":["Invitation.all"],"id":6458},{"start":{"row":50,"column":6},"end":{"row":50,"column":13},"action":"insert","lines":["@guests"]}],[{"start":{"row":50,"column":23},"end":{"row":50,"column":33},"action":"remove","lines":["invitation"],"id":6459},{"start":{"row":50,"column":23},"end":{"row":50,"column":24},"action":"insert","lines":["g"]},{"start":{"row":50,"column":24},"end":{"row":50,"column":25},"action":"insert","lines":["u"]},{"start":{"row":50,"column":25},"end":{"row":50,"column":26},"action":"insert","lines":["e"]},{"start":{"row":50,"column":26},"end":{"row":50,"column":27},"action":"insert","lines":["s"]}],[{"start":{"row":50,"column":27},"end":{"row":50,"column":28},"action":"insert","lines":["t"],"id":6460}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":54},"action":"insert","lines":["UserNotifier.send_signup_email(@guest).deliver"],"id":6461}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":20},"action":"remove","lines":["UserNotifier"],"id":6462},{"start":{"row":51,"column":8},"end":{"row":51,"column":24},"action":"insert","lines":["InvitationMailer"]}],[{"start":{"row":51,"column":30},"end":{"row":51,"column":36},"action":"remove","lines":["signup"],"id":6463},{"start":{"row":51,"column":30},"end":{"row":51,"column":31},"action":"insert","lines":["u"]}],[{"start":{"row":51,"column":30},"end":{"row":51,"column":31},"action":"remove","lines":["u"],"id":6464}],[{"start":{"row":51,"column":30},"end":{"row":51,"column":31},"action":"insert","lines":["i"],"id":6465},{"start":{"row":51,"column":31},"end":{"row":51,"column":32},"action":"insert","lines":["n"]},{"start":{"row":51,"column":32},"end":{"row":51,"column":33},"action":"insert","lines":["v"]},{"start":{"row":51,"column":33},"end":{"row":51,"column":34},"action":"insert","lines":["i"]},{"start":{"row":51,"column":34},"end":{"row":51,"column":35},"action":"insert","lines":["t"]},{"start":{"row":51,"column":35},"end":{"row":51,"column":36},"action":"insert","lines":["a"]},{"start":{"row":51,"column":36},"end":{"row":51,"column":37},"action":"insert","lines":["t"]},{"start":{"row":51,"column":37},"end":{"row":51,"column":38},"action":"insert","lines":["i"]},{"start":{"row":51,"column":38},"end":{"row":51,"column":39},"action":"insert","lines":["o"]}],[{"start":{"row":51,"column":39},"end":{"row":51,"column":40},"action":"insert","lines":["n"],"id":6466}],[{"start":{"row":51,"column":47},"end":{"row":51,"column":48},"action":"remove","lines":["@"],"id":6467}],[{"start":{"row":50,"column":28},"end":{"row":50,"column":29},"action":"insert","lines":[","],"id":6468}],[{"start":{"row":50,"column":29},"end":{"row":50,"column":30},"action":"insert","lines":[" "],"id":6469}],[{"start":{"row":50,"column":30},"end":{"row":50,"column":35},"action":"insert","lines":["index"],"id":6470}],[{"start":{"row":50,"column":36},"end":{"row":51,"column":0},"action":"insert","lines":["",""],"id":6471},{"start":{"row":51,"column":0},"end":{"row":51,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":36},"action":"insert","lines":["Invitation.find(params[:id])"],"id":6472}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":9},"action":"insert","lines":["@"],"id":6473},{"start":{"row":51,"column":9},"end":{"row":51,"column":10},"action":"insert","lines":["g"]}],[{"start":{"row":51,"column":10},"end":{"row":51,"column":11},"action":"insert","lines":[" "],"id":6474},{"start":{"row":51,"column":11},"end":{"row":51,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":[" "],"id":6475}],[{"start":{"row":51,"column":13},"end":{"row":51,"column":23},"action":"remove","lines":["Invitation"],"id":6476},{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["G"]},{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":["u"]},{"start":{"row":51,"column":15},"end":{"row":51,"column":16},"action":"insert","lines":["e"]},{"start":{"row":51,"column":16},"end":{"row":51,"column":17},"action":"insert","lines":["s"]},{"start":{"row":51,"column":17},"end":{"row":51,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":51,"column":24},"end":{"row":51,"column":35},"action":"remove","lines":["params[:id]"],"id":6477},{"start":{"row":51,"column":24},"end":{"row":51,"column":25},"action":"insert","lines":["i"]},{"start":{"row":51,"column":25},"end":{"row":51,"column":26},"action":"insert","lines":["n"]},{"start":{"row":51,"column":26},"end":{"row":51,"column":27},"action":"insert","lines":["d"]},{"start":{"row":51,"column":27},"end":{"row":51,"column":28},"action":"insert","lines":["e"]},{"start":{"row":51,"column":28},"end":{"row":51,"column":29},"action":"insert","lines":["x"]}],[{"start":{"row":52,"column":47},"end":{"row":52,"column":52},"action":"remove","lines":["guest"],"id":6478},{"start":{"row":52,"column":47},"end":{"row":52,"column":49},"action":"insert","lines":["@g"]}],[{"start":{"row":54,"column":29},"end":{"row":54,"column":44},"action":"remove","lines":["params[:guests]"],"id":6479},{"start":{"row":54,"column":29},"end":{"row":54,"column":36},"action":"insert","lines":["@guests"]}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":9},"action":"insert","lines":["#"],"id":6480}],[{"start":{"row":52,"column":8},"end":{"row":52,"column":9},"action":"insert","lines":["#"],"id":6481}],[{"start":{"row":50,"column":23},"end":{"row":50,"column":28},"action":"remove","lines":["guest"],"id":6482},{"start":{"row":50,"column":23},"end":{"row":50,"column":24},"action":"insert","lines":["k"]},{"start":{"row":50,"column":24},"end":{"row":50,"column":25},"action":"insert","lines":["e"]},{"start":{"row":50,"column":25},"end":{"row":50,"column":26},"action":"insert","lines":["y"]}],[{"start":{"row":50,"column":28},"end":{"row":50,"column":33},"action":"remove","lines":["index"],"id":6483},{"start":{"row":50,"column":28},"end":{"row":50,"column":29},"action":"insert","lines":["v"]},{"start":{"row":50,"column":29},"end":{"row":50,"column":30},"action":"insert","lines":["a"]},{"start":{"row":50,"column":30},"end":{"row":50,"column":31},"action":"insert","lines":["l"]},{"start":{"row":50,"column":31},"end":{"row":50,"column":32},"action":"insert","lines":["u"]},{"start":{"row":50,"column":32},"end":{"row":50,"column":33},"action":"insert","lines":["e"]}],[{"start":{"row":51,"column":8},"end":{"row":51,"column":9},"action":"remove","lines":["#"],"id":6484}],[{"start":{"row":52,"column":8},"end":{"row":52,"column":9},"action":"remove","lines":["#"],"id":6485}],[{"start":{"row":51,"column":24},"end":{"row":51,"column":29},"action":"remove","lines":["index"],"id":6486},{"start":{"row":51,"column":24},"end":{"row":51,"column":25},"action":"insert","lines":["k"]},{"start":{"row":51,"column":25},"end":{"row":51,"column":26},"action":"insert","lines":["e"]},{"start":{"row":51,"column":26},"end":{"row":51,"column":27},"action":"insert","lines":["y"]}],[{"start":{"row":51,"column":27},"end":{"row":51,"column":28},"action":"insert","lines":["."],"id":6487},{"start":{"row":51,"column":28},"end":{"row":51,"column":29},"action":"insert","lines":["t"]},{"start":{"row":51,"column":29},"end":{"row":51,"column":30},"action":"insert","lines":["o"]}],[{"start":{"row":51,"column":28},"end":{"row":51,"column":30},"action":"remove","lines":["to"],"id":6488},{"start":{"row":51,"column":28},"end":{"row":51,"column":32},"action":"insert","lines":["to_i"]}],[{"start":{"row":51,"column":27},"end":{"row":51,"column":32},"action":"remove","lines":[".to_i"],"id":6489}]]},"ace":{"folds":[],"scrolltop":659,"scrollleft":0,"selection":{"start":{"row":55,"column":0},"end":{"row":55,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":42,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1536016291448,"hash":"14ed7aa0c0c9a3faf564ce6bbca407a2f3789bb8"}