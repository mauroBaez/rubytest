{"changed":true,"filter":false,"title":"weddings_controller.rb","tooltip":"/app/controllers/weddings_controller.rb","value":"class WeddingsController < InheritedResources::Base\n\n  private\n    def wedding_params\n      params.require(:wedding).permit(:groom_name, :groom_surname, :bride_name, :bride_surname)\n    end\nend\n\n","undoManager":{"mark":-2,"position":0,"stack":[[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["",""],"id":2}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":1,"column":0},"end":{"row":1,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1534563927658}