{"filter":false,"title":"application_helper.rb","tooltip":"/app/helpers/application_helper.rb","undoManager":{"mark":3,"position":3,"stack":[[{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "],"id":2},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":7,"column":7},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":8,"column":4},"end":{"row":20,"column":5},"action":"insert","lines":["def b(value, options = {})","    options = {","      :true => :positive,","      :false => :negative,","      :scope => [:boolean],","      :locale => I18n.locale","    }.merge options","    ","    boolean = !!value","    key = boolean.to_s.to_sym","","    t(options[key], :scope => options[:scope], :locale => options[:locale])","  end"],"id":4}],[{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "],"id":5},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"insert","lines":["  "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["  "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["  "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["  "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["  "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["  "]},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["  "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":10,"column":6},"end":{"row":10,"column":6},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1535083964479,"hash":"1a02cdb5c6c7ec37486ddc01cca33c7e101b2546"}