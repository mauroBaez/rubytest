{"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":50,"column":12},"end":{"row":50,"column":13},"action":"insert","lines":[" "],"id":632}],[{"start":{"row":50,"column":12},"end":{"row":50,"column":13},"action":"insert","lines":[","],"id":633}],[{"start":{"row":50,"column":24},"end":{"row":50,"column":27},"action":"remove","lines":["\"#\""],"id":634}],[{"start":{"row":50,"column":24},"end":{"row":50,"column":37},"action":"insert","lines":["invitation.id"],"id":635}],[{"start":{"row":50,"column":24},"end":{"row":50,"column":35},"action":"remove","lines":["invitation."],"id":636},{"start":{"row":50,"column":24},"end":{"row":50,"column":25},"action":"insert","lines":[":"]}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":7},"action":"insert","lines":["#"],"id":647}],[{"start":{"row":45,"column":16},"end":{"row":46,"column":27},"action":"remove","lines":["","  redirect_to resource_path"],"id":648}],[{"start":{"row":45,"column":16},"end":{"row":45,"column":17},"action":"remove","lines":[","],"id":649}],[{"start":{"row":45,"column":17},"end":{"row":45,"column":34},"action":"remove","lines":["notice: \"Locked!\""],"id":650}],[{"start":{"row":31,"column":58},"end":{"row":31,"column":59},"action":"remove","lines":[" "],"id":651},{"start":{"row":31,"column":56},"end":{"row":31,"column":58},"action":"remove","lines":["  "]},{"start":{"row":31,"column":55},"end":{"row":31,"column":56},"action":"remove","lines":[" "]}],[{"start":{"row":31,"column":55},"end":{"row":32,"column":0},"action":"insert","lines":["",""],"id":652},{"start":{"row":32,"column":0},"end":{"row":32,"column":6},"action":"insert","lines":["      "]},{"start":{"row":32,"column":6},"end":{"row":32,"column":7},"action":"insert","lines":["r"]},{"start":{"row":32,"column":7},"end":{"row":32,"column":8},"action":"insert","lines":["e"]},{"start":{"row":32,"column":8},"end":{"row":32,"column":9},"action":"insert","lines":["t"]},{"start":{"row":32,"column":9},"end":{"row":32,"column":10},"action":"insert","lines":["u"]},{"start":{"row":32,"column":10},"end":{"row":32,"column":11},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"insert","lines":["n"],"id":653}],[{"start":{"row":32,"column":12},"end":{"row":32,"column":13},"action":"insert","lines":[" "],"id":654}],[{"start":{"row":32,"column":13},"end":{"row":32,"column":15},"action":"insert","lines":["''"],"id":655}],[{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"insert","lines":["d"],"id":656},{"start":{"row":32,"column":15},"end":{"row":32,"column":16},"action":"insert","lines":["d"]},{"start":{"row":32,"column":16},"end":{"row":32,"column":17},"action":"insert","lines":["d"]}],[{"start":{"row":46,"column":17},"end":{"row":47,"column":0},"action":"insert","lines":["",""],"id":657},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":47,"column":2},"end":{"row":48,"column":0},"action":"insert","lines":["      return 'ddd'",""],"id":658}],[{"start":{"row":47,"column":6},"end":{"row":47,"column":8},"action":"remove","lines":["  "],"id":659},{"start":{"row":47,"column":4},"end":{"row":47,"column":6},"action":"remove","lines":["  "]},{"start":{"row":47,"column":2},"end":{"row":47,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":47,"column":0},"end":{"row":48,"column":0},"action":"remove","lines":["  return 'ddd'",""],"id":660},{"start":{"row":47,"column":0},"end":{"row":47,"column":21},"action":"insert","lines":["return render 'index'"]}],[{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "],"id":661}],[{"start":{"row":45,"column":30},"end":{"row":45,"column":33},"action":"remove","lines":["get"],"id":662},{"start":{"row":45,"column":30},"end":{"row":45,"column":31},"action":"insert","lines":["p"]},{"start":{"row":45,"column":31},"end":{"row":45,"column":32},"action":"insert","lines":["o"]},{"start":{"row":45,"column":32},"end":{"row":45,"column":33},"action":"insert","lines":["s"]},{"start":{"row":45,"column":33},"end":{"row":45,"column":34},"action":"insert","lines":["t"]}],[{"start":{"row":46,"column":17},"end":{"row":47,"column":0},"action":"insert","lines":["",""],"id":663},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":47,"column":2},"end":{"row":48,"column":0},"action":"insert","lines":["      format.json { render json: @user, status: :created, location: @user }",""],"id":664}],[{"start":{"row":47,"column":6},"end":{"row":47,"column":8},"action":"remove","lines":["  "],"id":665},{"start":{"row":47,"column":4},"end":{"row":47,"column":6},"action":"remove","lines":["  "]},{"start":{"row":47,"column":2},"end":{"row":47,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":47,"column":34},"end":{"row":47,"column":69},"action":"remove","lines":[", status: :created, location: @user"],"id":666}],[{"start":{"row":49,"column":0},"end":{"row":50,"column":0},"action":"remove","lines":["  return render 'index'",""],"id":667},{"start":{"row":48,"column":0},"end":{"row":49,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":47,"column":29},"end":{"row":47,"column":34},"action":"remove","lines":["@user"],"id":668},{"start":{"row":47,"column":29},"end":{"row":47,"column":51},"action":"insert","lines":["{ render json: @user }"]}],[{"start":{"row":47,"column":31},"end":{"row":47,"column":42},"action":"remove","lines":["render json"],"id":669},{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"insert","lines":["¨"]},{"start":{"row":47,"column":32},"end":{"row":47,"column":33},"action":"insert","lines":["s"]},{"start":{"row":47,"column":33},"end":{"row":47,"column":34},"action":"insert","lines":["t"]},{"start":{"row":47,"column":34},"end":{"row":47,"column":35},"action":"insert","lines":["a"]},{"start":{"row":47,"column":35},"end":{"row":47,"column":36},"action":"insert","lines":["t"]},{"start":{"row":47,"column":36},"end":{"row":47,"column":37},"action":"insert","lines":["u"]},{"start":{"row":47,"column":37},"end":{"row":47,"column":38},"action":"insert","lines":["s"]}],[{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"remove","lines":["¨"],"id":670}],[{"start":{"row":47,"column":39},"end":{"row":47,"column":45},"action":"remove","lines":["@user "],"id":671},{"start":{"row":47,"column":39},"end":{"row":47,"column":40},"action":"insert","lines":["\""]},{"start":{"row":47,"column":40},"end":{"row":47,"column":41},"action":"insert","lines":["\""]}],[{"start":{"row":47,"column":40},"end":{"row":47,"column":41},"action":"insert","lines":["o"],"id":672},{"start":{"row":47,"column":41},"end":{"row":47,"column":42},"action":"insert","lines":["k"]}],[{"start":{"row":47,"column":15},"end":{"row":47,"column":16},"action":"remove","lines":[" "],"id":673},{"start":{"row":47,"column":14},"end":{"row":47,"column":15},"action":"remove","lines":["{"]},{"start":{"row":47,"column":13},"end":{"row":47,"column":14},"action":"remove","lines":[" "]},{"start":{"row":47,"column":12},"end":{"row":47,"column":13},"action":"remove","lines":["n"]},{"start":{"row":47,"column":11},"end":{"row":47,"column":12},"action":"remove","lines":["o"]},{"start":{"row":47,"column":10},"end":{"row":47,"column":11},"action":"remove","lines":["s"]},{"start":{"row":47,"column":9},"end":{"row":47,"column":10},"action":"remove","lines":["j"]},{"start":{"row":47,"column":8},"end":{"row":47,"column":9},"action":"remove","lines":["."]},{"start":{"row":47,"column":7},"end":{"row":47,"column":8},"action":"remove","lines":["t"]},{"start":{"row":47,"column":6},"end":{"row":47,"column":7},"action":"remove","lines":["a"]}],[{"start":{"row":47,"column":5},"end":{"row":47,"column":6},"action":"remove","lines":["m"],"id":674},{"start":{"row":47,"column":4},"end":{"row":47,"column":5},"action":"remove","lines":["r"]},{"start":{"row":47,"column":3},"end":{"row":47,"column":4},"action":"remove","lines":["o"]},{"start":{"row":47,"column":2},"end":{"row":47,"column":3},"action":"remove","lines":["f"]}],[{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"remove","lines":["}"],"id":675}],[{"start":{"row":45,"column":0},"end":{"row":48,"column":3},"action":"remove","lines":["member_action :lock, method: :post do","  resource.lock! ","  render json: { status: \"ok\"} ","end"],"id":676}],[{"start":{"row":36,"column":0},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":677},{"start":{"row":37,"column":0},"end":{"row":38,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":36,"column":0},"end":{"row":39,"column":3},"action":"insert","lines":["member_action :lock, method: :post do","  resource.lock! ","  render json: { status: \"ok\"} ","end"],"id":678}],[{"start":{"row":32,"column":0},"end":{"row":33,"column":0},"action":"remove","lines":["      return 'ddd'",""],"id":679}],[{"start":{"row":30,"column":33},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":680},{"start":{"row":31,"column":0},"end":{"row":31,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":39},"action":"insert","lines":["invitation.guests.each do |guest|"],"id":681}],[{"start":{"row":33,"column":0},"end":{"row":34,"column":0},"action":"remove","lines":["    end",""],"id":682},{"start":{"row":33,"column":0},"end":{"row":34,"column":0},"action":"insert","lines":["    end",""]}],[{"start":{"row":34,"column":0},"end":{"row":35,"column":0},"action":"insert","lines":["    end",""],"id":683}],[{"start":{"row":33,"column":4},"end":{"row":33,"column":6},"action":"insert","lines":["  "],"id":684}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":55},"action":"remove","lines":["#redirect_to edit_admin_invitation_path(resource)"],"id":685},{"start":{"row":32,"column":6},"end":{"row":32,"column":56},"action":"insert","lines":["UserMailer.with(user: @user).welcome_email.deliver"]}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":8},"action":"insert","lines":["  "],"id":686}],[{"start":{"row":32,"column":8},"end":{"row":32,"column":18},"action":"remove","lines":["UserMailer"],"id":687},{"start":{"row":32,"column":8},"end":{"row":32,"column":24},"action":"insert","lines":["InvitationMailer"]}],[{"start":{"row":32,"column":30},"end":{"row":32,"column":34},"action":"remove","lines":["user"],"id":688},{"start":{"row":32,"column":30},"end":{"row":32,"column":31},"action":"insert","lines":["g"]},{"start":{"row":32,"column":31},"end":{"row":32,"column":32},"action":"insert","lines":["u"]},{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"insert","lines":["e"]},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"insert","lines":["s"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"insert","lines":["t"]}],[{"start":{"row":32,"column":37},"end":{"row":32,"column":42},"action":"remove","lines":["@user"],"id":689},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"insert","lines":["g"]},{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"insert","lines":["u"]},{"start":{"row":32,"column":39},"end":{"row":32,"column":40},"action":"insert","lines":["e"]},{"start":{"row":32,"column":40},"end":{"row":32,"column":41},"action":"insert","lines":["s"]},{"start":{"row":32,"column":41},"end":{"row":32,"column":42},"action":"insert","lines":["t"]}],[{"start":{"row":32,"column":44},"end":{"row":32,"column":51},"action":"remove","lines":["welcome"],"id":690},{"start":{"row":32,"column":44},"end":{"row":32,"column":45},"action":"insert","lines":["i"]},{"start":{"row":32,"column":45},"end":{"row":32,"column":46},"action":"insert","lines":["n"]},{"start":{"row":32,"column":46},"end":{"row":32,"column":47},"action":"insert","lines":["v"]},{"start":{"row":32,"column":47},"end":{"row":32,"column":48},"action":"insert","lines":["i"]},{"start":{"row":32,"column":48},"end":{"row":32,"column":49},"action":"insert","lines":["t"]},{"start":{"row":32,"column":49},"end":{"row":32,"column":50},"action":"insert","lines":["a"]}],[{"start":{"row":32,"column":50},"end":{"row":32,"column":51},"action":"insert","lines":["t"],"id":691},{"start":{"row":32,"column":51},"end":{"row":32,"column":52},"action":"insert","lines":["i"]},{"start":{"row":32,"column":52},"end":{"row":32,"column":53},"action":"insert","lines":["o"]},{"start":{"row":32,"column":53},"end":{"row":32,"column":54},"action":"insert","lines":["n"]}],[{"start":{"row":30,"column":33},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":692},{"start":{"row":31,"column":0},"end":{"row":31,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":22},"action":"insert","lines":["params[:product]"],"id":693}],[{"start":{"row":40,"column":25},"end":{"row":40,"column":29},"action":"remove","lines":["\"ok\""],"id":694},{"start":{"row":40,"column":25},"end":{"row":40,"column":41},"action":"insert","lines":["params[:product]"]}],[{"start":{"row":40,"column":32},"end":{"row":40,"column":40},"action":"remove","lines":[":product"],"id":695}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":7},"action":"insert","lines":["#"],"id":696}],[{"start":{"row":33,"column":6},"end":{"row":33,"column":7},"action":"insert","lines":["#"],"id":697}],[{"start":{"row":34,"column":6},"end":{"row":34,"column":7},"action":"insert","lines":["#"],"id":698}],[{"start":{"row":31,"column":0},"end":{"row":32,"column":0},"action":"remove","lines":["      params[:product]",""],"id":699}],[{"start":{"row":39,"column":32},"end":{"row":39,"column":33},"action":"remove","lines":["]"],"id":700},{"start":{"row":39,"column":31},"end":{"row":39,"column":32},"action":"remove","lines":["["]}],[{"start":{"row":39,"column":25},"end":{"row":39,"column":31},"action":"remove","lines":["params"],"id":701},{"start":{"row":39,"column":25},"end":{"row":39,"column":51},"action":"insert","lines":["request.request_parameters"]}],[{"start":{"row":30,"column":33},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":702},{"start":{"row":31,"column":0},"end":{"row":31,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":32},"action":"insert","lines":["request.request_parameters"],"id":703}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":7},"action":"remove","lines":["#"],"id":704}],[{"start":{"row":33,"column":6},"end":{"row":33,"column":7},"action":"remove","lines":["#"],"id":705}],[{"start":{"row":34,"column":6},"end":{"row":34,"column":7},"action":"remove","lines":["#"],"id":706}],[{"start":{"row":31,"column":6},"end":{"row":31,"column":32},"action":"remove","lines":["request.request_parameters"],"id":707}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":23},"action":"remove","lines":["invitation.guests"],"id":708},{"start":{"row":32,"column":6},"end":{"row":32,"column":32},"action":"insert","lines":["request.request_parameters"]}],[{"start":{"row":39,"column":17},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":712},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":40,"column":2},"end":{"row":42,"column":9},"action":"insert","lines":["request.request_parameters.each do |guest|","        InvitationMailer.with(guest: guest).invitation_email.deliver","      end"],"id":713}],[{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"remove","lines":["  "],"id":714},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"remove","lines":["  "],"id":715},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":39,"column":17},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":716},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":40,"column":2},"end":{"row":40,"column":3},"action":"insert","lines":["@"],"id":717}],[{"start":{"row":40,"column":3},"end":{"row":40,"column":4},"action":"insert","lines":["t"],"id":718}],[{"start":{"row":40,"column":4},"end":{"row":40,"column":5},"action":"insert","lines":["="],"id":719}],[{"start":{"row":40,"column":5},"end":{"row":40,"column":7},"action":"insert","lines":["\"\""],"id":720}],[{"start":{"row":40,"column":7},"end":{"row":40,"column":8},"action":"insert","lines":[";"],"id":721}],[{"start":{"row":42,"column":4},"end":{"row":42,"column":64},"action":"remove","lines":["InvitationMailer.with(guest: guest).invitation_email.deliver"],"id":722},{"start":{"row":42,"column":4},"end":{"row":42,"column":5},"action":"insert","lines":["@"]},{"start":{"row":42,"column":5},"end":{"row":42,"column":6},"action":"insert","lines":["t"]}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["="],"id":723}],[{"start":{"row":42,"column":7},"end":{"row":42,"column":9},"action":"insert","lines":["@t"],"id":724}],[{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["+"],"id":725},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["g"]},{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["u"]}],[{"start":{"row":42,"column":12},"end":{"row":42,"column":13},"action":"insert","lines":["e"],"id":726},{"start":{"row":42,"column":13},"end":{"row":42,"column":14},"action":"insert","lines":["s"]},{"start":{"row":42,"column":14},"end":{"row":42,"column":15},"action":"insert","lines":["t"]}],[{"start":{"row":42,"column":15},"end":{"row":42,"column":16},"action":"insert","lines":["."],"id":727},{"start":{"row":42,"column":16},"end":{"row":42,"column":17},"action":"insert","lines":["e"]},{"start":{"row":42,"column":17},"end":{"row":42,"column":18},"action":"insert","lines":["m"]},{"start":{"row":42,"column":18},"end":{"row":42,"column":19},"action":"insert","lines":["a"]},{"start":{"row":42,"column":19},"end":{"row":42,"column":20},"action":"insert","lines":["i"]},{"start":{"row":42,"column":20},"end":{"row":42,"column":21},"action":"insert","lines":["l"]}],[{"start":{"row":44,"column":25},"end":{"row":44,"column":51},"action":"remove","lines":["request.request_parameters"],"id":728},{"start":{"row":44,"column":25},"end":{"row":44,"column":27},"action":"insert","lines":["@t"]}],[{"start":{"row":32,"column":6},"end":{"row":34,"column":9},"action":"remove","lines":["request.request_parameters.each do |guest|","        InvitationMailer.with(guest: guest).invitation_email.deliver","      end"],"id":729}],[{"start":{"row":38,"column":7},"end":{"row":38,"column":8},"action":"remove","lines":[";"],"id":730}],[{"start":{"row":39,"column":44},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":731},{"start":{"row":40,"column":0},"end":{"row":40,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":40,"column":4},"end":{"row":40,"column":46},"action":"insert","lines":["Rails.logger.warn \"Param #{key}: #{value}\""],"id":732}],[{"start":{"row":40,"column":22},"end":{"row":40,"column":46},"action":"remove","lines":["\"Param #{key}: #{value}\""],"id":733},{"start":{"row":40,"column":22},"end":{"row":40,"column":23},"action":"insert","lines":["g"]},{"start":{"row":40,"column":23},"end":{"row":40,"column":24},"action":"insert","lines":["u"]},{"start":{"row":40,"column":24},"end":{"row":40,"column":25},"action":"insert","lines":["e"]},{"start":{"row":40,"column":25},"end":{"row":40,"column":26},"action":"insert","lines":["s"]},{"start":{"row":40,"column":26},"end":{"row":40,"column":27},"action":"insert","lines":["t"]}],[{"start":{"row":41,"column":4},"end":{"row":41,"column":5},"action":"insert","lines":["#"],"id":734}],[{"start":{"row":40,"column":27},"end":{"row":40,"column":28},"action":"insert","lines":["."],"id":735},{"start":{"row":40,"column":28},"end":{"row":40,"column":29},"action":"insert","lines":["f"]},{"start":{"row":40,"column":29},"end":{"row":40,"column":30},"action":"insert","lines":["i"]},{"start":{"row":40,"column":30},"end":{"row":40,"column":31},"action":"insert","lines":["r"]},{"start":{"row":40,"column":31},"end":{"row":40,"column":32},"action":"insert","lines":["s"]},{"start":{"row":40,"column":32},"end":{"row":40,"column":33},"action":"insert","lines":["t"]}],[{"start":{"row":39,"column":28},"end":{"row":39,"column":34},"action":"insert","lines":[".first"],"id":736}],[{"start":{"row":40,"column":27},"end":{"row":40,"column":33},"action":"remove","lines":[".first"],"id":737},{"start":{"row":40,"column":27},"end":{"row":40,"column":28},"action":"insert","lines":["."]},{"start":{"row":40,"column":28},"end":{"row":40,"column":29},"action":"insert","lines":["e"]},{"start":{"row":40,"column":29},"end":{"row":40,"column":30},"action":"insert","lines":["m"]},{"start":{"row":40,"column":30},"end":{"row":40,"column":31},"action":"insert","lines":["a"]},{"start":{"row":40,"column":31},"end":{"row":40,"column":32},"action":"insert","lines":["i"]},{"start":{"row":40,"column":32},"end":{"row":40,"column":33},"action":"insert","lines":["l"]}],[{"start":{"row":38,"column":7},"end":{"row":39,"column":0},"action":"insert","lines":["",""],"id":738},{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":39,"column":2},"end":{"row":39,"column":12},"action":"insert","lines":["JSON.parse"],"id":739}],[{"start":{"row":39,"column":0},"end":{"row":40,"column":0},"action":"remove","lines":["  JSON.parse",""],"id":740},{"start":{"row":39,"column":0},"end":{"row":40,"column":0},"action":"insert","lines":["hash = JSON.parse string",""]}],[{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "],"id":741}],[{"start":{"row":39,"column":20},"end":{"row":39,"column":26},"action":"remove","lines":["string"],"id":742},{"start":{"row":39,"column":20},"end":{"row":39,"column":46},"action":"insert","lines":["request.request_parameters"]}],[{"start":{"row":40,"column":2},"end":{"row":40,"column":34},"action":"remove","lines":["request.request_parameters.first"],"id":743},{"start":{"row":40,"column":2},"end":{"row":40,"column":6},"action":"insert","lines":["hash"]}],[{"start":{"row":39,"column":46},"end":{"row":39,"column":52},"action":"insert","lines":[".first"],"id":744}],[{"start":{"row":35,"column":3},"end":{"row":36,"column":0},"action":"insert","lines":["",""],"id":745}]]},"ace":{"folds":[],"scrolltop":516.5,"scrollleft":0,"selection":{"start":{"row":36,"column":0},"end":{"row":36,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1535664875058,"hash":"8005ccb890d3568a4c6f17428f91017a91aff898"}