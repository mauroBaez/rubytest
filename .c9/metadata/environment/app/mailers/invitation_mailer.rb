{"filter":false,"title":"invitation_mailer.rb","tooltip":"/app/mailers/invitation_mailer.rb","undoManager":{"mark":23,"position":23,"stack":[[{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "],"id":238}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":8},"action":"insert","lines":["    "],"id":239}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":8},"action":"remove","lines":["    "],"id":240}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":38},"action":"insert","lines":["after_action :add_metadata_headers"],"id":241}],[{"start":{"row":2,"column":38},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":242},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":8,"column":7},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":243},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":9,"column":4},"end":{"row":15,"column":5},"action":"insert","lines":["def add_metadata_headers","    headers['X-Mailgun-Variables'] = {","      \"backer_id\": @backer.id,","      \"project_id\": @project.id,","      \"subject\": mail.subject","    }.to_json","  end"],"id":244}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "],"id":245},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"remove","lines":["    "],"id":246},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"remove","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"remove","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"remove","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"remove","lines":["    "],"id":247},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"remove","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"remove","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"remove","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"remove","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "],"id":248},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "],"id":249},{"start":{"row":11,"column":0},"end":{"row":11,"column":4},"action":"insert","lines":["    "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":15,"column":4},"end":{"row":15,"column":8},"action":"remove","lines":["    "],"id":250}],[{"start":{"row":11,"column":24},"end":{"row":11,"column":30},"action":"remove","lines":["backer"],"id":251},{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"insert","lines":["g"]}],[{"start":{"row":11,"column":11},"end":{"row":11,"column":17},"action":"remove","lines":["backer"],"id":252},{"start":{"row":11,"column":11},"end":{"row":11,"column":12},"action":"insert","lines":["g"]},{"start":{"row":11,"column":12},"end":{"row":11,"column":13},"action":"insert","lines":["u"]},{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":["e"]},{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"insert","lines":["s"]},{"start":{"row":11,"column":15},"end":{"row":11,"column":16},"action":"insert","lines":["t"]}],[{"start":{"row":12,"column":11},"end":{"row":12,"column":18},"action":"remove","lines":["project"],"id":253},{"start":{"row":12,"column":11},"end":{"row":12,"column":12},"action":"insert","lines":["i"]},{"start":{"row":12,"column":12},"end":{"row":12,"column":13},"action":"insert","lines":["n"]},{"start":{"row":12,"column":13},"end":{"row":12,"column":14},"action":"insert","lines":["v"]},{"start":{"row":12,"column":14},"end":{"row":12,"column":15},"action":"insert","lines":["i"]},{"start":{"row":12,"column":15},"end":{"row":12,"column":16},"action":"insert","lines":["t"]},{"start":{"row":12,"column":16},"end":{"row":12,"column":17},"action":"insert","lines":["a"]},{"start":{"row":12,"column":17},"end":{"row":12,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":12,"column":18},"end":{"row":12,"column":19},"action":"insert","lines":["i"],"id":254},{"start":{"row":12,"column":19},"end":{"row":12,"column":20},"action":"insert","lines":["o"]},{"start":{"row":12,"column":20},"end":{"row":12,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":12,"column":28},"end":{"row":12,"column":35},"action":"remove","lines":["project"],"id":255},{"start":{"row":12,"column":28},"end":{"row":12,"column":29},"action":"insert","lines":["g"]}],[{"start":{"row":12,"column":30},"end":{"row":12,"column":31},"action":"insert","lines":["i"],"id":256},{"start":{"row":12,"column":31},"end":{"row":12,"column":32},"action":"insert","lines":["n"]},{"start":{"row":12,"column":32},"end":{"row":12,"column":33},"action":"insert","lines":["v"]},{"start":{"row":12,"column":33},"end":{"row":12,"column":34},"action":"insert","lines":["i"]},{"start":{"row":12,"column":34},"end":{"row":12,"column":35},"action":"insert","lines":["t"]},{"start":{"row":12,"column":35},"end":{"row":12,"column":36},"action":"insert","lines":["a"]},{"start":{"row":12,"column":36},"end":{"row":12,"column":37},"action":"insert","lines":["t"]},{"start":{"row":12,"column":37},"end":{"row":12,"column":38},"action":"insert","lines":["i"]}],[{"start":{"row":12,"column":38},"end":{"row":12,"column":39},"action":"insert","lines":["o"],"id":257},{"start":{"row":12,"column":39},"end":{"row":12,"column":40},"action":"insert","lines":["n"]},{"start":{"row":12,"column":40},"end":{"row":12,"column":41},"action":"insert","lines":["_"]}],[{"start":{"row":13,"column":11},"end":{"row":13,"column":18},"action":"remove","lines":["subject"],"id":258},{"start":{"row":13,"column":11},"end":{"row":13,"column":12},"action":"insert","lines":["i"]}],[{"start":{"row":13,"column":0},"end":{"row":14,"column":0},"action":"remove","lines":["          \"i\": mail.subject",""],"id":259},{"start":{"row":12,"column":44},"end":{"row":13,"column":0},"action":"remove","lines":["",""]},{"start":{"row":12,"column":43},"end":{"row":12,"column":44},"action":"remove","lines":[","]}],[{"start":{"row":12,"column":43},"end":{"row":12,"column":51},"action":"remove","lines":["        "],"id":260},{"start":{"row":12,"column":43},"end":{"row":13,"column":0},"action":"insert","lines":["",""]},{"start":{"row":13,"column":0},"end":{"row":13,"column":10},"action":"insert","lines":["          "]}],[{"start":{"row":13,"column":9},"end":{"row":13,"column":10},"action":"remove","lines":[" "],"id":261},{"start":{"row":13,"column":8},"end":{"row":13,"column":9},"action":"remove","lines":[" "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":7},"end":{"row":8,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":6,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1536623540929,"hash":"f0346b7f757a84c490fa7dffa44fb6b6378da7b2"}