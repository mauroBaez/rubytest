{"filter":false,"title":"20180826019993_add_sort_order_to_guests.rb","tooltip":"/db/migrate/20180826019993_add_sort_order_to_guests.rb","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":0,"column":0},"end":{"row":4,"column":3},"action":"remove","lines":["class AddSortOrderToGuests < ActiveRecord::Migration[5.2]","  def change","    add_column :guests, :sort_order, :integer","  end","end"],"id":2},{"start":{"row":0,"column":0},"end":{"row":7,"column":3},"action":"insert","lines":["class AddPositionToTodoItem < ActiveRecord::Migration","  def change","    add_column :todo_items, :position, :integer","    TodoItem.order(:updated_at).each.with_index(1) do |todo_item, index|","      todo_item.update_column :position, index","    end","  end","end"]}],[{"start":{"row":0,"column":19},"end":{"row":0,"column":27},"action":"remove","lines":["TodoItem"],"id":3},{"start":{"row":0,"column":19},"end":{"row":0,"column":20},"action":"insert","lines":["G"]},{"start":{"row":0,"column":20},"end":{"row":0,"column":21},"action":"insert","lines":["u"]},{"start":{"row":0,"column":21},"end":{"row":0,"column":22},"action":"insert","lines":["e"]},{"start":{"row":0,"column":22},"end":{"row":0,"column":23},"action":"insert","lines":["s"]},{"start":{"row":0,"column":23},"end":{"row":0,"column":24},"action":"insert","lines":["t"]}],[{"start":{"row":0,"column":24},"end":{"row":0,"column":25},"action":"insert","lines":["s"],"id":4}],[{"start":{"row":2,"column":16},"end":{"row":2,"column":26},"action":"remove","lines":["todo_items"],"id":5},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"insert","lines":["g"]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["u"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["e"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["s"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["t"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["s"]}],[{"start":{"row":3,"column":4},"end":{"row":3,"column":12},"action":"remove","lines":["TodoItem"],"id":6},{"start":{"row":3,"column":4},"end":{"row":3,"column":5},"action":"insert","lines":["G"]},{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"insert","lines":["u"]},{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["e"]},{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"insert","lines":["s"]},{"start":{"row":3,"column":8},"end":{"row":3,"column":9},"action":"insert","lines":["t"]}],[{"start":{"row":3,"column":52},"end":{"row":3,"column":61},"action":"remove","lines":["todo_item"],"id":7},{"start":{"row":3,"column":52},"end":{"row":3,"column":53},"action":"insert","lines":["g"]},{"start":{"row":3,"column":53},"end":{"row":3,"column":54},"action":"insert","lines":["u"]},{"start":{"row":3,"column":54},"end":{"row":3,"column":55},"action":"insert","lines":["e"]},{"start":{"row":3,"column":55},"end":{"row":3,"column":56},"action":"insert","lines":["s"]},{"start":{"row":3,"column":56},"end":{"row":3,"column":57},"action":"insert","lines":["t"]}],[{"start":{"row":4,"column":6},"end":{"row":4,"column":15},"action":"remove","lines":["todo_item"],"id":8},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["g"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["u"]},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["e"]},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["s"]},{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":["t"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":11},"end":{"row":4,"column":11},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1535956564256,"hash":"5b207866b07cc76571889563d4f62a0b0e38d6df"}