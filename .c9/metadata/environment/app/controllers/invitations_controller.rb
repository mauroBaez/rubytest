{"filter":false,"title":"invitations_controller.rb","tooltip":"/app/controllers/invitations_controller.rb","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "],"id":8}],[{"start":{"row":1,"column":2},"end":{"row":3,"column":5},"action":"insert","lines":["def show","    @album = Album.find(params[:id])","  end"],"id":9}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":36},"action":"remove","lines":["@album = Album.find(params[:id])"],"id":10},{"start":{"row":2,"column":4},"end":{"row":12,"column":11},"action":"insert","lines":["@articles = Article.all","        @categories = Category.all","        @wedding = Wedding.first","        @messages = Message.all.where(:show => true)","        @album = Album.first","        @invitation = false","        if Invitation.exists?(id: params[:id])","            @invitation = Invitation.find(params[:id])","        else","            @invitation = false","        end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":8},"end":{"row":3,"column":8},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":255,"mode":"ace/mode/ruby"}},"timestamp":1536298510568,"hash":"5601f1469258591c0a1f661e9f991f3949902061"}