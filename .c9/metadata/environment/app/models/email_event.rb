{"filter":false,"title":"email_event.rb","tooltip":"/app/models/email_event.rb","undoManager":{"mark":5,"position":5,"stack":[[{"start":{"row":0,"column":0},"end":{"row":4,"column":3},"action":"remove","lines":["class SentEmail < ApplicationRecord","    belongs_to :guest","    belongs_to :invitation","    ","end"],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":3},{"start":{"row":0,"column":0},"end":{"row":2,"column":3},"action":"insert","lines":["class EmailEvent < ApplicationRecord","    belongs_to :sent_email","end"]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":2,"column":0},"action":"insert","lines":["    belongs_to :invitation",""],"id":5}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":8},"action":"remove","lines":["    "],"id":6}],[{"start":{"row":1,"column":26},"end":{"row":2,"column":0},"action":"remove","lines":["",""],"id":7}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":6},"end":{"row":0,"column":16},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1538459376295,"hash":"b62af609828aff8f606fd96bd66901215b8452be"}