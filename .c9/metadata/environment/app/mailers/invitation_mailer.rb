{"filter":false,"title":"invitation_mailer.rb","tooltip":"/app/mailers/invitation_mailer.rb","undoManager":{"mark":66,"position":66,"stack":[[{"start":{"row":1,"column":30},"end":{"row":1,"column":31},"action":"insert","lines":["m"],"id":43},{"start":{"row":1,"column":31},"end":{"row":1,"column":32},"action":"insert","lines":["a"]},{"start":{"row":1,"column":32},"end":{"row":1,"column":33},"action":"insert","lines":["i"]},{"start":{"row":1,"column":33},"end":{"row":1,"column":34},"action":"insert","lines":["l"]},{"start":{"row":1,"column":34},"end":{"row":1,"column":35},"action":"insert","lines":["g"]},{"start":{"row":1,"column":35},"end":{"row":1,"column":36},"action":"insert","lines":["u"]},{"start":{"row":1,"column":36},"end":{"row":1,"column":37},"action":"insert","lines":["n"]}],[{"start":{"row":1,"column":37},"end":{"row":1,"column":38},"action":"insert","lines":["."],"id":44}],[{"start":{"row":7,"column":61},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":45},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":8,"column":4},"end":{"row":15,"column":3},"action":"insert","lines":["def winner_email(user)","  special_delivery(","    :callback_class  => LotteryEmail::WinnerCallback,","    :callback_record => user","  ) do","  \tmail(:to => user.email, :subject => 'All the Monies!')","  end","end"],"id":46}],[{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "],"id":47},{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "],"id":48}],[{"start":{"row":8,"column":4},"end":{"row":15,"column":7},"action":"remove","lines":["def winner_email(user)","      special_delivery(","        :callback_class  => LotteryEmail::WinnerCallback,","        :callback_record => user","      ) do","      \tmail(:to => user.email, :subject => 'All the Monies!')","      end","    end"],"id":49}],[{"start":{"row":10,"column":2},"end":{"row":17,"column":7},"action":"insert","lines":["def winner_email(user)","      special_delivery(","        :callback_class  => LotteryEmail::WinnerCallback,","        :callback_record => user","      ) do","      \tmail(:to => user.email, :subject => 'All the Monies!')","      end","    end"],"id":50}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"remove","lines":["    "],"id":51},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"remove","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"remove","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"remove","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"remove","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"remove","lines":["  "],"id":52},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"remove","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"remove","lines":["  "]},{"start":{"row":15,"column":2},"end":{"row":15,"column":3},"action":"remove","lines":["\t"]},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "],"id":53},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"remove","lines":["    "],"id":54}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"remove","lines":["  "],"id":55},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"remove","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"remove","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"remove","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"remove","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "],"id":56},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "],"id":57},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "],"id":58},{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":10,"column":8},"end":{"row":10,"column":20},"action":"remove","lines":["winner_email"],"id":59},{"start":{"row":10,"column":8},"end":{"row":10,"column":29},"action":"insert","lines":["send_invitation_email"]}],[{"start":{"row":10,"column":30},"end":{"row":10,"column":34},"action":"remove","lines":["user"],"id":60},{"start":{"row":10,"column":30},"end":{"row":10,"column":35},"action":"insert","lines":["guest"]}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":32},"action":"remove","lines":["user"],"id":61},{"start":{"row":13,"column":28},"end":{"row":13,"column":33},"action":"insert","lines":["guest"]}],[{"start":{"row":15,"column":22},"end":{"row":15,"column":26},"action":"remove","lines":["user"],"id":62},{"start":{"row":15,"column":22},"end":{"row":15,"column":23},"action":"insert","lines":["g"]},{"start":{"row":15,"column":23},"end":{"row":15,"column":24},"action":"insert","lines":["u"]},{"start":{"row":15,"column":24},"end":{"row":15,"column":25},"action":"insert","lines":["e"]},{"start":{"row":15,"column":25},"end":{"row":15,"column":26},"action":"insert","lines":["s"]},{"start":{"row":15,"column":26},"end":{"row":15,"column":27},"action":"insert","lines":["t"]}],[{"start":{"row":4,"column":6},"end":{"row":9,"column":9},"action":"remove","lines":["def send_invitation_email(guest)","        @guest = guest","        mail( :to => @guest.email,","        :subject => 'Thanks for signing up for our amazing app' )","        ","      end"],"id":63},{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"remove","lines":[" "]},{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"remove","lines":[" "]}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":4},"action":"remove","lines":["  # send a signup email to the user, pass in the user object that   contains the user's email address","    "],"id":64},{"start":{"row":2,"column":0},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":[" "],"id":65},{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"remove","lines":[" "]},{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "],"id":66}],[{"start":{"row":0,"column":43},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":67},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":35},"action":"insert","lines":["include SpecialDelivery::Mailer"],"id":68}],[{"start":{"row":13,"column":0},"end":{"row":17,"column":3},"action":"insert","lines":["class LotteryEmail::WinnerCallback < SpecialDelivery::Callback","  def bounced(user)","  \tsend_message_to_admin \"#{user.name} did not receive their lottery winner email.\"","  end","end"],"id":69}],[{"start":{"row":6,"column":28},"end":{"row":6,"column":35},"action":"remove","lines":["Lottery"],"id":70},{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["I"]},{"start":{"row":6,"column":29},"end":{"row":6,"column":30},"action":"insert","lines":["n"]},{"start":{"row":6,"column":30},"end":{"row":6,"column":31},"action":"insert","lines":["v"]},{"start":{"row":6,"column":31},"end":{"row":6,"column":32},"action":"insert","lines":["i"]},{"start":{"row":6,"column":32},"end":{"row":6,"column":33},"action":"insert","lines":["t"]},{"start":{"row":6,"column":33},"end":{"row":6,"column":34},"action":"insert","lines":["a"]},{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"insert","lines":["t"]}],[{"start":{"row":6,"column":35},"end":{"row":6,"column":36},"action":"insert","lines":["i"],"id":71},{"start":{"row":6,"column":36},"end":{"row":6,"column":37},"action":"insert","lines":["o"]},{"start":{"row":6,"column":37},"end":{"row":6,"column":38},"action":"insert","lines":["n"]}],[{"start":{"row":6,"column":45},"end":{"row":6,"column":51},"action":"remove","lines":["Winner"],"id":72},{"start":{"row":6,"column":45},"end":{"row":6,"column":46},"action":"insert","lines":["I"]},{"start":{"row":6,"column":46},"end":{"row":6,"column":47},"action":"insert","lines":["n"]},{"start":{"row":6,"column":47},"end":{"row":6,"column":48},"action":"insert","lines":["v"]},{"start":{"row":6,"column":48},"end":{"row":6,"column":49},"action":"insert","lines":["i"]},{"start":{"row":6,"column":49},"end":{"row":6,"column":50},"action":"insert","lines":["t"]},{"start":{"row":6,"column":50},"end":{"row":6,"column":51},"action":"insert","lines":["a"]},{"start":{"row":6,"column":51},"end":{"row":6,"column":52},"action":"insert","lines":["t"]},{"start":{"row":6,"column":52},"end":{"row":6,"column":53},"action":"insert","lines":["i"]}],[{"start":{"row":6,"column":53},"end":{"row":6,"column":54},"action":"insert","lines":["o"],"id":73},{"start":{"row":6,"column":54},"end":{"row":6,"column":55},"action":"insert","lines":["n"]}],[{"start":{"row":13,"column":6},"end":{"row":13,"column":34},"action":"remove","lines":["LotteryEmail::WinnerCallback"],"id":74},{"start":{"row":13,"column":6},"end":{"row":13,"column":41},"action":"insert","lines":["InvitationEmail::InvitationCallback"]}],[{"start":{"row":14,"column":14},"end":{"row":14,"column":18},"action":"remove","lines":["user"],"id":75},{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"insert","lines":["g"]},{"start":{"row":14,"column":15},"end":{"row":14,"column":16},"action":"insert","lines":["u"]},{"start":{"row":14,"column":16},"end":{"row":14,"column":17},"action":"insert","lines":["e"]},{"start":{"row":14,"column":17},"end":{"row":14,"column":18},"action":"insert","lines":["s"]},{"start":{"row":14,"column":18},"end":{"row":14,"column":19},"action":"insert","lines":["t"]}],[{"start":{"row":15,"column":28},"end":{"row":15,"column":32},"action":"remove","lines":["user"],"id":76},{"start":{"row":15,"column":28},"end":{"row":15,"column":29},"action":"insert","lines":["g"]},{"start":{"row":15,"column":29},"end":{"row":15,"column":30},"action":"insert","lines":["u"]},{"start":{"row":15,"column":30},"end":{"row":15,"column":31},"action":"insert","lines":["e"]},{"start":{"row":15,"column":31},"end":{"row":15,"column":32},"action":"insert","lines":["s"]},{"start":{"row":15,"column":32},"end":{"row":15,"column":33},"action":"insert","lines":["t"]}],[{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":77},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":17,"column":2},"end":{"row":19,"column":3},"action":"insert","lines":["def opened(user)"," send_message_to_admin \"#{user.name} just opened their lottery winner email.\"","end"],"id":78}],[{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "],"id":79},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":7},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":80},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":20,"column":4},"end":{"row":22,"column":3},"action":"insert","lines":["def opened(user)"," send_message_to_admin \"#{user.name} just opened their lottery winner email.\"","end"],"id":81}],[{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "],"id":82},{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"remove","lines":["    "],"id":83},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"remove","lines":["    "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"remove","lines":["    "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"remove","lines":["    "]},{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "],"id":84},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"insert","lines":["    "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]},{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":17,"column":1},"end":{"row":17,"column":2},"action":"remove","lines":[" "],"id":85}],[{"start":{"row":17,"column":1},"end":{"row":17,"column":4},"action":"insert","lines":["   "],"id":86}],[{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"remove","lines":[" "],"id":87}],[{"start":{"row":18,"column":4},"end":{"row":18,"column":8},"action":"insert","lines":["    "],"id":88}],[{"start":{"row":21,"column":4},"end":{"row":21,"column":5},"action":"remove","lines":[" "],"id":89}],[{"start":{"row":21,"column":4},"end":{"row":21,"column":8},"action":"insert","lines":["    "],"id":90}],[{"start":{"row":14,"column":1},"end":{"row":14,"column":2},"action":"remove","lines":[" "],"id":93},{"start":{"row":14,"column":0},"end":{"row":14,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":15,"column":2},"end":{"row":15,"column":3},"action":"remove","lines":["\t"],"id":94},{"start":{"row":15,"column":1},"end":{"row":15,"column":2},"action":"remove","lines":[" "]}],[{"start":{"row":16,"column":1},"end":{"row":16,"column":2},"action":"remove","lines":[" "],"id":95},{"start":{"row":16,"column":0},"end":{"row":16,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":1},"action":"remove","lines":[" "],"id":96}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "],"id":97}],[{"start":{"row":15,"column":4},"end":{"row":15,"column":8},"action":"insert","lines":["    "],"id":98}],[{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "],"id":99}],[{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "],"id":100}],[{"start":{"row":18,"column":33},"end":{"row":18,"column":37},"action":"remove","lines":["user"],"id":101},{"start":{"row":18,"column":33},"end":{"row":18,"column":38},"action":"insert","lines":["guest"]}],[{"start":{"row":21,"column":33},"end":{"row":21,"column":37},"action":"remove","lines":["user"],"id":102},{"start":{"row":21,"column":33},"end":{"row":21,"column":38},"action":"insert","lines":["guest"]}],[{"start":{"row":20,"column":8},"end":{"row":20,"column":14},"action":"remove","lines":["opened"],"id":103},{"start":{"row":20,"column":8},"end":{"row":20,"column":9},"action":"insert","lines":["d"]},{"start":{"row":20,"column":9},"end":{"row":20,"column":10},"action":"insert","lines":["e"]},{"start":{"row":20,"column":10},"end":{"row":20,"column":11},"action":"insert","lines":["l"]},{"start":{"row":20,"column":11},"end":{"row":20,"column":12},"action":"insert","lines":["i"]}],[{"start":{"row":20,"column":12},"end":{"row":20,"column":13},"action":"insert","lines":["v"],"id":104},{"start":{"row":20,"column":13},"end":{"row":20,"column":14},"action":"insert","lines":["e"]},{"start":{"row":20,"column":14},"end":{"row":20,"column":15},"action":"insert","lines":["r"]},{"start":{"row":20,"column":15},"end":{"row":20,"column":16},"action":"insert","lines":["e"]},{"start":{"row":20,"column":16},"end":{"row":20,"column":17},"action":"insert","lines":["d"]}],[{"start":{"row":17,"column":15},"end":{"row":17,"column":19},"action":"remove","lines":["user"],"id":105},{"start":{"row":17,"column":15},"end":{"row":17,"column":20},"action":"insert","lines":["guest"]}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":22},"action":"remove","lines":["user"],"id":106},{"start":{"row":20,"column":18},"end":{"row":20,"column":23},"action":"insert","lines":["guest"]}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":23},"action":"remove","lines":["guest"],"id":107}],[{"start":{"row":21,"column":31},"end":{"row":21,"column":44},"action":"remove","lines":["#{guest.name}"],"id":108}],[{"start":{"row":13,"column":6},"end":{"row":13,"column":23},"action":"remove","lines":["InvitationEmail::"],"id":109}],[{"start":{"row":6,"column":28},"end":{"row":6,"column":45},"action":"remove","lines":["InvitationEmail::"],"id":110}],[{"start":{"row":20,"column":18},"end":{"row":20,"column":19},"action":"insert","lines":["g"],"id":111},{"start":{"row":20,"column":19},"end":{"row":20,"column":20},"action":"insert","lines":["u"]},{"start":{"row":20,"column":20},"end":{"row":20,"column":21},"action":"insert","lines":["e"]},{"start":{"row":20,"column":21},"end":{"row":20,"column":22},"action":"insert","lines":["s"]},{"start":{"row":20,"column":22},"end":{"row":20,"column":23},"action":"insert","lines":["t"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":10},"end":{"row":5,"column":10},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1536489174434,"hash":"2af1ce51aa4b95006b7a3789629b2db9fcfb51af"}